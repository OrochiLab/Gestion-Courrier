using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public abstract class Courrier
    {
        private string reference;
        private string type;
        private string nature;
        private DateTime date_creation;
        private string objet;
        private string etat;
        private AgentUA agentua;
        private bool reponse;
        private Courrier courrier_reponse;
        private AgentBO agentbo;

        public Courrier() { }
        public Courrier(string reference,string type,string nature,DateTime date_creation,string objet,string etat,AgentUA agentua,bool reponse)
        {
            this.reference = reference;
            this.type = type;
            this.nature = nature;
            this.date_creation = date_creation;
            this.objet = objet;
            this.etat = etat;
            this.agentua = agentua;
            this.reponse = reponse;
        }

        public void setReference(string reference)
        {
            this.reference = reference;
        }

        public string getReference()
        {
            return this.reference;
        }

        public void setType(string type)
        {
            this.type = type;
        }
        public string getType()
        {
            return this.type;
        }

        public void setNature(string nature)
        {
            this.nature = nature;
        }

        public string getNature()
        {
            return this.nature;
        }

        public void setDate_creation(DateTime date_creation)
        {
            this.date_creation = date_creation;
        }
        public DateTime getDate_creation()
        {
            return this.date_creation;
        }

        public void setObjet(string objet)
        {
            this.objet = objet;
        }

        public string getObjet()
        {
            return this.objet;
        }

        public void setEtat(string etat)
        {
            this.etat = etat;
        }

        public string getEtat()
        {
            return this.etat;
        }

        public void setAgentUA(AgentUA agentua)
        {
            this.agentua = agentua;
        }

        public AgentUA getAgentUA()
        {
            return this.agentua;
        }
        public void setReponse(bool reponse)
        {
            this.reponse = reponse;
        }
        public bool getReponse()
        {
            return this.reponse;
        }
        public void setCourrier_Reponse(Courrier courrier_reponse)
        {
            this.courrier_reponse = courrier_reponse;
        }

        public Courrier getCourrier_Reponse()
        {
            return this.courrier_reponse;
        }

        public void setAgentBO(AgentBO agentbo)
        {
            this.agentbo = agentbo;
        }

        public AgentBO getAgentBO()
        {
            return this.agentbo;
        }
    }
}