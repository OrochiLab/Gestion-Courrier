using GestionCourrier.Metier;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestionCourrier.Services
{
    public class AgentUAService
    {
        public static List<AgentUA> getAgentsByUnit(int id_unit)
        {
            SqlConnection cnx = new SqlConnection(ConfigurationManager.AppSettings["cnx"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("select id_agent,nom,prenom from agent_ua where id_unit="+id_unit, cnx);
            SqlDataReader dr = cmd.ExecuteReader();
            List<AgentUA> liste = new List<AgentUA>();
            if (dr != null && dr.HasRows)
            {

                while (dr.Read())
                    liste.Add(new AgentUA(dr.GetInt32(0), dr.GetString(1),dr.GetString(2)));

                cnx.Close();
                dr.Close();
                return liste;
            }

            return null;

        }
    }
}