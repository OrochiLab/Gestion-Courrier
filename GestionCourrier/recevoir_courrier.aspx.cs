using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCourrier
{
    public partial class recevoir_courrier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GestionCourrier.Services.CourrierService.recevoirCourrier(Request.QueryString["ref"]))
            {
                Response.Redirect("cour_arrive.aspx");
            }
            else
                Response.Write("Une erreur est survenue, accès interdit !");
        }
    }
}