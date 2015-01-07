using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class CourrierDepart : Courrier
    {
        Contact destinataire=new Contact();
        private string p;
        public CourrierDepart() { }
        public CourrierDepart(string reference, string type, string nature, DateTime date_creation, string objet, string etat, AgentUA agentua, bool reponse, Dossier dossier, Contact destinataire) 
            : base(reference, type, nature, date_creation, objet, etat, agentua,reponse,dossier)
        {
            this.destinataire = destinataire;
        }

        public CourrierDepart(string p)
        {
            // TODO: Complete member initialization
            this.p = p;
        }

        public void setDestinataire(Contact destinataire)
        {
            this.destinataire = destinataire;
        }
        public Contact getDestinataire()
        {
            return this.destinataire;
        }


        internal void setTypecr()
        {
            throw new NotImplementedException();
        }
    }
}