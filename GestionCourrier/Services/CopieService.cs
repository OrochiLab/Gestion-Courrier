using GestionCourrier.Metier;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestionCourrier.Services
{
    public class CopieService
    {
        public static Boolean ajouterCopie(string ref_cour, int destinataire,int id_unit, string motif)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("Insert into copies(ref_cour,id_contact,id_unit,motif) values('{0}',{1},{2},'{3}')",ref_cour,destinataire,id_unit,motif), cnx);
            int n = cmd.ExecuteNonQuery();
            cnx.Close();

            return (n != 0);

        }

        public static List<Copie> getCopies(string ref_cour)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("select unites.nom,contacts.nom,motif from copies,contacts,unites where copies.id_contact=contacts.id_contact and copies.id_unit=unites.id_unit and ref_cour='{0}'",ref_cour), cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<Copie> liste = new List<Copie>();
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                    liste.Add(new Copie(new Unite(dr.GetString(0)),new Contact(dr.GetString(1)), dr.GetString(2)));

                cnx.Close();
                dr.Close();
                return liste;
            }

            return new List<Copie>();

        }
    }
}