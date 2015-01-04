using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class Contact
    {
        private int id;
        private string nom;
        private string adresse;
        private string type;

        public Contact() { }
        public Contact(int id,string nom,string adresse,string type)
        {
            this.id = id;
            this.nom = nom;
            this.adresse = adresse;
            this.type = type;
        }
        public Contact(string nom)
        {
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
        public void setType(string type)
        {
            this.type = type;
        }
        public string getType()
        {
            return this.type;
        }
    }
}