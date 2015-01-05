using GestionCourrier.Metier;
using GestionCourrier.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCourrier
{
    public partial class details_courrier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ref"]!= null)
            {
                CourrierArriveInterne c = CourrierService.getCourrierByRef(Request.QueryString["ref"]);
                if(c!=null)
                { 
                    ref_cour.Text = c.getReference();
                    reference.Text = c.getReference();
                    type.Text = c.getTypecr();
                    nature.Text = c.getNature();
                    datecrea.Text = c.getDate_creation().ToString().Substring(0, 10);
                    objet.Text = c.getObjet();
                    agentua.Text = c.getAgentUA().getNom() + " " + c.getAgentUA().getPrenom();
                    reponse.Text = c.getReponse() ? "Oui" : "Non";
                    courrier_reponse.Text = (c.getCourrier_Reponse() != null) ? c.getCourrier_Reponse().getReference() : "Pas de réponse";
                    ref_dos.Text = (c.getDossier() != null) ? c.getDossier().getReference() : "Sans dossier";
                    datecour.Text = c.getDate_Courrier().ToString().Substring(0, 10);
                    datearr.Text = c.getDate_Arrivee().ToString().Substring(0, 10);
                    expediteur.Text = c.getExpediteur().getNom();
                    if(c is Facture)
                    {
                        facture.Text = "";
                        device.Text = ((Facture)c).getDevice();
                        montant.Text = ((Facture)c).getMontant().ToString();
                    }
                    else
                    {
                        facture.Text = "Non";
                        device.Text = " - ";
                        montant.Text = " - ";
                    }
                    etat.Text = c.getEtat();

                }

            }
        }
    }
}