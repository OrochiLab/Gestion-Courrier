using GestionCourrier.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCourrier
{
    public partial class ajout_contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enregistrer_Click(object sender, EventArgs e)
        {
            if(ContactService.ajouterContact(nom.Text.ToString(), type.SelectedValue.ToString(), adresse.Text.ToString()))
            {
                pnl_result.Visible = true;
                nom.Text = "";
                adresse.Text = "";
            }
        }
    }
}