using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class AgentBO
    {
        private int id;
        private string nom;
        private string prenom;
        private string login;
        private string password;

        public AgentBO() { }
        public AgentBO(int id,string nom,string prenom)
        {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
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

        public void setPrenom(string prenom)
        {
            this.prenom= prenom;
        }
        public string getPrenom()
        {
            return this.prenom;
        }

        public void setlogin(string login)
        {
            this.login = login;
        }
        public string getlogin()
        {
            return this.login;
        }

        public void setpassword(string password)
        {
            this.password = password;
        }
        public string getPassword()
        {
            return this.password;
        }
    }
}