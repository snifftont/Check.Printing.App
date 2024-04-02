<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ChequePrint._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div id="maincontent">
            <%--<div id="page_title">
                <h2>Add User</h2>
            </div>--%>
            <div class="control">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="mainPanel" runat="server" Visible="False">
                             <table>
                           <tr><td>

                               <asp:Panel ID="incomePanel" runat="server" Visible="False">
                                   <table>
                                        <tr><td colspan="5"><h2>Income||<asp:LinkButton ID="btnlogout" runat="server" OnClick="btnlogout_Click">Logout</asp:LinkButton></h2></td></tr>
                            <tr>
                                <td><a href="Transaction.aspx?ptype=Income">
                                    <img src="image/transactions.png"  height="129" width="146" title="Income Transaction"/>
                                    </a></td>
                                <td><a href="ChequeForm.aspx?ptype=Income">
                                    <img src="image/bank_check.png" height="129" width="146" title="Income Bank Cheque" /></a></td>
                                <td><a href="#">
                                    <img src="image/cash.png" height="129" width="146" /></a></td>
                                <td><a href="Deposit.aspx?ptype=Income"</a>
                                    <img src="image/money_deposit.png" height="129" width="146" title="Income Deposit" /></a></td>
                                <td><a href="moneyTransfer.aspx?ptype=Income">
                                    <img src="image/money_transfer.png" height="129" width="146" title="Income Money Transfer" /></a></td>
                            </tr>
                                                                          </table>
                               </asp:Panel>

                               </td></tr>
                           <tr>
                               <td>
                                   <asp:Panel ID="outcomePanel"  runat="server" Visible="False">
                                       <table>
                                            <tr>
                                <td colspan="5"><h2>Outcome</h2></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><a href="Transaction.aspx?ptype=Outcome">
                                    <img src="image/transactions.png" height="129" width="146" title="Outcome Transation"/></a></td>
                                <td><a href="ChequeForm.aspx?ptype=Outcome">
                                    <img src="image/bank_check.png" height="129" width="146" title="Outcome Bank Cheque"/></a></td>
                                <td><a href="moneyTransfer.aspx?ptype=Outcome" title="Outcome Money Transfer">
                                    <img src="image/money_transfer.png" height="129" width="146"/></a></td>
                                <td></td>
                            </tr>
                                       </table>
                                   </asp:Panel>
                               </td>
                           </tr>
                        </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
