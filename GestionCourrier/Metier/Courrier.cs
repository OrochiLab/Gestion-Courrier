using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public abstract class Courrier
    {
        private string reference;
        private string typecr;
        private string nature;
        private DateTime date_creation;
        private string objet;
        private string etat;
        private AgentUA agentua;
        private bool reponse;
        private Courrier courrier_reponse;
        private AgentBO agentbo;
        private Dossier dossier;

        public Courrier() { }
        public Courrier(string reference,string type,string nature,DateTime date_creation,string objet,string etat,AgentUA agentua,bool reponse,Dossier dossier)
        {
            this.reference = reference;
            this.typecr = type;
            this.nature = nature;
            this.date_creation = date_creation;
            this.objet = objet;
            this.etat = etat;
            this.agentua = agentua;
            this.reponse = reponse;
            this.dossier = dossier;
        }
        public Courrier(string reference)
        {
            this.reference = reference;
        }

        public void setReference(string reference)
        {
            this.reference = reference;
        }

        public string getReference()
        {
            return this.reference;
        }

        public void setTypecr(string type)
        {
            this.typecr = type;
        }
        public string getTypecr()
        {
            return this.typecr;
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
        public void setDossier(Dossier dossier)
        {
            this.dossier = dossier;
        }
        public Dossier getDossier()
        {
            return this.dossier;
        }
    }
}