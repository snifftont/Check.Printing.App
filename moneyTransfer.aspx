<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="moneyTransfer.aspx.cs" Inherits="ChequePrint.moneyTransfer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function MutExChkList(chk) {

            var chkList = chk.parentNode.parentNode.parentNode;

            var chks = chkList.getElementsByTagName("input");

            for (var i = 0; i < chks.length; i++) {

                if (chks[i] != chk && chk.checked) {

                    chks[i].checked = false;

                }

            }

        }
    </script>
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
                <h2>Money Transfer</h2>
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
                                <td>Branch</td>
                                <td>Date</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:TextBox ID="txtBranch" runat="server" Width="100%"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDte" runat="server" Width="90%"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgcal" TargetControlID="txtDte" PopupPosition="BottomRight" runat="server"></asp:CalendarExtender>
                                    <asp:ImageButton ID="imgcal" runat="server" ImageUrl="~/image/calendar.png" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Insert branch!" ControlToValidate="txtBranch" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Insert date!" ControlToValidate="txtDte" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>Amount</td>
                                <td>Currecny</td>

                            </tr>

                            <tr>
                                <td>
                                    <asp:TextBox ID="txtAmt" runat="server" Width="100%"></asp:TextBox></td>
                                <td>
                                    <asp:DropDownList ID="drpCurr" runat="server" Width="50%">
                                        <asp:ListItem Value="1">SAR</asp:ListItem>
                                    </asp:DropDownList></td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Insert amount!" ForeColor="Red" ControlToValidate="txtAmt"></asp:RequiredFieldValidator><br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Insert a valid amount!" ControlToValidate="txtAmt" ForeColor="Red" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="2">Amount In Words</td>
                            </tr>
                            <tr>
                                <td colspan="2">

                                    <asp:TextBox ID="txtAmtInWords" Width="100%" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr><td colspan ="2">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Insert amount in words" ControlToValidate="txtAmtInWords" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <h4><u>Please Issue</u></h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBoxList ID="chkPlzIss" runat="server">
                                                    <asp:ListItem  onclick = "MutExChkList(this);">Sarie</asp:ListItem>
                                                    <asp:ListItem  onclick = "MutExChkList(this);">Darft</asp:ListItem>
                                                    <asp:ListItem  onclick = "MutExChkList(this);">Telex Transfer</asp:ListItem>
                                                    <asp:ListItem  onclick = "MutExChkList(this);">Account to Account Transfer</asp:ListItem>
                                                </asp:CheckBoxList>



                                                <%--<asp:CheckBox ID="CheckBox3" runat="server" Text="Sarie" /></td>--%>
                                        </tr>
                                       <%-- <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox4" runat="server" Text="Darft" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox5" runat="server" Text="Telex Transfer" /></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox6" runat="server" Text="Account to Account Transfer" /></td>
                                        </tr>--%>
                                    </table>




                                </td>

                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <h4><u>Against Payment By</u></h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>


                                                <asp:CheckBoxList ID="chkAgstPay" runat="server">
                                                    <asp:ListItem onclick = "MutExChkList(this);">Check</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Debit Account</asp:ListItem>
                                                </asp:CheckBoxList>
                                                </td>
                                                <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Check" /></td>--%>

                                        </tr>
                                       <%-- <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Debit Account" OnCheckedChanged="CheckBox2_CheckedChanged" /></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                        </tr>--%>
                                    </table>
                                </td>





                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h4><u>Remittance Details</u></h4>
                                </td>
                            </tr>

                            <tr>

                                <td>Beneficiary's Bank</td>
                                <td>Beneficiary's Name</td>
                            </tr>

                            <tr>

                                <td>
                                    <asp:TextBox ID="txtBenBank" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtBenName" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Insert beneficiary's bank!" ControlToValidate="txtBenBank" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Insert beneficiary's name!" ControlToValidate="txtBenName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>

                                <td>Beneficiary's IBAN</td>
                                <td>Telephone Number</td>
                            </tr>

                            <tr>

                                <td>
                                    <asp:TextBox ID="txtIban" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtTeleNo" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Insert beneficiary's IBAN!" ControlToValidate="txtIban" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Insert beneficiary's telephone number!" ControlToValidate="txtspTelNo" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>

                                <td>Bank's Address</td>
                                <td>Address</td>
                            </tr>

                            <tr>

                                <td>
                                    <asp:TextBox ID="txtBankAdd" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtAdd" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Insert bank's address!" ControlToValidate="txtBankAdd" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Insert beneficiary's address!" ControlToValidate="txtAdd" ForeColor="Red"></asp:RequiredFieldValidator></td>

                            </tr>
                            <tr>

                                <td>Bank's City</td>
                                <td>Zipcode</td>
                            </tr>

                            <tr>

                                <td>
                                    <asp:TextBox ID="txtBankCity" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Insert bank's city!" ControlToValidate="txtBankCity" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Insert beneficiary's zipcode!" ControlToValidate="txtZip" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>Bank's Country</td>
                                <td>City</td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtBankCnt" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Insert bank's country!" ControlToValidate="txtBankCnt" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Insert beneficiary's city!" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>Country</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="txtCnt" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr><td></td>
                                <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Insert beneficiary's country!" ControlToValidate="txtCnt" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                            
                            <tr>
                                <td></td>
                                <td>State</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Insert beneficiary's state!" ControlToValidate="txtState" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td colspan="2">Other Details</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:TextBox ID="txtOtherDet" runat="server" Width="100%"></asp:TextBox></td>
                            </tr>
                            <tr>

                                <td>Remitter's Name</td>
                                <td>Remitter's Telephone Number</td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:TextBox ID="txtRemName" runat="server" Height="22px"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtRemTNo" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Insert remitter's name!" ForeColor="Red" ControlToValidate="txtRemName"></asp:RequiredFieldValidator></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Insert remitter's telephone number!" ControlToValidate="txtRemTNo" ForeColor="Red"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="chkremitter" runat="server" Text="Remitter is other than the Account holder" Font-Bold="True" AutoPostBack="True" OnCheckedChanged="chkremitter_CheckedChanged" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">

                                    <asp:Panel ID="Panel1" runat="server" Visible="False">

                                        <table>
                                            <tr>
                                                <td class="auto-style2">Remitter's Name</td>
                                                <td>Date of Issuance</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                    <asp:TextBox ID="txtRemCName" runat="server" Width="100%"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDtIs" runat="server" Width="25%"></asp:TextBox>
                                                    <asp:CalendarExtender ID="CalendarExtender2" PopupPosition="BottomLeft" PopupButtonID="ImageButton1" TargetControlID="txtDtIs" runat="server"></asp:CalendarExtender>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/calendar.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Insert remitter's name!" ControlToValidate="txtRemCName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Insert date!" ControlToValidate="txtDtIs" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td>Remitter's ID</td>
                                                <td>Place of Issuance</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtRemID" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="txtPlIss" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Insert remitter's ID!" ControlToValidate="txtRemID" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                                <td class="auto-style2">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Insert place of issuance!" ControlToValidate="txtPlIss" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">Remitter's Address</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:TextBox ID="txtRemAdd" Width="100%" runat="server"></asp:TextBox></td>

                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Insert remitter's address!" ControlToValidate="txtRemAdd" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td>Sponsor's Name</td>
                                                <td>Sponsor's Telephone Number</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtSpName" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="txtspTelNo" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Insert sponsor's name!" ControlToValidate="txtSpName" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Insert sponsor's telephone!" ControlToValidate="txtspTelNo" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">Sponsor's Address</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:TextBox ID="txtSpnAdd" Width="100%" runat="server"></asp:TextBox></td>

                                            </tr>
                                            <tr><td colspan="2">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Insert Sponsor's address!" ControlToValidate="txtSpnAdd" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                                        </table>



                                    </asp:Panel>



                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h4><u>Purpose of Remittance - This information is for statistical purpose only</u></h4>




                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table>
                                        <tr>
                                            <td>

                                                <asp:CheckBoxList ID="chkPurOfRmt" runat="server" AutoPostBack="True" ValidationGroup="p">
                                                    <asp:ListItem onclick = "MutExChkList(this);">Import Finance Payment</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Remitance by Foreign Firms - For Imports</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Remitance by Foreign Firms - For Other Purposes</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Personal Remittances by Individuals - Saudi</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Personal Remittances by Individuals - Non-Saudi</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Investments Outside The Kingdom</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Sales To Money Chargers</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Sales To Goverment Agencies</asp:ListItem>
                                                    <asp:ListItem onclick = "MutExChkList(this);">Others</asp:ListItem>
                                                </asp:CheckBoxList>




                                                <%--<asp:CheckBox ID="CheckBox7" runat="server" Text="Import Finance Payment" AutoPostBack="True" ValidationGroup="purpose" /></td>--%>

                                        </tr>
                                        <%--<tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox8" runat="server" Text="Remitance by Foreign Firms - For Imports" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox9" runat="server" Text="Remitance by Foreign Firms - For Other Purposes" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox10" runat="server" Text="Personal Remittances by Individuals - Saudi" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox11" runat="server" Text="Personal Remittances by Individuals - Non-Saudi" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox12" runat="server" Text="Investments Outside The Kingdom" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox13" runat="server" Text="Sales To Money Chargers" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox14" runat="server" Text="Sales To Goverment Agencies" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox15" runat="server" Text="Others" AutoPostBack="True" ValidationGroup="purpose" /></td>

                                        </tr>--%>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">!Note: the page should be printed using the Portrait Layout*

                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">

                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnSave" runat="server" Text="SAVE TRANSACTION" OnClick="Button1_Click" />

                                            </td>
                                            <td>
                                                <asp:Button ID="btnPrint" runat="server" Text="PRINT TRANSACTION" OnClick="btnPrint_Click" />
                                            </td>
                                            <td>
                                                <asp:Button ID="btnClr" runat="server" Text="CLEAR FORM" /></td>

                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>

</asp:Content>
