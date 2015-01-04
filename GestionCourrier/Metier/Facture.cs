using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class Facture : CourrierArriveInterne
    {
        private string device;
        private float montant;

        public Facture() { }
        public Facture(string reference,string type,string nature,DateTime date_creation,string objet,string etat,AgentUA agentua,bool reponse,Dossier dossier,DateTime date_courrier,DateTime date_arrivee,string typec,Contact expediteur,string device,float montant) : base(reference,type,nature,date_creation,objet,etat,agentua,reponse,dossier,date_courrier,date_arrivee,typec,expediteur)
        {
            this.device = device;
            this.montant = montant;
        }

        public void setDevice(string device)
        {
            this.device = device;
        }
        public string getDevice()
        {
            return this.device;
        }
        public void setMontant(float montant)
        {
            this.montant = montant;
        }
        public float getMontant()
        {
            return this.montant;
        }
    }
}