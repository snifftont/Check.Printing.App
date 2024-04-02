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
    public partial class moneyTransfer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        string userId,pid;
       
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

        protected void chkremitter_CheckedChanged(object sender, EventArgs e)
        {
            if (chkremitter.Checked)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
        }
        public void ins_MoneyTransfer()
        {
             DateTime dt=Convert.ToDateTime(txtDte.Text);
            cmd = new SqlCommand("Ins_moneyTransfer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", userId);//.ToString("dd.MM.yyyy")
             cmd.Parameters .AddWithValue("@DateTransfer",dt);
             cmd.Parameters .AddWithValue("@CurrencyId",drpCurr.SelectedValue.ToString());
             cmd.Parameters.AddWithValue("@Branch",txtBranch.Text);
             cmd.Parameters .AddWithValue("@Amount",txtAmt.Text);
             cmd.Parameters .AddWithValue("@AmountInWords",txtAmtInWords.Text);
             cmd.Parameters .AddWithValue("@AgainstPaymentBy",chkAgstPay.SelectedItem.Text);
             cmd.Parameters .AddWithValue("@Pleaseissue", chkPlzIss.SelectedItem.Text);
             cmd.Parameters .AddWithValue("@BeneficiaryName",txtBenName.Text);
             cmd.Parameters .AddWithValue("@TelephoneNumber",txtTeleNo.Text);
             cmd.Parameters .AddWithValue("@Aaddress",txtAdd.Text);
             cmd.Parameters .AddWithValue("@Zipcode",txtZip.Text);
             cmd.Parameters .AddWithValue("@City",txtCity.Text);
             cmd.Parameters .AddWithValue("@Sstate",txtState.Text);
             cmd.Parameters.AddWithValue("@Country", txtCnt.Text);
             cmd.Parameters .AddWithValue("@BeneficiaryBank",txtBenBank.Text);
             cmd.Parameters .AddWithValue("@BeneficiaryIban",txtIban.Text);
             cmd.Parameters .AddWithValue("@DesBankAddress",txtBankAdd.Text);
             cmd.Parameters .AddWithValue("@DesBankCity",txtCity.Text);
             cmd.Parameters .AddWithValue("@DesBankCountry",txtBankCnt.Text);
             cmd.Parameters .AddWithValue("@OtherDetail",txtOtherDet.Text);
             cmd.Parameters .AddWithValue("@RemitterTelephoneNo",txtRemTNo.Text);
             cmd.Parameters .AddWithValue("@RemitterName",txtRemName.Text);
             cmd.Parameters .AddWithValue("@RemitterCName",txtRemCName.Text);
             cmd.Parameters .AddWithValue("@DateOfIssuance",dt);
             cmd.Parameters .AddWithValue("@PlaceOfissuance",txtPlIss.Text);
             cmd.Parameters .AddWithValue("@RemitterId",txtRemID.Text);
             cmd.Parameters .AddWithValue("@RemitterAddress",txtRemAdd.Text);
             cmd.Parameters .AddWithValue("@SponsorName",txtSpName.Text);
             cmd.Parameters .AddWithValue("@SponsorAddress",txtSpnAdd.Text);
             cmd.Parameters .AddWithValue("@SponsorTelephoneNo",txtspTelNo.Text);
             cmd.Parameters .AddWithValue("@PurposeOfRemitiance",chkPurOfRmt.SelectedItem.Text);
             con.Open();
             cmd.ExecuteNonQuery();
             con.Close();
             
        }
        protected void clr()
        {
            txtDte.Text = "";

            txtCnt.Text = "";
            txtAmtInWords.Text = "";
            txtBenName.Text= "";
            chkPlzIss.ClearSelection();
           txtAmt.Text= "";
           chkAgstPay.ClearSelection();
           txtBranch.Text = "";
             txtTeleNo.Text = "";
            txtAdd.Text = "";

            txtZip.Text = "";
             txtCity.Text = "";
            txtState.Text = "";
             txtBenBank.Text = "";
            txtIban.Text = "";

            txtBankAdd.Text = "";
            txtBankCity.Text = "";
           txtCnt.Text = "";
            txtOtherDet.Text = "";
             txtRemTNo.Text = "";

            txtRemName.Text = "";
            txtRemCName.Text = "";
         txtPlIss.Text = "";
          txtRemID.Text = "";

           txtRemAdd.Text = "";
           txtSpName.Text = "";
             txtSpnAdd.Text = "";
            txtspTelNo.Text = "";
            chkPurOfRmt.ClearSelection();
           
        }
        public void status_print(string str)
        {
            
            cmd = new SqlCommand("ins_StatusPrint", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StatusPrint", "not print");
            cmd.Parameters.AddWithValue("@TransId", str);
            cmd.Parameters.AddWithValue("@TransType", "MONEY TRANSFER");
            cmd.Parameters.AddWithValue("@dateTrans",System.DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@InOutTrans", pid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void updt_blnc()
        {
            cmd = new SqlCommand("getBalance", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", userId);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            string oldAmt = dr["Balance"].ToString();
            con.Close();
            double nAmt = double.Parse(oldAmt) - double.Parse(txtAmt.Text);
            SqlCommand  cmd1 = new SqlCommand("updBalance", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@UserId", userId);
            cmd1.Parameters.AddWithValue("@Balance", nAmt + "");
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            clr();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                ins_MoneyTransfer();
                updt_blnc();
                cmd = new SqlCommand("idMaxTranfer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                try
                {

                    if (dr.Read())
                    {
                        string s = dr["MoneyTransfId"].ToString();
                        con.Close();
                        status_print(s);
                        Response.Redirect("moneytranferprint.aspx?printid=" + s + "");
                       
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

        protected void btnPrint_Click(object sender, EventArgs e)
        {
           // Response.Redirect("moneytranferprint.aspx");
        }

        //protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    this.CheckBoxList1.SelectedItem.Selected = true;
        //}



        
    }
}