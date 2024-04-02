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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CheckPrintConnection"].ConnectionString);
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                id = Request.QueryString["printid"];
                GetValue(id);
            }
            catch
            {
            }

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
            SqlCommand cmd = new SqlCommand("GetChequeValue", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ChequeID", str);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblDate.Text = datefor(reader["DateCheque"].ToString());
                lblPlace.Text = reader["PlaceOfIssue"].ToString();
                lblAmt.Text = reader["SARAmount"].ToString();
                lblPayAgnstChk.Text = reader["PayAgainstThisCheque"].ToString();
                lblAmtWords.Text = reader["AmountInWords"].ToString();
            }
            con.Close();

        }
        protected void hideControl()
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label4.Visible = false;
            Label6.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label17.Visible = false;
            Label16.Visible = false;
            Label14.Visible = false;
            Label11.Visible = false;
            Label7.Visible = false;
            Image1.Visible = false;
            Image2.Visible = false;
        }
        public string datefor(string str)
        {
            DateTime dt = Convert.ToDateTime(str);

            return dt.ToString("dd.MM.yyyy");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //GetValue();
        }
        public void updt_status_print(string str)
        {
            SqlCommand cmd = new SqlCommand("upd_printStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TransId", str);
            cmd.Parameters.AddWithValue("@TransType", "BANCK CHEQUE");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
         //   hideControl();
            updt_status_print(id);
            Session["ctrl"] = pnl1;
            ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('Print.aspx','PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        }






    }
}