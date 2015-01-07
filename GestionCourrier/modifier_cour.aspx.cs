using GestionCourrier.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCourrier
{
    public partial class modifier_cour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ref_cour"] != null && Request.QueryString["colonne"] != null && Request.QueryString["valeur"] != null)
            {
                if (CourrierService.modifierCourrier(Request.QueryString["ref_cour"], Request.QueryString["colonne"], Request.QueryString["valeur"]))
                {
                    Response.Write("Modification effectuée");
                    
                }
                else
                { 
                    Response.Write("Modification echouée");
                    
                }
            }
            else
            { 
                Response.Write("Erreur arguments ?");
                
            }
        }
    }
}