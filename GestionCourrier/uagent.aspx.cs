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
    public partial class uagent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_unit = Int32.Parse(Request.QueryString["id"]);
            List<AgentUA> l = AgentUAService.getAgentsByUnit(id_unit);

            if(l!=null && l.Count>0)
            {
                ContentPlaceHolder1_agent_ua.Items.Clear();
                ContentPlaceHolder1_agent_ua.Items.AddRange(l.Select(a => new ListItem()
                {
                    Text = a.getId()+" - "+a.getNom()+" "+a.getPrenom(),
                    Value = a.getId() + ""
                }).ToArray());
                ContentPlaceHolder1_agent_ua.DataBind();
            }

        }
    }
}