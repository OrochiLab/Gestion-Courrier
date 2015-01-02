using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GestionCourrier.Metier;


using System.Data.SqlClient;
using System.Configuration;
namespace GestionCourrier.Services
{
    public class ContactService
    {
        public static List<Contact> getContacts()
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("select * from contacts", cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<Contact> liste = new List<Contact>();
            if (dr != null && dr.HasRows)
            {
                
                while(dr.Read())
                    liste.Add(new Contact(dr.GetInt32(0), dr.GetString(1), dr.GetString(2),dr.GetString(3)));

                cnx.Close();
                dr.Close();
                return liste;
            }

            return null;

        }

        public static Boolean ajouterContact(string nom,string type,string adresse)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("Insert into contacts(nom,adresse,type) values('{0}','{1}','{2}')",nom,adresse,type), cnx);
            int n = cmd.ExecuteNonQuery();
            cnx.Close();

            return (n != 0);

        }
    }
}