using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class Unite
    {
        public int id;
        public string nom;
        private string adresse;

        public Unite() { }
        public Unite(int id,string nom,string adresse)
        {
            this.id = id;
            this.nom = nom;
            this.adresse = adresse;
        }
        public Unite(int id,string nom)
        {
            this.id = id;
            this.nom = nom;
        }

        public void setId(int id)
        {
            this.id = id;
        }
        public int getId()
        {
            return this.id;
        }

        public void setNom(string nom)
        {
            this.nom = nom;
        }

        public string getNom()
        {
            return this.nom;
        }

        public void setAdresse(string adresse)
        {
            this.adresse = adresse;
        }

        public string getAdresse()
        {
            return this.adresse;
        }
    }
}