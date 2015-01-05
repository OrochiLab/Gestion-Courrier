using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GestionCourrier.Metier
{
    public class AgentUA
    {
        private int id;
        private string nom;
        private string prenom;
        private string tel;
        private string adresse;
        private char sexe;
        private string login;
        private string password;
        private Unite unite;

        public AgentUA() { }
        public AgentUA(int id,string nom,string prenom,string tel,string adresse,char sexe,Unite unite)
        {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
            this.tel = tel;
            this.adresse = adresse;
            this.sexe = sexe;
            this.unite = unite;
        }
        public AgentUA(int id,string nom,string prenom)
        {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
        }
        public AgentUA( string nom, string prenom)
        {
            this.nom = nom;
            this.prenom = prenom;
        }
        public AgentUA(string nom, string prenom,Unite unite)
        {
            this.nom = nom;
            this.prenom = prenom;
            this.unite = unite;
        }
        public AgentUA(int id)
        {
            this.id = id;
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
            this.prenom = prenom;
        }

        public string getPrenom()
        {
            return this.prenom;
        }

        public void setTel(string tel)
        {
            this.tel = tel;
        }

        public string getTel()
        {
            return this.tel;
        }

        public void setAdresse(string adresse)
        {
            this.adresse = adresse;
        }

        public string getAdresse()
        {
            return this.adresse;
        }

        public void setSexe(char sexe)
        {
            this.sexe = sexe;
        }

        public char getSexe()
        {
            return this.sexe;
        }

        public void setLogin(string login)
        {
            this.login = login;
        }

        public string getLogin()
        {
            return this.login;
        }

        public void setPassword(string password)
        {
            this.password = password;
        }

        public string getPassword()
        {
            return this.password;
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