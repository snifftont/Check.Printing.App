using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace moneyprint
{
    public partial class moneytranferprint : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        string cid ,plzI,agPay,pur,qid;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                qid = Request.QueryString["printid"];
                bindData(qid);
               
               // bindData("23");
            }
            catch
            {
            }

        }
        public void  getcrnc(int id)
        {
            //if (con.State == ConnectionState.Open)
            //{
            //    con.Close();
            //}

            cmd = new SqlCommand("getCurnc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            lblCrnc.Text = dr["CurrencyName"].ToString();
            con.Close();
           
        }
        public void PlzIssue( string str)
        {
            if (str == "Sarie")
            {
                chkSr.Checked = true;
                chkASar.Checked = true;
                chkAdr.Checked = false;
                chkaTT.Checked = false;
                chkDr.Checked = false;
                chkTT.Checked = false;
                chkAmtTAmt.Checked = false;
            }
            else if (str == "Darft")
            {
                chkaTT.Checked = false;
                chkASar.Checked = false;
                chkSr.Checked = false;
                chkDr.Checked = true;
                chkAdr.Checked = true;
                chkTT.Checked = false;
                chkAmtTAmt.Checked = false;
                chkAamtTamt.Checked = false;
            }
            else if (str == "Telex Transfer")
            {
                chkAdr.Checked = false;
                chkASar.Checked = false;
                chkSr.Checked = false;
                chkDr.Checked = false;
                chkTT.Checked = true;
                chkaTT.Checked = true;
                chkAmtTAmt.Checked = false;
                chkAamtTamt.Checked = false;
            }
            else if (str == "Account to Account Transfer")
            {
                chkaTT.Checked = false;
                chkAdr.Checked = false;
                chkASar.Checked = false;
                chkSr.Checked = false;
                chkDr.Checked = false;
                chkTT.Checked = false;
                chkAmtTAmt.Checked = true;
                chkAamtTamt.Checked = true;

            }
        }
        public void agPayBy(string str)
        {
            if (str == "Check")
            {
                chkNo.Checked = true;
                chkAchk.Checked = true;
                chkDebno.Checked = false;
                chkAdeb.Checked = false;
            }
            else if (str == "Debit Account")
            {
                chkNo.Checked = false;
                chkAchk.Checked = false;
                chkDebno.Checked = true;
                chkAdeb.Checked = true;
                
                
            }
        }
        public void purposeOfRem(string str)
        {
            if (str == "Import Finance Payment")
            {
                chkAimp.Checked = true;
                chk1.Checked = true;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = false;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chkAINK.Checked = false;
                chknonsau.Checked = false;
                chkMn.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Remitance by Foreign Firms - For Imports")
            {
                chkRBY.Checked = true;
                chkFor.Checked = true;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = true;
                chk2For.Checked = true;
                chk2Other.Checked = false;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chknonsau.Checked = false;
                chkAINK.Checked = false;
                chkMn.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
                
            }
            else if (str == "Remitance by Foreign Firms - For Other Purposes")
            {
                chkAother.Checked = true;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = true;
                chk2For.Checked = false;
                chk2Other.Checked = true;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = false;
                chkRBY.Checked = true;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chknonsau.Checked = false;
                chkAINK.Checked = false;
                chkMn.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Personal Remittances by Individuals - Saudi")
            {
                chksau.Checked = true;
                chkPRI.Checked = true;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = true;
                chk3Non.Checked = false;
                chk3Soudi.Checked = true;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = false;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chknonsau.Checked = false;
                chkAINK.Checked = false;
                chkMn.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Personal Remittances by Individuals - Non-Saudi")
            {
                chknonsau.Checked = true;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = true;
                chk3Non.Checked = true;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = false;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = true;
                chkAINK.Checked = false;
                chkMn.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Investments Outside The Kingdom")
            {
                chkAINK.Checked = true;
                chknonsau.Checked = false;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = true;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = false;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chkMn.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Sales To Money Chargers")
            {
                chkMn.Checked = true;
                chkAINK.Checked = false;
                chknonsau.Checked = false;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = true;
                chk6.Checked = false;
                chk7.Checked = false;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chkSg.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Sales To Goverment Agencies")
            {
                chkSg.Checked = true;
                chknonsau.Checked = false;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = true;
                chk7.Checked = false;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chkAINK.Checked = false;
                chkMn.Checked = false;
                chkoth.Checked = false;
            }
            else if (str == "Others")
            {
                chkoth.Checked = true;
                chkSg.Checked = false;
                chkMn.Checked = false;
                chknonsau.Checked = false;
                chkAimp.Checked = false;
                chk1.Checked = false;
                chk2.Checked = false;
                chk2For.Checked = false;
                chk2Other.Checked = false;
                chk3.Checked = false;
                chk3Non.Checked = false;
                chk3Soudi.Checked = false;
                chk4.Checked = false;
                chk5.Checked = false;
                chk6.Checked = false;
                chk7.Checked = true;
                chkRBY.Checked = false;
                chkFor.Checked = false;
                chksau.Checked = false;
                chkPRI.Checked = false;
                chkAINK.Checked = false;
            }

        }
        public string  datefor(string str)
        {
            DateTime dt = Convert.ToDateTime(str);
          
            return  dt.ToString("dd.MM.yyyy");
        }
        public void bindData( string str)
        {
            
            cmd = new SqlCommand("getMoneyValue", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", str);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            lblDt.Text = datefor(dr["DateTransfer"].ToString());
            lblBrn.Text = dr["Branch"].ToString();

            cid=dr["CurrencyId"].ToString();
                //dr[""].ToString();
            lblamt.Text = dr["Amount"].ToString();
            lblAmtInWd.Text = dr["AmountInWords"].ToString();
            plzI = dr["Pleaseissue"].ToString();
            agPay = dr["AgainstPaymentBy"].ToString();

            lblBenName.Text = dr["BeneficiaryName"].ToString();
            lblTel.Text = dr["TelephoneNumber"].ToString();
            lblAdd.Text = dr["Aaddress"].ToString();
            lblZip.Text = dr["Zipcode"].ToString();
            lblSt.Text = dr["Sstate"].ToString();
            lblCity.Text = dr["City"].ToString();
            lblBank.Text = dr["BeneficiaryBank"].ToString();
            lblIban.Text = dr["BeneficiaryIban"].ToString();
            lblBankAdd.Text = dr["DesBankAddress"].ToString();
            lblCit.Text = dr["DesBankCity"].ToString();
            lblCnt.Text = dr["DesBankCountry"].ToString();
            lblCCnt.Text = dr["Country"].ToString();
            lblOther.Text = dr["OtherDetail"].ToString();
            lblrem.Text = dr["RemitterName"].ToString();
            lbltelno.Text = dr["RemitterTelephoneNo"].ToString();
            lblSoptel.Text = dr["SponsorAddress"].ToString() + "   " + dr["SponsorTelephoneNo"].ToString();
            lblRemAdd.Text = dr["RemitterAddress"].ToString();
            lblIdName.Text = dr["RemitterCName"].ToString() + "    " + dr["RemitterId"].ToString(); ;
            lblDteIss.Text = datefor(dr["DateOfIssuance"].ToString()) + "   " + dr["PlaceOfissuance"].ToString(); ;
            pur = dr["PurposeOfRemitiance"].ToString();
            con.Close();
            getcrnc(int.Parse(cid));
            PlzIssue(plzI);
            agPayBy(agPay);
            purposeOfRem(pur);
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
               // bindData();
               

            }
            catch
            {
               
            }
        }

        public void hideCtrl()
        {
            lbldate.Visible = false;
            lblAdt.Visible = false;
            lblBr.Visible = false;
            lblABr.Visible = false;
            lblcr.Visible = false;
            lblAcr.Visible = false;
            lblAmount.Visible = false;
            lblAamt.Visible = false;
            lblAaminwrd.Visible = false;
            lblPliss.Visible = false;
            lblApliss.Visible = false;
            if (chkSr.Checked)
            {
                chkSr.Text = "";
                chkASar.Text = "";

                chkASar.Visible = true;
                chkSr.Visible = true;

                chkAdr.Visible = false;
                chkaTT.Visible = false;
                chkTT.Visible = false ;
                 chkDr.Visible = false;
                 chkAamtTamt.Visible = false;
                chkAmtTAmt.Visible = false;
            }
            if (chkDr.Checked)
            {
                chkDr.Text = "";
                chkAdr.Text = "";
                chkDr.Visible = true;
                chkAdr.Visible = true;
                   chkASar.Visible= false;
                    chkSr.Visible= false;
               chkaTT.Visible = false;
                chkTT.Visible = false ;
                chkAamtTamt.Visible = false;
                chkAmtTAmt.Visible = false;

            }
            if (chkaTT.Checked)
            {
                chkDr.Visible = false;
                chkAdr.Visible = false;
                chkAamtTamt.Visible = false;
                chkAmtTAmt.Visible = false;
                chkASar.Visible = false;
                chkSr.Visible = false;
                chkaTT.Text = "";
                chkTT.Text = "";
                chkaTT.Visible = true;
                chkTT.Visible = true;
                
            }
            if (chkAmtTAmt.Checked)
            {
                chkDr.Visible = false;
                chkAdr.Visible = false;
                chkAamtTamt.Visible = true;
                chkAmtTAmt.Visible = true;
                chkASar.Visible = false;
                chkSr.Visible = false;
                chkAmtTAmt.Text = "";
                chkAamtTamt.Text = "";
                chkaTT.Visible = false;
                chkTT.Visible = false;

            }
            lblAPayby.Visible = false;
            lblAaPayby.Visible = false;
            if (chkNo.Checked)
            {
                chkNo.Text = "";

                chkAchk.Text = "";
                chkNo.Visible = true;
                chkAchk.Visible = true;
                chkDebno.Visible = false;
                chkAdeb.Visible = false;
            }
            if (chkDebno.Checked)
            {
                chkDebno.Text = "";

                chkAdeb.Text = "";
                chkNo.Visible = false;
                chkAchk.Visible = false;
                chkDebno.Visible = true;
                chkAdeb.Visible = true;
            }
            lbl11.Visible = false;
            lbl12.Visible = false;
           
            lblRd.Visible = false; lbl13.Visible = false;
            lblArd.Visible = false; lbl14.Visible = false;
            lblBN.Visible = false; lbl15.Visible = false;
            lblAbn.Visible = false; lbl16.Visible = false;
            lblBB.Visible = false; lbl17.Visible = false;
            lblAbb.Visible = false; lbl18.Visible = false;
            lbl1.Visible = false; lbl19.Visible = false;
            lbl2.Visible = false; lbl20.Visible = false;
            lbl3.Visible = false; lbl21.Visible = false;
            Label35.Visible = false; lbl22.Visible = false;
            lbl4.Visible = false;
            lbl5.Visible = false;
            lbl6.Visible = false;
            lbl7.Visible = false;
            lbl8.Visible = false;
            lbl9.Visible = false;
            lbl10.Visible = false;


            lbl23.Visible = false;
            lbl24.Visible = false;
            lbl25.Visible = false;
            lbl26.Visible = false;
            lbl27.Visible = false;
            lbl28.Visible = false;
            lbl29.Visible = false;
            lbl30.Visible = false;
            lbl40.Visible = false;
            //lbl24.Visible = false;
            lbl41.Visible = false;
            lbl42.Visible = false;
            lbl43.Visible = false;
            lbl44.Visible = false;
            lbl45.Visible = false;
            lbl46.Visible = false;
            lbl47.Visible = false;
            lbl48.Visible = false;
            lbl49.Visible = false;
            lbl51.Visible = false;
            lbl52.Visible = false;
            lbl50.Visible = false;
            lbl54.Visible = false;
            lbl55.Visible = false;
            lbl53.Visible = false;
            lbl56.Visible = false;
            lbl57.Visible = false;
            lbl58.Visible = false;
            lbl59.Visible = false;
            lbl60.Visible = false;
            lbl61.Visible = false;
            lbl62.Visible = false;
            lbl63.Visible = false;
            lbl64.Visible = false;
            lbl65.Visible = false;
            lbl66.Visible = false;
            lbl67.Visible = false;
            
                if (chk1.Checked)
                {
                    chk1.Text = "";
                    chkAimp.Text = "";
                    chk1.Visible = true;
                    chkAimp.Visible = true;
                    chk2.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;

                    chkFor.Visible = false;
                    chkAother.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chkRBY.Visible = false;


                }

                //if (chk2.Checked)
                //{
                //    chk2.Text = "";
                //    chkRBY.Text = "";
                //    chk1.Visible = false;
                //    chkAimp.Visible = false;
                //    chk2.Visible = true;
                //    chkRBY.Visible = true;
                //    chk3.Visible = false;
                //    chk4.Visible = false;
                //    chk5.Visible = false;
                //    chk6.Visible = false;
                //    chk7.Visible = false;
                //    chk2For.Visible = false;
                //    chk2Other.Visible = false;
                //    chk3Non.Visible = false;
                //    chk3Soudi.Visible = false;

                //    chkFor.Visible = false;
                //    chkAother.Visible = false;
                //    chkPRI.Visible = false;
                //    chksau.Visible = false;
                //    chknonsau.Visible = false;
                //    chkAINK.Visible = false;
                //    chkMn.Visible = false;
                //    chkSg.Visible = false;
                //    chkoth.Visible = false;
                    


                //}
                if (chk2.Checked && chk2For.Checked)
                {
                    chk2For.Text = "";
                    chkFor.Text = "";
                    chk2.Text = "";
                    chkRBY.Text = "";
                    
                    chk2.Visible = true;
                    chkRBY.Visible = true;
                    
                    chk2For.Visible = true;
                    

                    chkFor.Visible = true;
                    chkAother.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;



                }
                if (chk2.Checked &&  chk2Other.Checked)
                {
                    chk2Other.Text = "";
                    chkAother.Text = "";
                    chk2.Text = "";
                    chkRBY.Text = "";
                    
                    chk2.Visible = true;
                    chkRBY.Visible = true;
                    
                    chk2Other.Visible = true;
                   
                    chkAother.Visible = true;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;
                    chkFor.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chk2For.Visible = false;


                }
                if (chk3.Checked && chk3Soudi.Checked)
                {
                    chk3Soudi.Text = "";
                    chksau.Text = "";
                    chk3.Text = "";
                    chkPRI.Text = "";
                    
                    chk3.Visible = true;
                                     
                    
                    chk3Soudi.Visible = true;
                                     
                  
                    chkPRI.Visible = true;
                    chksau.Visible = true;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk2.Visible = false;
                    chkRBY.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chkFor.Visible = false;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chkAother.Visible = false;

                }
                if (chk3.Checked && chk3Non.Checked)
                {
                    chk3Non.Text = "";
                    chknonsau.Text = "";
                    chk3.Text = "";
                    chkPRI.Text = "";

                    chk3.Visible = true;


                    chk3Non.Visible = true;

                    chknonsau.Visible = true;
                    chkPRI.Visible = true;
                    chksau.Visible = false;
                 
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk2.Visible = false;
                    chkRBY.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chkFor.Visible = false;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    
                    chkAother.Visible = false;
                    chk3Soudi.Visible = false;

                }
                if (chk4.Checked)
                {
                    chk4.Text = "";
                    chkAINK.Text = "";
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk2.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = true;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;

                    chkFor.Visible = false;
                    chkAother.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = true;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chkRBY.Visible = false;


                }
                if (chk5.Checked)
                {
                    chk5.Text = "";
                    chkMn.Text = "";
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk2.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = true;
                    chk6.Visible = false;
                    chk7.Visible = false;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;

                    chkFor.Visible = false;
                    chkAother.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = true;
                    chkSg.Visible = false;
                    chkoth.Visible = false;
                    chkRBY.Visible = false;


                }
                if (chk6.Checked)
                {
                    chk6.Text = "";
                    chkSg.Text = "";
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk2.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = true;
                    chk7.Visible = false;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;

                    chkFor.Visible = false;
                    chkAother.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = true;
                    chkoth.Visible = false;
                    chkRBY.Visible = false;


                }
                if (chk7.Checked)
                {
                    chk7.Text = "";
                    chkoth.Text = "";
                    chk1.Visible = false;
                    chkAimp.Visible = false;
                    chk2.Visible = false;
                    chk3.Visible = false;
                    chk4.Visible = false;
                    chk5.Visible = false;
                    chk6.Visible = false;
                    chk7.Visible = true;
                    chk2For.Visible = false;
                    chk2Other.Visible = false;
                    chk3Non.Visible = false;
                    chk3Soudi.Visible = false;

                    chkFor.Visible = false;
                    chkAother.Visible = false;
                    chkPRI.Visible = false;
                    chksau.Visible = false;
                    chknonsau.Visible = false;
                    chkAINK.Visible = false;
                    chkMn.Visible = false;
                    chkSg.Visible = false;
                    chkoth.Visible = true;
                    chkRBY.Visible = false;


                }

                Panel1.Visible = false;
                Panel2.Visible = false;

            
        }
        public void updt_status_print(string str)
        {
            try
            {
                cmd = new SqlCommand("upd_printStatus", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TransId", str);
                cmd.Parameters.AddWithValue("@TransType", "MONEY TRANSFER");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
            }
        }
        protected void btnprint_Click(object sender, EventArgs e)
        {
            hideCtrl();
           updt_status_print(qid);
            Session["ctrl"] = pnl1;
           
            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        }
    }
}