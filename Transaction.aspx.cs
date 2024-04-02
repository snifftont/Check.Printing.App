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
    public partial class Transaction : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        string pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Request.QueryString["ptype"];
            binddata(pid);
            lblpage.Text = pid;
            show_blnc();
        }
        public void binddata(string str)
        {
            cmd = new SqlCommand("getTransvalue", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@InOutTrans", str);
                con.Open();
                dr = cmd.ExecuteReader();
               GridView1.DataSource = dr;
                GridView1.DataBind();
                              
            con.Close();
        }
        public void show_blnc()
        {
            cmd=new SqlCommand ("getBalance",con);
            cmd.CommandType=CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", Session["userid"]);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            lblBln.Text = dr["Balance"].ToString();
            con.Close();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        //    int RowIndex = int.Parse(e.CommandArgument.ToString());
        //    CheckBox chk = (CheckBox)GridView1.Rows[RowIndex].FindControl("chk");
        //    chk.Checked = true;
        }
    }
}