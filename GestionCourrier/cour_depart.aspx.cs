using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCourrier
{
    public partial class cour_departaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_ajout_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajout_cour_depart.aspx");
        }
    }
}