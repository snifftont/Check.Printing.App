using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
namespace ChequePrint
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd;
            SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void chech_user()
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }
            con.Open();
            SqlCommand cmd = new SqlCommand("valid_User", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            cmd.Parameters.AddWithValue("@pass", txtpasword.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                FormsAuthentication.RedirectFromLoginPage(txtusername.Text, true);
                Session["permission"] = dr["Permission"].ToString();
                Session["userid"]=dr["UserId"].ToString();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('you entered an Invalid Username/Password');", true);
               
            }


            con.Close();
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                chech_user();
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('you entered an Invalid Username/Password');", true);
            }
        }
    }
}