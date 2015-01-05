using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class CourrierArriveInterne : Courrier
    {
        private DateTime date_courrier;
        private DateTime date_arrivee;
        private string type;
        private Contact expediteur;


        public CourrierArriveInterne() { }
        public CourrierArriveInterne(string reference,string type,string nature,DateTime date_creation,string objet,string etat,AgentUA agentua,bool reponse,Dossier dossier,DateTime date_courrier,DateTime date_arrivee,string typec,Contact expediteur) : base(reference, type, nature, date_creation, objet, etat, agentua,reponse,dossier)
        {
            this.date_courrier = date_courrier;
            this.date_arrivee = date_arrivee;
            this.type = type;
            this.expediteur = expediteur;
        }
        public CourrierArriveInterne(string reference) : base(reference)
        {
            
        }
        public void setType(string type)
        {
            this.type = type;
        }

        public string getType()
        {
            return this.type;
        }
        public void setDate_Courrier(DateTime date_courrier)
        {
            this.date_courrier = date_courrier;
        }
        public DateTime getDate_Courrier()
        {
            return this.date_courrier;
        }
        public void setDate_Arrivee(DateTime date_arrivee)
        {
            this.date_arrivee = date_arrivee;
        }

        public DateTime getDate_Arrivee()
        {
            return this.date_arrivee;
        }
       
        public void setExpediteur(Contact expediteur)
        {
            this.expediteur = expediteur;
        }
        public Contact getExpediteur()
        {
            return this.expediteur;
        }

        
    }
}