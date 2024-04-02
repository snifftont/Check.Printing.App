using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace ChequePrint
{
    public partial class user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd,cmd1;
        SqlDataReader dr;
        int id;
        string permission;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void insertUser()
        {
             
            cmd1 = new SqlCommand("userInfoId", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd1.ExecuteReader();
            try
            {

                if (dr.Read())
                {
                    string s = dr["UserId"].ToString();
                    con.Close();
                    if (s == "")
                    {
                        id = 1;
                    }
                    id = int.Parse(s) + 1;
                }
            }
            catch
            {
                id = 1;
            }

            if (chkIncome.Checked && Chkoutcome.Checked)
            {
                permission="3";
            }
            else if(chkIncome.Checked)
            {
                permission = "1";
            }
            else if (Chkoutcome.Checked)
            {
                permission = "2";
            }
            else
            {
                permission = "0";
            }
                cmd = new SqlCommand("inserUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userId", id);
                cmd.Parameters.AddWithValue("@userName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@userType", drpusertpye.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@userFullName", txtFullName.Text);
                cmd.Parameters.AddWithValue("@userphone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@emailAddress", txtxEmail.Text);
                //cmd.Parameters.AddWithValue("@balance", "0");
                cmd.Parameters.AddWithValue("@userPassword", txtPass.Text);
                cmd.Parameters.AddWithValue("@permission", permission);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                clr();
            
    }

        public void clr()
        {
            txtUserName.Text = "";
            //txtbalance.Text = "";
            txtConfPass.Text = "";
            txtFullName.Text = "";
            txtPass.Text = "";
            txtPhone.Text = "";
            txtxEmail.Text = "";
            drpusertpye.Text = "";
            chkIncome.Checked = false;
            Chkoutcome.Checked = false;


        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            //try
            //{
                insertUser();
                //clr();
            //}
            //catch (Exception ex)
            //{
            //    Response.Write(ex);

            //}
        }
    }
}