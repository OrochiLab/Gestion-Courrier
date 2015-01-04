using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestionCourrier.Services;
using GestionCourrier.Metier;
using System.Globalization;

namespace GestionCourrier
{
    public partial class ajout_cour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            List<Dossier> d = DossierService.getRefDossiers();
            ref_dos.Items.Clear();
            ref_dos.Items.AddRange(d.Select(dos => new ListItem()
            {
                Text = dos.getReference(),Value = dos.getReference()
            }).ToArray());


            List<Unite> l = UniteService.getUnites();
            unit.Items.Clear();
            unit.Items.AddRange(l.Select(u => new ListItem(){
             Text = u.getNom(), Value= u.getId()+""   
            }).ToArray());

            List<Contact> c = ContactService.getContacts();
            expediteur.Items.Clear();
            expediteur.Items.AddRange(c.Select(ex => new ListItem()
            {
                Text = ex.getNom(),Value = ex.getId() + ""
            }).ToArray());
            

            unit.DataBind();
            expediteur.DataBind();
            ref_dos.DataBind();
        }

        protected void unit_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btn_ajout_cr_Click(object sender, EventArgs e)
        {
            CourrierArriveInterne c;
            if (fact.Checked) c = new Facture();
            else c = new CourrierArriveInterne();

            //Response.Write(opt_dos.Checked?"Dossier : " +id_ref_dos.Value:"Pas de dossier ");
            if (opt_dos.Checked) c.setDossier(new Dossier(id_ref_dos.Value));

            //Response.Write("Réference du courrier:  " + ref_cour.Text.ToString());
            c.setReference(ref_cour.Text.ToString());

            //Response.Write("Expediteur : " + id_expediteur.Value);
            c.setExpediteur(new Contact(id_expediteur.Value));

            //Response.Write("type : " + type.Text.ToString()+" ");
            c.setTypecr(type.Text.ToString());

            //Response.Write("nature : "+nature.Text.ToString() + " ");
            c.setNature(nature.Text.ToString());

            //Response.Write("obet : " +objetcr.Text.ToString() + " ");
            c.setObjet(objetcr.Text.ToString());

            //Response.Write("date creation : " +datecrea.Text.ToString() + " ");
            c.setDate_creation(DateTime.ParseExact(datecrea.Text.ToString(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture));

            //Response.Write("date courrier : "+datecour.Text.ToString() + " ");
            c.setDate_Courrier(DateTime.ParseExact(datecour.Text.ToString(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture));

            //Response.Write("date arrivée : " +datearr.Text.ToString() + " ");
            c.setDate_Arrivee(DateTime.ParseExact(datearr.Text.ToString(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture));

            //Response.Write(" unité administrative : " +id_unit.Value+" ");
            //Response.Write("Agent de l'unité : " + id_agent_ua.Value.Split(new Char[] { '-' })[0] + " ");
            
            c.setAgentUA(new AgentUA(Int32.Parse(id_agent_ua.Value.Split(new Char[]{'-'})[0])));

            //Response.Write("Type courrier (interne/externe ) : " +typecr.SelectedValue.ToString() + " ");
            c.setType((typecr.SelectedValue.ToString().Equals("arr") ? "Arrive" : "Interne"));

            //Response.Write("Requis une réponse : " + (reponse.Checked ? "Oui" : "Non "));
            c.setReponse(reponse.Checked);

            //Response.Write("C'est une facture : " + (fact.Checked ? "Oui, device : "+device.Text.ToString()+" et montant " +montant.Text.ToString() : "Non "));
            if(fact.Checked)
            { 
                ((Facture)c).setDevice(device.Text.ToString());
                ((Facture)c).setMontant(float.Parse(montant.Text.ToString().Replace(".",",")));
            }
            c.setAgentBO((AgentBO)Session["user"]);
            //Response.Write(String.Format("Insert into courrier values('{0}','{1}','{2}','{3}','{4}','Cree',{5},{6},{7},null,null)", c.getReference(), c.getTypecr(), c.getNature(), c.getDate_creation(), c.getObjet(), c.getAgentBO().getId(), c.getAgentUA().getId(), c.getReponse() ? 1 : 0));
            //Response.Write(String.Format("Insert into courrier_arrive_interne values('{0}','{1}','{2}','{3}',(select id_contact from contacts where nom='{4}'))", c.getReference(), c.getDate_Courrier(), c.getDate_Arrivee(), c.getType(), c.getExpediteur().getNom()));
            //Response.Write(String.Format("Insert into facture values ('{0}','{1}',{2})", c.getReference(), ((Facture)c).getDevice(), ((Facture)c).getMontant() + "").Replace(",", "."));
            //Response.Write(CourrierService.ajouterCourrier(c)?"OMG courrier ajouté !":"Non gros fail !");
            result.Text = CourrierService.ajouterCourrier(c) ? "Le courrier a été ajouté avec succès !" : "Echec d'ajout, veuillez vérifier les données entrés";
            //Response.Write(cour_rep.Checked ? "Réponse au courrier : " + id_ref_cour_rep.Value : "Ce courrier n'est pas une réponse ");
        }

    }
}