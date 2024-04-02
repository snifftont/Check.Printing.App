<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="ChequePrint.Deposit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
     <div id="maincontent">
          <div id="page_title">
                <h2>Deposit From</h2>
            </div>
    <div class="control">

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
               
                <table>
                    <tr>
                                <td colspan="2">
                                    <table>
                                        <tr>
                                            <td style="margin-right: 0px;">
                                                <asp:DropDownList ID="drpoutcome" runat="server" Width="50%">
                                                    <asp:ListItem>--Income--</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="margin-left: 0px">
                                                <asp:DropDownList ID="drpincome" runat="server" Width="50%">
                                                    <asp:ListItem>--Outcome--</asp:ListItem>
                                                </asp:DropDownList></td>

                                        </tr>
                                    </table>
                                </td>
                            </tr>
                     <tr>
                              
                                <td>Date</td>
                           <td>Account/Credit Card/Personal Finance Number</td>
                            </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtcal" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="imgcal" src="image/calendar.png"  runat="server" />
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="imgcal" PopupPosition="BottomLeft" TargetControlID="txtcal"></asp:CalendarExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAccount" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Insert date!" ForeColor="#FF3300" ControlToValidate="txtcal"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Insert account/credit card/personal finance number!" ForeColor="Red" ControlToValidate="txtAccount"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Branch</td>
                        <td>Name</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtBranch" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Insert branch!" ForeColor="#FF3300" ControlToValidate="txtBranch"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Insert name!" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Telephone Number</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txtTelNo" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                            </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Insert telephone!" ForeColor="Red" ControlToValidate="txtTelNo"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td colspan="2"><h4><u>Depositor Information</u></h4></td>
                    </tr>
                    <tr>
                        <td>Depositor Name</td>
                        <td>Sponsor's Name</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDepoName" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="txtSpoName" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Insert depositor name!" ForeColor="#FF3300" ControlToValidate="txtDepoName"></asp:RequiredFieldValidator></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td>Sponsor's Address</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtNat" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="txtSpoAdd" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Insert nationality!" ForeColor="#FF3300" ControlToValidate="txtNat"></asp:RequiredFieldValidator></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Civil ID/Iqama</td>
                        <td>Purpose of Deposit</td>

                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtCivil" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="txtPurOfDpo" runat="server"></asp:TextBox></td>

                    </tr>
                     <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Insert civil id/iqama!" ForeColor="#FF3300" ControlToValidate="txtCivil"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Insert purpose of deposit!" ForeColor="Red" ControlToValidate="txtPurOfDpo"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Telephone</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td>
                            </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Insert telephone!" ForeColor="Red" ControlToValidate="txtTel"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td colspan ="2"><h4><u>Deposit Details</u></h4></td>

                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style2">Deposit Currency</td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <asp:DropDownList ID="drpCurrancy" runat="server" Width="30%">
                                <asp:ListItem Value="1">SAR</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Number of Checks</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:DropDownList ID="drpcheck" runat="server" Width="30%" AutoPostBack="True" OnSelectedIndexChanged="drpcheck_SelectedIndexChanged">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                          <%--  <asp:Panel ID="mainpanel" runat="server" Visible="False"  Height="295px">--%>


                                <table>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                <table>
                                                    
                                                    <tr>
                                                        <td>Amount<br />
                                                            <asp:TextBox ID="txtAmtF" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Insert check amount!" ForeColor="#FF3300" ControlToValidate="txtAmtF"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># A/c<br />
                                                            <asp:TextBox ID="txtAcF" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Insert check A/c!" ForeColor="Red" ControlToValidate="txtAcF"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td>Bank Name<br />
                                                            <asp:TextBox ID="txtBnkF" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Insert bank name!" ForeColor="Red" ControlToValidate="txtBnkF"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># Checks<br />
                                                            <asp:TextBox ID="txtChkF" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Insert check no!" ForeColor="Red" ControlToValidate="txtChkF"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                   
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>



                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                                                <table>
                                                   
                                                    <tr>
                                                        <td>Amount<br />
                                                            <asp:TextBox ID="txtAmtS" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Insert check amount!" ForeColor="#FF3300" ControlToValidate="txtAmtS"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># A/c<br />
                                                            <asp:TextBox ID="txtAcS" runat="server"></asp:TextBox>
                                                            <br />
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Insert check A/c!" ForeColor="Red" ControlToValidate="txtAcS"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td>Bank Name<br />
                                                            <asp:TextBox ID="txtBnkS" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Insert bank name!" ForeColor="Red" ControlToValidate="txtBnkS"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># Checks<br />
                                                            <asp:TextBox ID="txtChkS" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Insert check no!" ForeColor="Red" ControlToValidate="txtChkS"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td >
                                            <asp:Panel ID="Panel3" runat="server" Visible="False">
                                                <table>
                                                    <%--<tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td>Amount<br />
                                                            <asp:TextBox ID="txtAmtT" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Insert check amount!" ForeColor="#FF3300" ControlToValidate="txtAmtT"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># A/c<br />
                                                            <asp:TextBox ID="txtAcT" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Insert check A/c!" ForeColor="Red" ControlToValidate="txtAcT"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td>Bank Name<br />
                                                            <asp:TextBox ID="txtBnkT" runat="server"></asp:TextBox>
                                                            <br />
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Insert bank name!" ForeColor="Red" ControlToValidate="txtBnkT"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># Checks<br />
                                                            <asp:TextBox ID="txtChkT" runat="server"></asp:TextBox>
                                                            <br />
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Insert check no!" ForeColor="Red" ControlToValidate="txtChkT"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel4" runat="server" Visible="False">
                                                <table>
                                                   <%-- <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td>Amount<br />
                                                            <asp:TextBox ID="txtAmtFt" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Insert check amount!" ForeColor="#FF3300" ControlToValidate="txtAmtFt"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># A/c<br />
                                                            <asp:TextBox ID="txtAcFt" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Insert check A/c!" ForeColor="Red" ControlToValidate="txtAcFt"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td>Bank Name<br />
                                                            <asp:TextBox ID="txtBnkFt" runat="server"></asp:TextBox>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="Insert bank name!" ForeColor="Red" ControlToValidate="txtBnkFt"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <td># Checks<br />
                                                            <asp:TextBox ID="txtChkFt" runat="server"></asp:TextBox>
                                                            <br />
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Insert check no!" ForeColor="Red" ControlToValidate="txtChkFt"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                   
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </table>


                            <%--</asp:Panel>--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan ="2">Number of Cash Deposits</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:DropDownList ID="drpcash" runat="server" Width="30%" OnSelectedIndexChanged="drpcash_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>


                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="mainpanelcash" runat="server" Visible="False">

                                <table>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel5" runat="server" Visible="False">
                                                <table>
                                                    <tr>
                                                        <td>Amount</td>
                                                        <td>Cash - Choose Source of Cash Deposit</td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtamt1" runat="server"></asp:TextBox></td>
                                                        <td>
                                                            <asp:DropDownList ID="drpchoosecash1" runat="server" Width="30%">
                                                                <asp:ListItem>Please Select</asp:ListItem>
                                                                <asp:ListItem>Rental Income</asp:ListItem>
                                                                <asp:ListItem>Sale Of Property</asp:ListItem>
                                                                <asp:ListItem>From Own Bank Account</asp:ListItem>
                                                                <asp:ListItem>Trading/Business</asp:ListItem>
                                                                <asp:ListItem>Loan</asp:ListItem>
                                                                <asp:ListItem>Gift</asp:ListItem>
                                                                <asp:ListItem>Sallary &amp; Wages &amp; Allowance</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="Insert cash amount!" ForeColor="#FF3300" ControlToValidate="txtamt1"></asp:RequiredFieldValidator></td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="Insert cash source!" ForeColor="Red" ControlToValidate="drpchoosecash1"></asp:RequiredFieldValidator></td>
                                                        
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                             <asp:Panel ID="Panel6" runat="server" Visible="False">
                                                <table>
                                                    <tr>
                                                        <td>Amount</td>
                                                        <td>Cash - Choose Source of Cash Deposit</td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtamt2" runat="server"></asp:TextBox></td>
                                                        <td>
                                                            <asp:DropDownList ID="drpchoosecash2" runat="server" Width="30%">
                                                                <asp:ListItem>Please Select</asp:ListItem>
                                                                <asp:ListItem>Rental Income</asp:ListItem>
                                                                <asp:ListItem>Sale Of Property</asp:ListItem>
                                                                <asp:ListItem>From Own Bank Account</asp:ListItem>
                                                                <asp:ListItem>Trading/Business</asp:ListItem>
                                                                <asp:ListItem>Loan</asp:ListItem>
                                                                <asp:ListItem>Gift</asp:ListItem>
                                                                <asp:ListItem>Sallary &amp; Wages &amp; Allowance</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ErrorMessage="Insert cash amount!" ForeColor="#FF3300" ControlToValidate="txtamt2"></asp:RequiredFieldValidator></td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ErrorMessage="Insert cash source!" ForeColor="Red" ControlToValidate="drpchoosecash2"></asp:RequiredFieldValidator></td>
                                                        
                                                    </tr>
                                                </table>
                                            </asp:Panel>

                                             <asp:Panel ID="Panel7" runat="server" Visible="False">
                                                <table>
                                                    <tr>
                                                        <td>Amount</td>
                                                        <td>Cash - Choose Source of Cash Deposit</td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtamt3" runat="server"></asp:TextBox></td>
                                                        <td>
                                                            <asp:DropDownList ID="drpchoosecash3" runat="server" Width="30%">
                                                                <asp:ListItem>Please Select</asp:ListItem>
                                                                <asp:ListItem>Rental Income</asp:ListItem>
                                                                <asp:ListItem>Sale Of Property</asp:ListItem>
                                                                <asp:ListItem>From Own Bank Account</asp:ListItem>
                                                                <asp:ListItem>Trading/Business</asp:ListItem>
                                                                <asp:ListItem>Loan</asp:ListItem>
                                                                <asp:ListItem>Gift</asp:ListItem>
                                                                <asp:ListItem>Sallary &amp; Wages &amp; Allowance</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="Insert cash amount!" ForeColor="#FF3300" ControlToValidate="txtamt3"></asp:RequiredFieldValidator></td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage="Insert cash source!" ForeColor="Red" ControlToValidate="drpchoosecash3"></asp:RequiredFieldValidator></td>
                                                        
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                             <asp:Panel ID="Panel8" runat="server" Visible="False">
                                                <table>
                                                    <tr>
                                                        <td>Amount</td>
                                                        <td>Cash - Choose Source of Cash Deposit</td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtamt4" runat="server"></asp:TextBox></td>
                                                        <td>
                                                            <asp:DropDownList ID="drpchoosecash4" runat="server" Width="30%">
                                                                <asp:ListItem>Please Select</asp:ListItem>
                                                                <asp:ListItem>Rental Income</asp:ListItem>
                                                                <asp:ListItem>Sale Of Property</asp:ListItem>
                                                                <asp:ListItem>From Own Bank Account</asp:ListItem>
                                                                <asp:ListItem>Trading/Business</asp:ListItem>
                                                                <asp:ListItem>Loan</asp:ListItem>
                                                                <asp:ListItem>Gift</asp:ListItem>
                                                                <asp:ListItem>Sallary &amp; Wages &amp; Allowance</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage="Insert cash amount!" ForeColor="#FF3300" ControlToValidate="txtamt4"></asp:RequiredFieldValidator></td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage="Insert cash source!" ForeColor="Red" ControlToValidate="drpchoosecash4"></asp:RequiredFieldValidator></td>
                                                        
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                        </td>
                    </tr>
                    <tr>
                        <td>Total Amount</td>
                        <td>Amount in Words</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtTotalAmt" runat="server" OnTextChanged="txtTotalAmt_TextChanged"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="txtAmtInWords" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="Insert total amount!" ForeColor="#FF3300" ControlToValidate="txtTotalAmt"></asp:RequiredFieldValidator></td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage="nsert amount in words!" ForeColor="Red" ControlToValidate="txtAmtInWords"></asp:RequiredFieldValidator></td>
                                                        
                                                    </tr>
                    <tr>
                        <td colspan ="2">!Note: the page should be printed using the Landscape Layout*</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnsave" runat="server" Text="SAVE TRANSACTION" OnClick="btnsave_Click"  /></td>
                                    <td>
                                        <asp:Button ID="btnprnt" runat="server" Text="PRINT TRANSACTION" OnClick="btnprnt_Click" /></td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="CLEAR FORM" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                   

            </ContentTemplate>

            
        </asp:UpdatePanel>






    </div></div></div>

</asp:Content>
