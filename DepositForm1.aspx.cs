using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.IO;

namespace ChequePrint
{
            public partial class DepositForm1 : System.Web.UI.Page
             {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
                string id;
                        protected void Page_Load(object sender, EventArgs e)
                        {
                            id = Request.QueryString["printid"];
                            GetValue(id);
                            GetDepositDetailInfo(id);
                            CashChooseInfo(id);
                            //id = Request.QueryString["17"];
                            //GetValue("17");
                            //GetDepositDetailInfo("17");
                            //CashChooseInfo("17");


                        }

                        public static void PrintWebControl(Control ctrl)
                        {
                            PrintWebControl(ctrl, string.Empty);
                        }


                        public static void PrintWebControl(Control ctrl, string Script)
                        {
                            StringWriter stringWrite = new StringWriter();
                            System.Web.UI.HtmlTextWriter htmlWrite = new System.Web.UI.HtmlTextWriter(stringWrite);
                            if (ctrl is WebControl)
                            {
                                Unit w = new Unit(100, UnitType.Percentage); ((WebControl)ctrl).Width = w;
                            }
                            Page pg = new Page();
                            pg.EnableEventValidation = false;
                            if (Script != string.Empty)
                            {
                                pg.ClientScript.RegisterStartupScript(pg.GetType(), "PrintJavaScript", Script);
                            }
                            HtmlForm frm = new HtmlForm();
                            pg.Controls.Add(frm);
                            frm.Attributes.Add("runat", "server");
                            frm.Controls.Add(ctrl);
                            pg.DesignerInitialize();
                            pg.RenderControl(htmlWrite);
                            string strHTML = stringWrite.ToString();
                            HttpContext.Current.Response.Clear();
                            HttpContext.Current.Response.Write(strHTML);
                            HttpContext.Current.Response.Write("<script>window.print();</script>");
                            HttpContext.Current.Response.End();
                        }


                        protected void GetValue( string str)
                        {
                            SqlCommand cmd = new SqlCommand("getdata", con);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@id", str);
                            con.Open();
                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.Read())
                            {
                                lblDate.Text = datefor(reader["DateDeposit"].ToString());
                                lblName.Text = reader["Name"].ToString();
                                lblTNo.Text = reader["TelephoneNumber"].ToString();
                                lblDName.Text = reader["DepositorName"].ToString();
                                lblNtn.Text = reader["Nationality"].ToString();
                                lblCv.Text = reader["CivilIdIqama"].ToString();
                                lblPD.Text = reader["PurposeOfDeposit"].ToString();
                                lblTel.Text = reader["Telephone"].ToString();
                                lblAmWrd.Text = reader["AmountInWords"].ToString();
                                lblBranch.Text = reader["Branch"].ToString();
                                lblTAmt.Text = reader["TotalAmount"].ToString();

                                lblSpsName.Text = reader["SponsorName"].ToString();


                            }
                            con.Close();

                        }


