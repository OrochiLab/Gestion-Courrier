using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class Copie
    {
        private int id;
        private string motif;
        private Courrier courrier;
        private Unite unite;

        public Copie() { }
        public Copie(int id,string motif,Courrier courrier,Unite unite)
        {
            this.id = id;
            this.motif = motif;
            this.courrier = courrier;
            this.unite = unite;
        }
        public void setId(int id)
        {
            this.id = id;
        }
        public int getId()
        {
            return this.id;
        }
        public void setMotif(string motif)
        {
            this.motif = motif;
        }
        public string getMotif()
        {
            return this.motif;
        }
        public void setCourrier(Courrier courrier)
        {
            this.courrier = courrier;
        }
        public Courrier getCourrier()
        {
            return this.courrier;
        }
        public void setUnite(Unite unite)
        {
            this.unite = unite;
        }
        public Unite getUnite()
        {
            return this.unite;
        }
    }
}