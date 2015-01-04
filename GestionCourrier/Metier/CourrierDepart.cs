using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class CourrierDepart : Courrier
    {
        List<Contact> destinataires=new List<Contact>();
        public CourrierDepart() { }
        public CourrierDepart(string reference,string type,string nature,DateTime date_creation,string objet,string etat,AgentUA agentua,bool reponse,Dossier dossier) : base(reference, type, nature, date_creation, objet, etat, agentua,reponse,dossier)
        {

        }

        public void setDestinataires(List<Contact> destinataires)
        {
            this.destinataires = destinataires;
        }
        public List<Contact> getDestinataires()
        {
            return this.destinataires;
        }
    }
}