                public void GetDepositDetailInfo(string str)
                {
                    SqlCommand cmd1 = new SqlCommand("GetDepositDetail", con);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@id", str);
                    con.Open();
                    DataSet ds = new DataSet("depositDetail");
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    da.Fill(ds);
                    con.Close();

                    //SqlCommand cmd3 = new SqlCommand("pCountDeposits", con);
                    //cmd3.CommandType = CommandType.StoredProcedure;
                    //cmd3.Parameters.AddWithValue("@id", str);
                    //con.Open();
                    //SqlDataReader rd = cmd3.ExecuteReader();
                    //if (rd.Read())
                    //{
                        //int totalCount = Convert.ToInt32(rd["count"]);

                        //if(ds.Tables[0].Rows.Count>0)
                    int totalCount = getCountChecks(str);
                        switch (totalCount)
                        {
                            case 1:
                                lblChk1.Text = ds.Tables[0].Rows[0][0].ToString();
                                lblBank1.Text = ds.Tables[0].Rows[0][1].ToString();
                                lblAc1.Text = ds.Tables[0].Rows[0][2].ToString();
                                lblAmt1.Text = ds.Tables[0].Rows[0][3].ToString();
                                break;
                            case 2:
                                lblChk1.Text = ds.Tables[0].Rows[0][0].ToString();
                                lblBank1.Text = ds.Tables[0].Rows[0][1].ToString();
                                lblAc1.Text = ds.Tables[0].Rows[0][2].ToString();
                                lblAmt1.Text = ds.Tables[0].Rows[0][3].ToString();
                                lblChk2.Text = ds.Tables[0].Rows[1][0].ToString();
                                lblBank2.Text = ds.Tables[0].Rows[1][1].ToString();
                                lblAc2.Text = ds.Tables[0].Rows[1][2].ToString();
                                lblAmt2.Text = ds.Tables[0].Rows[1][3].ToString();
                                break;
                            case 3:
                                lblChk1.Text = ds.Tables[0].Rows[0][0].ToString();
                                lblBank1.Text = ds.Tables[0].Rows[0][1].ToString();
                                lblAc1.Text = ds.Tables[0].Rows[0][2].ToString();
                                lblAmt1.Text = ds.Tables[0].Rows[0][3].ToString();
                                lblChk2.Text = ds.Tables[0].Rows[1][0].ToString();
                                lblBank2.Text = ds.Tables[0].Rows[1][1].ToString();
                                lblAc2.Text = ds.Tables[0].Rows[1][2].ToString();
                                lblAmt2.Text = ds.Tables[0].Rows[1][3].ToString();
                                lblChk3.Text = ds.Tables[0].Rows[2][0].ToString();
                                lblBank3.Text = ds.Tables[0].Rows[2][1].ToString();
                                lblAc3.Text = ds.Tables[0].Rows[2][2].ToString();
                                lblAmt3.Text = ds.Tables[0].Rows[2][3].ToString();
                                break;
                            case 4:
                                lblChk1.Text = ds.Tables[0].Rows[0][0].ToString();
                                lblBank1.Text = ds.Tables[0].Rows[0][1].ToString();
                                lblAc1.Text = ds.Tables[0].Rows[0][2].ToString();
                                lblAmt1.Text = ds.Tables[0].Rows[0][3].ToString();
                                lblChk2.Text = ds.Tables[0].Rows[1][0].ToString();
                                lblBank2.Text = ds.Tables[0].Rows[1][1].ToString();
                                lblAc2.Text = ds.Tables[0].Rows[1][2].ToString();
                                lblAmt2.Text = ds.Tables[0].Rows[1][3].ToString();
                                lblChk3.Text = ds.Tables[0].Rows[2][0].ToString();
                                lblBank3.Text = ds.Tables[0].Rows[2][1].ToString();
                                lblAc3.Text = ds.Tables[0].Rows[2][2].ToString();
                                lblAmt3.Text = ds.Tables[0].Rows[2][3].ToString();
                                lblChk4.Text = ds.Tables[0].Rows[3][0].ToString();
                                lblBank4.Text = ds.Tables[0].Rows[3][1].ToString();
                                lblAc4.Text = ds.Tables[0].Rows[3][2].ToString();
                                lblAmt4.Text = ds.Tables[0].Rows[3][3].ToString();
                                break;
                        }
                    //}
                    con.Close();
                }

                    protected void CashChooseInfo(string str)
                    {

                        SqlCommand cmd2 = new SqlCommand("GetCashChooseInfo", con);
                        cmd2.CommandType = CommandType.StoredProcedure;
                        cmd2.Parameters.AddWithValue("@id", str);
                        con.Open();
                        //SqlDataReader dr2 = cmd2.ExecuteReader();
                        DataSet ds1 = new DataSet();
                        SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
                        da1.Fill(ds1);
                        con.Close();
                        //SqlCommand cmd3 = new SqlCommand("pCountDeposits", con);
                        //cmd3.CommandType = CommandType.StoredProcedure;
                        //cmd3.Parameters.AddWithValue("@id", str);
                        //con.Open();
                        //SqlDataReader rd = cmd3.ExecuteReader();
                        //if (rd.Read())
                        //{
                        //    int totalCount = Convert.ToInt32(rd["count"]);

                        int totalCount = getCountDeposits(str);
                        if (totalCount > 0)
                        {
                            for (int i = 0; i < totalCount; i++)
                            {
                                string cashChoose = ds1.Tables[0].Rows[i][0].ToString();
                                if (cashChoose == "Rental Income")
                                {
                                    lblRen.Text = ds1.Tables[0].Rows[i][1].ToString();
                                   // lblAmt5.Text = lblRen.Text;
                                }
                                if (cashChoose == "Sale Of Property")
                                {
                                    lblSpr.Text = ds1.Tables[0].Rows[i][1].ToString();
                                    //lblAmt6.Text = lblSpr.Text;
                                }
                                if (cashChoose == "From Own Bank Account")
                                {
                                    lblOwmBnkAc.Text = ds1.Tables[0].Rows[i][1].ToString();
                                    //lblAmt7.Text = lblOwmBnkAc.Text;
                                }
                                if (cashChoose == "Trading/Business")
                                {
                                    lblTrBs.Text = ds1.Tables[0].Rows[i][1].ToString();
                                    //lblAmt8.Text = lblTrBs.Text;
                                }
                                if (cashChoose == "Loan")
                                {
                                    lblLoan.Text = ds1.Tables[0].Rows[i][1].ToString();
                                   // lblAmt9.Text = lblLoan.Text;
                                }
                                if (cashChoose == "Gift")
                                {
                                    lblGift.Text = ds1.Tables[0].Rows[i][1].ToString();
                                    //lblAmt10.Text = lblGift.Text;
                                }
                                if (cashChoose == "Sallary & Wages & Allowance")
                                {
                                    lblsalary.Text = ds1.Tables[0].Rows[i][1].ToString();
                                   // lblAmt11.Text = lblsalary.Text;
                                }
                                if (cashChoose == "Others")
                                {
                                    lblOthers.Text = ds1.Tables[0].Rows[i][1].ToString();
                                   // lblAmt12.Text = lblOthers.Text;
                                }
                            }
                            con.Close();
                        }
                    }


