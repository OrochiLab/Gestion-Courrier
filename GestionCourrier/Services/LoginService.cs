using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GestionCourrier.Metier;
using System.Data.SqlClient;
using System.Configuration;
namespace GestionCourrier.Services
{
    public class LoginService
    {
        public static AgentBO loginAgentBO(string login,string password)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("select id_agent,nom,prenom from agent_bo where login='{0}' and password='{1}'", login, password), cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr!=null && dr.HasRows)
            {
                dr.Read();
                AgentBO agent = new AgentBO(dr.GetInt32(0), dr.GetString(1), dr.GetString(2));
                return agent;
            }

            return null;

        }

        public static AgentUA loginAgentUA(string login, string password)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand(String.Format("select id_agent,nom,prenom,tel,adresse,sexe,id_unit from agent_ua where login='{0}' and password='{1}'", login, password), cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr != null && dr.HasRows)
            {
                dr.Read();
                AgentUA agent = new AgentUA(dr.GetInt32(0), dr.GetString(1), dr.GetString(2), dr.GetString(3), dr.GetString(4),dr.GetString(5).First(),null);
                return agent;
            }

            return null;

        }
    }
}