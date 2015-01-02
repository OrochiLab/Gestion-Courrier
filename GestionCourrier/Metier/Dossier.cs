using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class Dossier
    {
        private string reference;
        private string intitule;
        private string objet;
        private DateTime date_creation;
        private DateTime date_cloture;
        private AgentUA agent;
        private List<Courrier> courriers;

        public Dossier() { }
        public Dossier(string reference,string intitule,string objet,DateTime date_creation,DateTime date_cloture,AgentUA agent)
        {
            this.reference = reference;
            this.intitule = intitule;
            this.objet = objet;
            this.date_creation = date_creation;
            this.date_cloture = date_cloture;
            this.agent = agent;
        }
        public void setReference(string reference)
        {
            this.reference = reference;
        }
        public string getReference()
        {
            return this.reference;
        }
        public void setIntitule(string intitule)
        {
            this.intitule = intitule;
        }
        public string getIntitule()
        {
            return this.intitule;
        }

        public void setObjet(string objet)
        {
            this.objet = objet;
        }
        public string getObjet()
        {
            return this.objet;
        }

        public void setDate_creation(DateTime date_creation)
        {
            this.date_creation = date_creation;
        }
        public DateTime getDate_creation()
        {
            return this.date_creation;
        }

        public void setDate_cloture(DateTime date_cloture)
        {
            this.date_cloture = date_cloture;
        }
        public DateTime getDate_cloture()
        {
            return this.date_cloture;
        }

        public void setAgent(AgentUA agent)
        {
            this.agent = agent;
        }
        public AgentUA getAgent()
        {
            return this.agent;
        }

        public void setCourriers(List<Courrier> courriers)
        {
            this.courriers = courriers;
        }

        public List<Courrier> getCourriers()
        {
            return this.courriers;
        }

    }
}