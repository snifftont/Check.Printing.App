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
    
    public partial class Deposit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd,cmd1;
        SqlDataReader dr;
        string userId, pid; int id, id1;
       
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

       
           
        
        protected void drpcheck_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpcheck.SelectedItem.Text == "1")
            {
               // mainpanel.Visible = true;
                Panel1.Visible = true;
                //mainpanelcash.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                //drpcash.Items.Clear();
                //drpcash.Items.Add("0");
                //drpcash.Items.Add("1");
                //drpcash.Items.Add("2");
                //drpcash.Items.Add("3");
                //drpcash.Enabled = true; 
            }
            if (drpcheck.SelectedItem.Text == "2")
            {
               // mainpanel.Visible = true;
                Panel1.Visible = true;
                Panel2.Visible = true;
                //mainpanelcash.Visible = false;
                //drpcash.Items.Clear();
                Panel3.Visible = false;
                Panel4.Visible = false;
                //drpcash.Items.Add("0");
                //drpcash.Items.Add("1");
                //drpcash.Items.Add("2");
                //drpcash.Enabled = true; 
            }
            if (drpcheck.SelectedItem.Text == "3")
            {
                //mainpanel.Visible = true;
                Panel1.Visible = true;
                Panel2.Visible = true;
                Panel3.Visible = true;
                //drpcash.Items.Clear();
                Panel4.Visible = false;
                //drpcash.Items.Add("0");
                //drpcash.Items.Add("1");
                //drpcash.Enabled = true;
                //mainpanelcash.Visible = false;
            }
            if (drpcheck.SelectedItem.Text == "4")
            {
                //mainpanel.Visible = true;
                Panel1.Visible = true;
                Panel2.Visible = true;
                Panel3.Visible = true;
                Panel4.Visible = true;
                //drpcash.Items.Clear();
                //drpcash.Items.Add("0");
                //mainpanelcash.Visible = false;
                //drpcash.Enabled = false;
            }
            if (drpcheck.SelectedItem.Text == "0")
            {
                //mainpanel.Visible = false;
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                //drpcash.Items.Clear();
                //drpcash.Items.Add("0");
                //drpcash.Items.Add("1");
                //drpcash.Items.Add("2");
                //drpcash.Items.Add("3");
                //drpcash.Items.Add("4");
                //mainpanelcash.Visible = false;
            }
        }

        protected void drpcash_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpcash.SelectedItem.Text == "0")
            {
                mainpanelcash.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false; ;
                Panel7.Visible = false; ;
                Panel8.Visible = false;
            }
            if (drpcash.SelectedItem.Text == "1")
            {
                mainpanelcash.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = false; ;
                Panel7.Visible = false; ;
                Panel8.Visible = false;
            }
            if (drpcash.SelectedItem.Text == "2")
            {
                mainpanelcash.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = true;
                Panel7.Visible = false; ;
                Panel8.Visible = false;
            }
            if (drpcash.SelectedItem.Text == "3")
            {
                mainpanelcash.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = true;
                Panel7.Visible = true;
                Panel8.Visible = false;
            }
            if (drpcash.SelectedItem.Text == "4")
            {
                mainpanelcash.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = true;
                Panel7.Visible = true;
                Panel8.Visible = true;
            }

        }
        public void ins_deposit()
        {
            cmd1 = new SqlCommand("idmaxdeposit", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd1.ExecuteReader();
            try
            {

                if (dr.Read())
                {
                    string s = dr["DepostiId"].ToString();
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
            DateTime dt=Convert.ToDateTime(txtcal.Text);
            cmd = new SqlCommand("depositInfo_pro", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DepostiId", id);
            cmd.Parameters.AddWithValue("@UserId",userId);
            
            cmd.Parameters.AddWithValue("@CustomerId", "1");
            cmd.Parameters.AddWithValue("@DateDeposit", dt);
            cmd.Parameters.AddWithValue("@Branch", txtBranch.Text);
            cmd.Parameters.AddWithValue("@AccountNO", txtAccount.Text);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@TelephoneNumber", txtTelNo.Text);
            cmd.Parameters.AddWithValue("@DepositorName", txtDepoName.Text);
            cmd.Parameters.AddWithValue("@Nationality", txtNat.Text);
            cmd.Parameters.AddWithValue("@CivilIdIqama", txtCivil.Text);
            cmd.Parameters.AddWithValue("@SponsorName", txtSpoName.Text);
            cmd.Parameters.AddWithValue("@PurposeOfDeposit", txtPurOfDpo.Text);
            cmd.Parameters.AddWithValue("@Telephone", txtTel.Text);
            cmd.Parameters.AddWithValue("@NoOfCheque", drpcheck.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@NoOfCash", drpcash.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@TotalAmount", txtTotalAmt.Text);
            cmd.Parameters.AddWithValue("@AmountInWords", txtAmtInWords.Text);
              
             con.Open();
             cmd.ExecuteNonQuery();
             con.Close();
             //depodetid();
             insertCheckinfo();
             insertCashinfo();
        }
        public void insertCheckinfo()
        {
            Dictionary<int, string> chk = new Dictionary<int, string>();

            //List<string> chk = new List<string>();
            //for(int i=0;i<=drpcheck.Items.Count;i++)
            //{
            //chk.Add(
            int itm = int.Parse(drpcheck.SelectedItem.Text);
            switch (itm)
            {
                case 0:
                    break;
                case 1:
                    try
                    {
                        insertCheckData(txtChkF.Text, txtBnkF.Text, txtAcF.Text, txtAmtF.Text);
                    }
                    catch { throw; }
                    break;
                case 2:
                    try
                    {

                        insertCheckData(txtChkF.Text, txtBnkF.Text, txtAcF.Text, txtAmtF.Text);
                        insertCheckData(txtChkS.Text, txtBnkS.Text, txtAcS.Text, txtAmtS.Text);
                    }
                    catch { throw; }
                    break;
                case 3:
                    try
                    {

                        insertCheckData(txtChkF.Text ,txtBnkF.Text,txtAcF.Text,txtAmtF.Text);
                        insertCheckData(txtChkS.Text, txtBnkS.Text, txtAcS.Text, txtAmtS.Text);
                        insertCheckData(txtChkT.Text, txtBnkT.Text, txtAcT.Text, txtAmtT.Text);
                        
                        
                    }
                    catch { throw; }

                    break;
                case 4:
                    try
                    {
                        insertCheckData(txtChkF.Text, txtBnkF.Text, txtAcF.Text, txtAmtF.Text);
                        insertCheckData(txtChkS.Text, txtBnkS.Text, txtAcS.Text, txtAmtS.Text);
                        insertCheckData(txtChkT.Text, txtBnkT.Text, txtAcT.Text, txtAmtT.Text);
                        insertCheckData(txtChkFt.Text, txtBnkFt.Text, txtAcFt.Text, txtAmtFt.Text);
                    }
                    catch { throw; }
                    break;

            }
            

        }
        public void insertCashinfo()
        {
            int ch = int.Parse(drpcash.SelectedItem.Text);
            switch (ch)
            {
                case 0:
                    break;
                case 1:
                    try
                    {
                        cash_value(drpchoosecash1.SelectedItem.Text, txtamt1.Text);
                    }
                    catch { throw; }
                    break;
                case 2:
                    try
                    {
                        cash_value(drpchoosecash1.SelectedItem.Text, txtamt1.Text);
                        cash_value(drpchoosecash2.SelectedItem.Text, txtamt2.Text);
                    }
                    catch { throw; }
                    break;
                case 3:
                    try
                    {
                        cash_value(drpchoosecash1.SelectedItem.Text, txtamt1.Text);
                        cash_value(drpchoosecash2.SelectedItem.Text, txtamt2.Text);
                        cash_value(drpchoosecash3.SelectedItem.Text, txtamt3.Text);
                    }
                    catch { throw; }
                    break;
                case 4:
                    try
                    {
                        cash_value(drpchoosecash1.SelectedItem.Text, txtamt1.Text);
                        cash_value(drpchoosecash2.SelectedItem.Text, txtamt2.Text);
                        cash_value(drpchoosecash3.SelectedItem.Text, txtamt3.Text);
                        cash_value(drpchoosecash4.SelectedItem.Text, txtamt4.Text);
                    }
                    catch { throw; }
                    break;

            }
           
        }
        public void cash_value(string str,string str1)
        {
            cmd = new SqlCommand("depositcash", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DepositDetailId", id1);
            cmd.Parameters.AddWithValue("@DepositId", id);
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@CustomerId", "1");
            cmd.Parameters.AddWithValue("@CashChoose", str);
            cmd.Parameters.AddWithValue("@CashAmount", str1);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //public void depodetid()
        //{
           
        //}
        public bool insertCheckData(string chk, string ac, string bank, string amt)
        {
            cmd1 = new SqlCommand("idmaxdepositDetail", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            con.Open();
            dr = cmd1.ExecuteReader();
            try
            {

                if (dr.Read())
                {
                    string s = dr["DepositDetailId"].ToString();
                    con.Close();
                    if (s == "")
                    {
                        id1 = 1;
                    }
                    id1 = int.Parse(s) + 1;
                }
            }
            catch
            {
                id1 = 1;
            }
           
            cmd = new SqlCommand("depositdetail_pro", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DepositDetailId", id1);
            cmd.Parameters.AddWithValue("@DepositId", id);
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@CustomerId", "1");
            cmd.Parameters.AddWithValue("@CurrencyId", drpCurrancy.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@ChequeNo", chk);
            cmd.Parameters.AddWithValue("@BankName", bank);
            cmd.Parameters.AddWithValue("@AcNo", ac);
            cmd.Parameters.AddWithValue("@ChequeAmount", amt);
           
          
             




            //cmd.Parameters.AddWithValue("@chk", chk);
            //cmd.Parameters.AddWithValue("@act", ac);
            //cmd.Parameters.AddWithValue("@bnk", bank);
            //cmd.Parameters.AddWithValue("@amt", amt);
           
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }
        public void status_print(string str)
        {

            cmd = new SqlCommand("ins_StatusPrint", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StatusPrint", "not print");
            cmd.Parameters.AddWithValue("@TransId", str);
            cmd.Parameters.AddWithValue("@TransType", "DEPOSIT");
            cmd.Parameters.AddWithValue("@dateTrans", System.DateTime.Now.ToShortDateString());
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
           string oldAmt= dr["Balance"].ToString();
            con.Close();
            double nAmt = double.Parse(oldAmt) + double.Parse(txtTotalAmt.Text);
            cmd1 = new SqlCommand("updBalance", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@UserId", userId);
            cmd1.Parameters.AddWithValue("@Balance", nAmt+"");
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();

        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                ins_deposit();//
                updt_blnc();
                status_print(id + "");
                Response.Redirect("DepositForm1.aspx?printid=" + id + "");
            }
            catch
            { }
        }

        protected void txtTotalAmt_TextChanged(object sender, EventArgs e)
        {
            //double tot;
            //if (txtAmtF.Text == "")
            //{
            //    tot=Convert.ToDouble(txtAmtS.Text)+Convert.ToDouble(txtAmtT.Text)+Convert.ToDouble(txtAmtFt.Text)+Convert.ToDouble(txtamt1.Text)+Convert.ToDouble(txtamt2.Text)+Convert.ToDouble(txtamt3.Text)+Convert.ToDouble(txtamt4.Text);

            //}
            //else if (txtAmtS.Text=="")
            //{
            //    tot = Convert.ToDouble(txtAmtF.Text) + Convert.ToDouble(txtAmtT.Text) + Convert.ToDouble(txtAmtFt.Text) + Convert.ToDouble(txtamt1.Text) + Convert.ToDouble(txtamt2.Text) + Convert.ToDouble(txtamt3.Text) + Convert.ToDouble(txtamt4.Text);
            //}
            //else if (txtAmtT.Text == "")
            //{
            //    tot = Convert.ToDouble(txtAmtF.Text) + Convert.ToDouble(txtAmtS.Text) + Convert.ToDouble(txtAmtFt.Text) + Convert.ToDouble(txtamt1.Text) + Convert.ToDouble(txtamt2.Text) + Convert.ToDouble(txtamt3.Text) + Convert.ToDouble(txtamt4.Text);
            //}
            //txtTotalAmt.Text = tot + "";
        }

        protected void btnprnt_Click(object sender, EventArgs e)
        {
           
        }

       
       
    }
}