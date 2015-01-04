using GestionCourrier.Metier;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestionCourrier.Services
{
    public class DossierService
    {
        public static List<Dossier> getRefDossiers()
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("select ref_dos from dossier", cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<Dossier> liste = new List<Dossier>();
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                    liste.Add(new Dossier(dr.GetString(0)));

                cnx.Close();
                dr.Close();
                return liste;
            }

            return null;

        }
    }
}