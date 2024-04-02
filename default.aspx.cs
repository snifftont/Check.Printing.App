using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChequePrint
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                string per = Session["permission"].ToString();
                if (per == "3")
                {
                    mainPanel.Visible = true;
                    outcomePanel.Visible = true;
                    incomePanel.Visible = true;
                }
                else if (per == "2")
                {
                    mainPanel.Visible = true;
                    outcomePanel.Visible = true;
                    incomePanel.Visible = false;
                }
                else if (per == "1")
                {
                    mainPanel.Visible = true;
                    outcomePanel.Visible = false;
                    incomePanel.Visible = true;
                }
                else if (per == "0" || per=="")
                {
                    Response.Redirect("login.aspx");
                }
                
            }
            catch
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["permission"] = "";
            Response.Redirect("login.aspx");
        }
    }
}