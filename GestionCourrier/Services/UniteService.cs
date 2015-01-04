using GestionCourrier.Metier;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestionCourrier.Services
{
    public class UniteService
    {
        public static List<Unite> getUnites()
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("select id_unit,nom from unites", cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<Unite> liste = new List<Unite>();
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                    liste.Add(new Unite(dr.GetInt32(0), dr.GetString(1)));

                cnx.Close();
                dr.Close();
                return liste;
                
            }

            return null;

        }
    }
}