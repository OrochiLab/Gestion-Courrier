using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class Reaffectation
    {
        private int id;
        private DateTime date_reaf;
        private string motif;
        private CourrierArriveInterne courrier;
        private AgentUA agent_courant;
        private AgentUA agent_cible;

        public Reaffectation(AgentUA agent_courant,AgentUA agent_cible, DateTime date_reaf,string motif)
        {
            this.date_reaf = date_reaf;
            this.motif = motif;
            this.agent_courant = agent_courant;
            this.agent_cible = agent_cible;
        }
        public Reaffectation(int id,DateTime date_reaf,string motif,CourrierArriveInterne courrier,AgentUA agent_courant,AgentUA agent_cible)
        {
            this.id = id;
            this.date_reaf = date_reaf;
            this.motif = motif;
            this.courrier = courrier;
            this.agent_courant = agent_courant;
            this.agent_cible = agent_cible;
        }
        public void setId(int id)
        {
            this.id = id;
        }
        public int getId()
        {
            return this.id;
        }
        public void setDate_Reaf(DateTime date_reaf)
        {
            this.date_reaf = date_reaf;
        }
        public DateTime getDate_Reaf()
        {
            return this.date_reaf;
        }
        public void setMotif(string motif)
        {
            this.motif = motif;
        }
        public string getMotif()
        {
            return this.motif;
        }
        public void setCourrier(CourrierArriveInterne courrier)
        {
            this.courrier = courrier;
        }
        public CourrierArriveInterne getCourrier()
        {
            return this.courrier;
        }
        public void setAgent_Courant(AgentUA agent_courant)
        {
            this.agent_courant = agent_courant;
        }
        public AgentUA getAgent_Courant()
        {
            return this.agent_courant;
        }
        public void setAgent_Cible(AgentUA agent_cible)
        {
            this.agent_cible = agent_cible;
        }
        public AgentUA getAgent_Cible()
        {
            return this.agent_cible;
        }
    }
}