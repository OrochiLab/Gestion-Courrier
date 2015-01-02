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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(acces.SelectedValue.ToString().Equals("bo"))
            {
                AgentBO agent = LoginService.loginAgentBO(user.Text.ToString(), mdp.Text.ToString());
                if (agent != null)
                {
                    result.Text = agent.getId() + " " + agent.getNom() + " " + agent.getPrenom();
                    Session["type"] = "BO";
                    Session["user"] = agent;
                    Response.Redirect("index.aspx");
                }
                else
                    result.Text = "Identifiants incorrectes";
            }
            else
            {
                AgentUA agent = LoginService.loginAgentUA(user.Text.ToString(), mdp.Text.ToString());
                if (agent != null)
                {
                    result.Text = agent.getId() + " " + agent.getNom() + " " + agent.getPrenom();
                    Session["type"] = "UA";
                    Session["user"] = agent;
                    Response.Redirect("index.aspx");
                }
                else
                    result.Text = "Identifiants incorrectes";
            }
        }
    }
}