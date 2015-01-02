using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCourrier
{
    public partial class cour_arrive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ajout_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajout_contact.aspx");
        }

        protected void btn_ajout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ajout_cour.aspx");
        }
    }
}