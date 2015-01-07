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
    public partial class ajout_cour_depart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<String> csr = CourrierService.getCourriresAvecReponses();
            ref_cour_rep.Items.Clear();
            ref_cour_rep.Items.AddRange(csr.Select(co => new ListItem()
            {
                Text = co,
                Value = co
            }).ToArray());

            List<Dossier> d = DossierService.getRefDossiers();
            ref_dos.Items.Clear();
            ref_dos.Items.AddRange(d.Select(dos => new ListItem()
            {
                Text = dos.getReference(),
                Value = dos.getReference()
            }).ToArray());

            List<Contact> des = GestionCourrier.Services.ContactService.getContacts();
            destinataire_cour.Items.Clear();
            destinataire_cour.Items.AddRange(des.Select(dos => new ListItem()
            {
                Text = dos.getNom(),
                Value = dos.getId()+""
            }).ToArray());
            if(!IsPostBack)
            { 
            destinataire_cour.DataBind();
            ref_dos.DataBind();
            ref_cour_rep.DataBind();
            }
        }

        protected void btn_ajout_cr_dep_Click(object sender, EventArgs e)
        {
            CourrierDepart c = new CourrierDepart();
            List<Contact> destinataires = GestionCourrier.Services.ContactService.getContacts();
            if (opt_dos.Checked) c.setDossier(new Dossier(id_ref_dos.Value));

            c.setReference(ref_cour.Text.ToString());
            c.setTypecr(type.Text.ToString());
            
            System.Collections.Generic.List<Contact> selectedItemsList = new System.Collections.Generic.List<Contact>();

            c.setDestinataire(new Contact(Int32.Parse(id_destinataire.Value)));
            c.setNature(nature.Text.ToString());
            c.setObjet(objetcr.Text.ToString());
            c.setTypecr(type.Text.ToString());
            c.setDate_creation(DateTime.ParseExact(datecrea.Text.ToString(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture));
            c.setAgentUA((AgentUA)Session["user"]);
            c.setReponse(reponse.Checked);
            //Response.Write("Destinataire :  "+c.getDestinataire().getId());
            
            if (CourrierService.ajouterCourrier(c))
            {
                CourrierService.repondreCourrier(id_ref_cour_rep.Value, ref_cour.Text.ToString());
                result.Text = "Le courrier a été ajouté avec succès !";
            }
            else
            {
                result.Text = "Echec d'ajout, veuillez vérifier les données entrés";
            }
        }

        protected void destinataire_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}