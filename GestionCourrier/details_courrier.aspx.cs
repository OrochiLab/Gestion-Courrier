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
        CourrierArriveInterne cour;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ref"]!= null)
            {
                List<Contact> destin = ContactService.getContacts();
                id_destinataire.Items.Clear();
                id_destinataire.Items.AddRange(destin.Select(ex => new ListItem()
                {
                    Text = ex.getNom(),
                    Value = ex.getId() + ""
                }).ToArray());


                List<Unite> l = UniteService.getUnites();
                unit.Items.Clear();
                unit.Items.Add(new ListItem()
                {
                    Text = "Choisissez une unité",
                    Value = "0"
                });
                unit.Items.AddRange(l.Select(u => new ListItem()
                {
                    Text = u.getNom(),
                    Value = u.getId() + ""
                }).ToArray());
                unit_copie.Items.Clear();
                unit_copie.Items.AddRange(l.Select(u => new ListItem()
                {
                    Text = u.getNom(),
                    Value = u.getId() + ""
                }).ToArray());

                CourrierArriveInterne c = CourrierService.getCourrierByRef(Request.QueryString["ref"]);
                cour = c;
                if(c!=null)
                { 
                    ref_cour.Text = c.getReference();
                    reference.Text = c.getReference();
                    type.Text = c.getTypecr();
                    nature.Text = c.getNature();
                    datecrea.Text = c.getDate_creation().ToString().Substring(0, 10);
                    objet.Text = c.getObjet();
                    agentua.Text = c.getAgentUA().getNom() + " " + c.getAgentUA().getPrenom();
                    uniteua.Text = c.getAgentUA().getUnite().getNom();
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

        protected void btn_enregistrer_Click(object sender, EventArgs e)
        {
            /*Response.Write(ref_cour.Text.ToString());
            Response.Write(DateTime.ParseExact(datereaf.Text.ToString(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture));
            Response.Write(motif.Text.ToString());
            Response.Write(cour.getAgentUA().getId());
            Response.Write(Int32.Parse(id_agent_ua.Value));*/
            if (cour.getAgentUA().getId() == Int32.Parse(id_agent_ua.Value))
                resultat_reaf.Text= "Vous ne pouvez réaffecter au meme agent !";

            else 
            { 
                    if (ReaffectationService.ajouterReaffectation(ref_cour.Text.ToString(), DateTime.ParseExact(datereaf.Text.ToString(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture), motif.Text.ToString(), cour.getAgentUA().getId(), Int32.Parse(id_agent_ua.Value)))
                    {
                        resultat_reaf.Text = "Reaffectation effectuée ";
                    }
                    else
                        resultat_reaf.Text = "Une erreur est survenue, veuillez vérifier vos données";
            }
        }

        protected void btn_enregistrer_copie_Click(object sender, EventArgs e)
        {
            /*Response.Write("Unité : " +id_unit_copie.Value);
            Response.Write("Destinataire : " + id_destinataire_copie.Value);
            Response.Write("Motif : " + motif_copie.Text.ToString());*/
            if (CopieService.ajouterCopie(ref_cour.Text.ToString(), Int32.Parse(id_destinataire_copie.Value), Int32.Parse(id_unit_copie.Value), motif_copie.Text.ToString()))
            {
                resultat_copie.Text = "Copie ajoutée avec succès !";
            }
            else
                resultat_copie.Text = "Une erreur est survenue, veuillez vérifier vos données";
        }
    }
}