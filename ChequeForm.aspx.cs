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
    public partial class ChequeForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        string userId;
        string str,pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                userId = Session["userid"].ToString();
                pid = Request.QueryString["ptype"];
                
            }
            catch
            {
                Response.Redirect("login.aspx");
            }


        }

        public void insertCheque()
                   {
            if(drpincome.SelectedItem.Text=="")
            {
                str=drpoutcome.SelectedItem.Text;
            }
            else if(drpoutcome.SelectedItem.Text=="")
            {
                str=drpincome.SelectedItem.Text;
            }
            else
            {
                str="-";
            }

            cmd = new SqlCommand("isertCheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userId);
            cmd.Parameters.AddWithValue("@palceofisue", txtplace.Text);
            cmd.Parameters.AddWithValue("@dateofcheque", txtcal.Text);
            cmd.Parameters.AddWithValue("@payagainstthis", txtpayagainst.Text);
            cmd.Parameters.AddWithValue("@currencyid", drpcurrancy.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@amtinwords", txtamtinwords.Text);
            cmd.Parameters.AddWithValue("@saramount", txtamt.Text);
            cmd.Parameters.AddWithValue("@resonofthischeque", txtresonof.Text);
            cmd.Parameters.AddWithValue("@cheqetype", str);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            //insTrans();
            clr();
        }

        public void clr()
        {
            txtamt.Text = "";
            txtplace.Text = "";
            txtcal.Text="";
            txtpayagainst.Text="";
            txtamtinwords.Text="";
            txtresonof.Text = "";
        }
        public void status_print(string str)
        {

            cmd = new SqlCommand("ins_StatusPrint", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StatusPrint", "not print");
            cmd.Parameters.AddWithValue("@TransId", str);
            cmd.Parameters.AddWithValue("@TransType", "BANCK CHEQUE");
            cmd.Parameters.AddWithValue("@dateTrans", System.DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@InOutTrans", pid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
           //// btnsave.Text = 
            try
            {

                insertCheque();
                cmd = new SqlCommand("chequeMaxId", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                try
                {

                    if (dr.Read())
                    {
                        string s = dr["ChequeId"].ToString();
                        con.Close();
                        status_print(s);
                        Response.Redirect("WebForm2.aspx?printid=" + s + "");
                    }
                }
                catch
                {

                }
            }
            catch
            {
            }
        }
    }
}