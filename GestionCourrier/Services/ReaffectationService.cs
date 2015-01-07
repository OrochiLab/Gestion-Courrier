using GestionCourrier.Metier;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestionCourrier.Services
{
    public class ReaffectationService
    {
        public static Boolean ajouterReaffectation(string ref_cour,DateTime date_reaf,string motif,int id_agent_courant,int id_agent_cible)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd;
            int n;
            cmd = new SqlCommand(String.Format("update courrier set id_agent_ua ={0} where ref_cour='{1}'", id_agent_cible, ref_cour), cnx);
            n = cmd.ExecuteNonQuery();
            if (n != 0)
            {
                cmd = new SqlCommand(String.Format("Insert into reaffectations(ref_cour,date_reaf,motif,id_agent_courant,id_agent_cible) values('{0}','{1}','{2}',{3},{4})", ref_cour, date_reaf, motif, id_agent_courant, id_agent_cible), cnx);
                n = cmd.ExecuteNonQuery();
                cnx.Close();

                if (n != 0) return true;
                else return false;
                
            }
            else return false;


        }

        public static List<Reaffectation> getReaffectations(string ref_cour)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("select date_reaf,motif,courant.nom nom_courant,courant.prenom prenom_courant,ucourante.nom ucourante,cible.nom nom_cible,cible.prenom prenom_cible,ucible.nom ucible from reaffectations r,agent_ua courant,agent_ua cible,unites ucourante,unites ucible where r.id_agent_courant=courant.id_agent and r.id_agent_cible=cible.id_agent and courant.id_unit=ucourante.id_unit and cible.id_unit=ucible.id_unit and ref_cour='{0}'", ref_cour), cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<Reaffectation> liste = new List<Reaffectation>();
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                    liste.Add(new Reaffectation(new AgentUA(dr.GetString(2),dr.GetString(3),new Unite(dr.GetString(4))),new AgentUA(dr.GetString(5),dr.GetString(6),new Unite(dr.GetString(7))),dr.GetDateTime(0),dr.GetString(1)));

                cnx.Close();
                dr.Close();
                return liste;
            }

            return new List<Reaffectation>() ;

        }
    }
}