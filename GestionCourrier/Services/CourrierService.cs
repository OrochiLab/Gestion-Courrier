using GestionCourrier.Metier;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestionCourrier.Services
{
    public class CourrierService
    {
        public static Boolean ajouterCourrier(CourrierArriveInterne c)
        {
            try
            {
                SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
                cnx.Open();
                SqlTransaction tran = cnx.BeginTransaction("ajout");
                string requete1 = String.Format("Insert into courrier values('{0}','{1}','{2}','{3}','{4}','Cree',{5},{6},{7},null,{8})", c.getReference(), c.getTypecr(), c.getNature(), c.getDate_creation(), c.getObjet(), c.getAgentBO().getId(), c.getAgentUA().getId(), c.getReponse() ? 1 : 0, (c.getDossier() != null) ? "'"+c.getDossier().getReference()+"'" : "null");
                //, (c.getDossier()!=null)?c.getDossier().getReference():null
                Console.WriteLine(requete1);
                SqlCommand cmd = new SqlCommand(requete1, cnx);
                cmd.Transaction = tran;
                int n = cmd.ExecuteNonQuery();
                if (n != 0)
                {
                    cmd = new SqlCommand(String.Format("Insert into courrier_arrive_interne values('{0}','{1}','{2}','{3}',(select id_contact from contacts where nom='{4}'))", c.getReference(), c.getDate_Courrier(), c.getDate_Arrivee(), c.getType(), c.getExpediteur().getNom()), cnx);
                    cmd.Transaction = tran;
                    n = cmd.ExecuteNonQuery();
                    if (n != 0 && (c is Facture))
                    {
                        cmd = new SqlCommand(String.Format("Insert into facture values ('{0}','{1}',{2})", c.getReference(), ((Facture)c).getDevice(), (((Facture)c).getMontant() + "").Replace(",", ".")), cnx);
                        cmd.Transaction = tran;
                        n = cmd.ExecuteNonQuery();

                        if (n != 0)
                        {
                            tran.Commit();
                            return true;
                        }
                        else
                        {
                            tran.Rollback();
                            return false;
                        }
                    }
                    else if (n != 0)
                    {
                        tran.Commit();
                        return true;
                    }
                    else
                    {
                        tran.Rollback();
                        return false;
                    }

                }
                else
                {
                    tran.Rollback();
                    return false;
                }
            }catch(Exception ex)
            {   
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        public static List<String> getCourriresAvecReponses()
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("select ref_cour from courrier where reponse=1;", cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<string> liste = new List<string>();
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                    liste.Add( dr.GetString(0));

                cnx.Close();
                dr.Close();
                return liste;
            }

            return null;

        }

        public static Boolean repondreCourrier(string ref_cour, string ref_reponse)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("update courrier set courrier_reponse ='{0}' where ref_cour ='{1}'", ref_reponse,ref_cour), cnx);
            int n = cmd.ExecuteNonQuery();
            cnx.Close();

            return (n != 0);

        }
        public static List<CourrierArriveInterne> getCourriers(string type_courrier)
        {
            return CourrierService.getCourriers(type_courrier,0);
        }
        public static List<CourrierArriveInterne> getCourriers(string type_courrier,int id_agent_ua)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("select cou.ref_cour,f.ref_cour,cou.type,nature,date_creation,objet,etat,reponse,courrier_reponse,ref_dos,c.nom,device,montant,ag.nom,ag.prenom,un.nom from courrier cou,contacts c,agent_ua ag,unites un,courrier_arrive_interne cai  LEFT OUTER JOIN facture f ON cai.ref_cour=f.ref_cour where cou.ref_cour=cai.ref_cour and cai.id_contact=c.id_contact and cou.id_agent_ua=ag.id_agent and ag.id_unit=un.id_unit and lower(cai.type)='{0}' "+((id_agent_ua!=0)?"and cou.id_agent_ua={1}":"and 0={1}"), type_courrier,id_agent_ua), cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<CourrierArriveInterne> liste = new List<CourrierArriveInterne>();
            CourrierArriveInterne c;
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                {
                    if (!dr.IsDBNull(1))
                        c = new Facture();
                    else
                        c = new CourrierArriveInterne();

                    c.setReference(dr.GetString(0));
                    c.setTypecr(dr.GetString(2));
                    c.setNature(dr.GetString(3));
                    c.setDate_creation(dr.GetDateTime(4));
                    c.setObjet(dr.GetString(5));
                    c.setEtat(dr.GetString(6));
                    c.setReponse(dr.GetBoolean(7));
                    c.setCourrier_Reponse(!dr.IsDBNull(8)? new Courrier(dr.GetString(8)) : null);
                    c.setDossier((!dr.IsDBNull(9)?new Dossier(dr.GetString(9)):null));
                    
                    c.setExpediteur(new Contact(dr.GetString(10)));
                    if(c is Facture)
                    {
                        ((Facture)c).setDevice(dr.GetString(11));
                        ((Facture)c).setMontant((float)dr.GetSqlDecimal(12).Value);
                    }
                    c.setAgentUA(new AgentUA(dr.GetString(13), dr.GetString(14),new Unite(dr.GetString(15))));
                    liste.Add(c);
                }

                cnx.Close();
                dr.Close();
                return liste;
            }

            return new List<CourrierArriveInterne>();

        }

        public static Boolean recevoirCourrier(string ref_cour)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("update courrier set etat='recu' where ref_cour ='{0}'", ref_cour), cnx);
            int n = cmd.ExecuteNonQuery();
            cnx.Close();

            return (n != 0);

        }

        public static CourrierArriveInterne getCourrierByRef(string ref_cour)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("select cou.ref_cour,f.ref_cour,cou.type,nature,date_creation,objet,etat,reponse,courrier_reponse,ref_dos,c.nom,device,montant,ag.nom,ag.prenom,un.nom,date_cour,date_arrivee,cou.id_agent_ua from courrier cou,contacts c,agent_ua ag,unites un,courrier_arrive_interne cai  LEFT OUTER JOIN facture f ON cai.ref_cour=f.ref_cour where cou.ref_cour=cai.ref_cour and cai.id_contact=c.id_contact and cou.id_agent_ua=ag.id_agent and ag.id_unit=un.id_unit and cou.ref_cour = '{0}'", ref_cour), cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            
            CourrierArriveInterne c = new CourrierArriveInterne();
            if (dr != null && dr.HasRows)
            {

                if (dr.Read())
                {
                    if (!dr.IsDBNull(1))
                        c = new Facture();
                    else
                        c = new CourrierArriveInterne();

                    c.setReference(dr.GetString(0));
                    c.setTypecr(dr.GetString(2));
                    c.setNature(dr.GetString(3));
                    c.setDate_creation(dr.GetDateTime(4));
                    c.setObjet(dr.GetString(5));
                    c.setEtat(dr.GetString(6));
                    c.setReponse(dr.GetBoolean(7));
                    c.setCourrier_Reponse(!dr.IsDBNull(8) ? new Courrier(dr.GetString(8)) : null);
                    c.setDossier((!dr.IsDBNull(9) ? new Dossier(dr.GetString(9)) : null));

                    c.setExpediteur(new Contact(dr.GetString(10)));
                    if (c is Facture)
                    {
                        ((Facture)c).setDevice(dr.GetString(11));
                        ((Facture)c).setMontant((float)dr.GetSqlDecimal(12).Value);
                    }
                    c.setAgentUA(new AgentUA(dr.GetInt32(18),dr.GetString(13), dr.GetString(14), new Unite(dr.GetString(15))));
                    c.setDate_Courrier(dr.GetDateTime(16));
                    c.setDate_Arrivee(dr.GetDateTime(17));
                }

                cnx.Close();
                dr.Close();
                return c;
            }

            return null;

        }

        public static Boolean modifierCourrier(string ref_cour,string colonne,string valeur)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            string courrier = "update courrier ";
            string courrier_arrive_interne = "update courrier_arrive_interne ";
            string facture = "update facture ";
            string requete = "";
            SqlCommand cmd;

            if (colonne.Equals("type"))
                requete = courrier + String.Format("set type='{0}'", valeur);
            else if (colonne.Equals("nature"))
                requete = courrier + String.Format("set nature='{0}'", valeur);
            else if (colonne.Equals("devise"))
                requete = facture + String.Format("set device='{0}'", valeur);
            else if (colonne.Equals("montant"))
                requete = facture + String.Format("set montant={0}", valeur);
            else if (colonne.Equals("objet"))
                requete = courrier + String.Format("set objet='{0}'", valeur);
            else if (colonne.Equals("datecrea"))
                requete = courrier + String.Format("set date_creation='{0}'", valeur);
            else if (colonne.Equals("datecour"))
                requete = courrier_arrive_interne + String.Format("set date_cour='{0}'", valeur);
            else if (colonne.Equals("datearr"))
                requete = courrier_arrive_interne + String.Format("set date_arrivee='{0}'", valeur);
            else if (colonne.Equals("reponse"))
                requete = courrier + String.Format("set reponse={0}", valeur);
            else if (colonne.Equals("ref_dos"))
            { 
                if(valeur.Equals("sans"))
                    requete = courrier + "set ref_dos=null";
                else
                    requete = courrier + String.Format("set ref_dos='{0}'", valeur);
            }
            else if (colonne.Equals("expediteur"))
                requete = courrier_arrive_interne + String.Format("set id_contact={0}", valeur);
            else if (colonne.Equals("courrier_reponse"))
                requete = courrier + String.Format("set courrier_reponse='{0}'", valeur);
            else
                return false;

            requete = requete + String.Format(" where ref_cour='{0}'", ref_cour);
            cmd = new SqlCommand(requete, cnx);
            int n = cmd.ExecuteNonQuery();
            cnx.Close();

            return (n != 0);

        }










































        public static List<CourrierDepart> getCourriersDepart(string type_courrier)
        {
            return CourrierService.getCourriersDepart(type_courrier, 0);
        }
        public static List<CourrierDepart> getCourriersDepart(string type_courrier, int id_agent_ua)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd;
            if (id_agent_ua == 0)
            {
                cmd = new SqlCommand(String.Format("select courrier.*,courrier_depart.*,agent_ua.*,unites.nom as nom_unit from courrier,courrier_depart,agent_ua,unites where agent_ua.id_unit=unites.id_unit and agent_ua.id_agent=courrier.id_agent_ua and courrier.ref_cour = courrier_depart.ref_cour"), cnx);

            }
            else
            {
                cmd = new SqlCommand(String.Format("select courrier.*,courrier_depart.*,agent_ua.*,unites.nom as nom_unit from courrier,courrier_depart,agent_ua,unites where agent_ua.id_unit=unites.id_unit and agent_ua.id_agent=courrier.id_agent_ua and courrier.ref_cour = courrier_depart.ref_cour and id_agent_ua ={0}", id_agent_ua), cnx);

            }
            SqlDataReader dr = cmd.ExecuteReader();
            List<CourrierDepart> liste = new List<CourrierDepart>();
            CourrierDepart c;
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                {
                    c = new CourrierDepart();

                    c.setReference(dr.GetString(dr.GetOrdinal("ref_cour")));
                    c.setTypecr(dr.GetString(dr.GetOrdinal("type")));
                    c.setNature(dr.GetString(dr.GetOrdinal("nature")));
                    c.setDate_creation(dr.GetDateTime(dr.GetOrdinal("date_creation")));
                    c.setObjet(dr.GetString(dr.GetOrdinal("objet")));
                    c.setEtat(dr.GetString(dr.GetOrdinal("etat")));
                    c.setReponse(dr.GetBoolean(dr.GetOrdinal("reponse")));
                    c.setCourrier_Reponse(!dr.IsDBNull(dr.GetOrdinal("courrier_reponse")) ? new Courrier(dr.GetString(dr.GetOrdinal("courrier_reponse"))) : null);
                    c.setDossier((!dr.IsDBNull(dr.GetOrdinal("ref_dos")) ? new Dossier(dr.GetString(dr.GetOrdinal("ref_dos"))) : null));
                    c.setAgentUA(new AgentUA(dr.GetString(dr.GetOrdinal("nom")), dr.GetString(dr.GetOrdinal("prenom")), new Unite(dr.GetString(dr.GetOrdinal("nom_unit")))));
                    liste.Add(c);
                }

                cnx.Close();
                dr.Close();
                return liste;
            }

            return new List<CourrierDepart>();
        }

        public static Boolean ajouterCourrier(CourrierDepart c)
        {
            try
            {
                SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
                cnx.Open();
                SqlTransaction tran = cnx.BeginTransaction("ajout");
                string requete1 = String.Format("Insert into courrier values('{0}','{1}','{2}','{3}','{4}','A Envoyer',1,{5},{6},null,{7})", c.getReference(), c.getTypecr(), c.getNature(), c.getDate_creation(), c.getObjet(), c.getAgentUA().getId(), c.getReponse() ? 1 : 0, (c.getDossier() != null) ? "'" + c.getDossier().getReference() + "'" : "null");
                Console.WriteLine(requete1);
                SqlCommand cmd = new SqlCommand(requete1, cnx);
                cmd.Transaction = tran;
                int n = cmd.ExecuteNonQuery();
                if (n != 0)
                {
                    cmd = new SqlCommand(String.Format("Insert into courrier_depart values('{0}',{1})", c.getReference(), c.getDestinataire().getId()), cnx);
                    cmd.Transaction = tran;
                    n = cmd.ExecuteNonQuery();
                    if (n != 0)
                    {

                        tran.Commit();
                        return true;
                    }
                    else
                    {
                        tran.Rollback();
                        return false;
                    }
                }
                else
                {
                    tran.Rollback();
                    return false;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }



    }
}