                    protected void hideControls()
                    {
           
                        Label2.Visible = false;
                        Label7.Visible = false;
                        Label9.Visible = false;
                        Label11.Visible = false;
                        Label13.Visible = false;
                        Label14.Visible = false;
                        Label16.Visible = false;
                        Label18.Visible = false;
                        Label20.Visible = false;
                        Label22.Visible = false;
                        Label28.Visible = false;
                        Label26.Visible = false;
                        Label24.Visible = false;
                        Label5.Visible = false;
                        Label29.Visible = false;
                        Label30.Visible = false;
                        Label31.Visible = false;
                        Label44.Visible = false;
                        Label45.Visible = false;
                        Label46.Visible = false;
                        Label48.Visible = false;
                        Label50.Visible = false;
                        Label52.Visible = false;
                        Label54.Visible = false;
                        Label56.Visible = false;
                        Label58.Visible = false;
                        Label60.Visible = false;
                        Label65.Visible = false;
                        Label1.Visible = false;
                        Label64.Visible = false;
                        Label67.Visible = false;
                        Label68.Visible = false;
                        Label74.Visible = false;
                        Label71.Visible = false;
                        Label75.Visible = false;
                        Label78.Visible = false;
                        Label79.Visible = false;
                        Label82.Visible = false;
                        Label83.Visible = false;
                        Label86.Visible = false;
                        Label87.Visible = false;
                        Label90.Visible = false;
                        Label91.Visible = false;
                        Label94.Visible = false;
                        Label95.Visible = false;
                        Label98.Visible = false;
                        Label99.Visible = false;
                        Label102.Visible = false;
                        Label106.Visible = false;
                        Label110.Visible = false;
           
                    }

                        public string datefor(string str)
                        {
                            DateTime dt = Convert.ToDateTime(str);

                            return dt.ToString("dd.MM.yyyy");
                        }
                        public void updt_status_print(string str)
                        {
                            try
                            {
                                SqlCommand cmd = new SqlCommand("upd_printStatus", con);
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@TransId", str);
                                cmd.Parameters.AddWithValue("@TransType", "DEPOSIT");
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                            catch
                            {
                            }
                        }

                        protected void Button1_Click(object sender, EventArgs e)
                        {
                            //GetValue();
                            //GetDepositDetailInfo();
                            //CashChooseInfo();
                        }

                        protected void btnPrint_Click(object sender, EventArgs e)
                        {
                            hideControls();


                            updt_status_print(id);
                            
                            
                            Session["ctrl"] = pnl1;
                            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
                        }
                        public int getCountDeposits(string str)
                        {
                            int totalCount = 0;
                            SqlCommand cmd3 = new SqlCommand("pCountDeposits", con);
                            cmd3.CommandType = CommandType.StoredProcedure;
                            cmd3.Parameters.AddWithValue("@id", str);
                            con.Open();
                            SqlDataReader rd = cmd3.ExecuteReader();
                           
                            if (rd.Read())
                            {
                                totalCount = Convert.ToInt32(rd["count"]);
                            }
                            return totalCount;
                          

                        }
                    public int getCountChecks(string str)
                    {
                        int tCount = 0;
                        SqlCommand cmd4 = new SqlCommand("pCountChecks", con);
                        cmd4.CommandType = CommandType.StoredProcedure;
                        cmd4.Parameters.AddWithValue("@id", str);
                        con.Open();
                        SqlDataReader rd1 = cmd4.ExecuteReader();
                     
                        if (rd1.Read())
                        {
                            tCount = Convert.ToInt32(rd1["count"]);
                        }
                        return tCount;

                      
                    }
                    

    }
}


