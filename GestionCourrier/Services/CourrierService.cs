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
    }
}