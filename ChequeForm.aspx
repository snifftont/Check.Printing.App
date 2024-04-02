<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="ChequeForm.aspx.cs" Inherits="ChequePrint.ChequeForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 301px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div id="content">
        <div id="maincontent">
            <div id="page_title">
                <h2>Cheque</h2>
            </div>
    
    
    
    
    
     <div class="control">
        
   <%-- <div>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" style="margin-bottom: 0px" Width="241px">
            <asp:ListItem>-- Income --</asp:ListItem>
            <asp:ListItem>Income Check</asp:ListItem>
         </asp:DropDownList>
   
        <asp:DropDownList ID="DropDownList2" runat="server" Height="34px" Width="263px">
            <asp:ListItem>--Outcome--</asp:ListItem>
            <asp:ListItem>Outcome Check</asp:ListItem>
         </asp:DropDownList></div>

        <div><span>Date</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>Place Of Issue</span></div>
        <div><span>
            <asp:TextBox ID="TextBox1" runat="server" Width="348px" style="margin-right: 0px"></asp:TextBox></span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <span><asp:TextBox ID="txtDate" runat="server"></asp:TextBox><asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDate" TodaysDateFormat="d MMMM, yyyy"></asp:CalendarExtender>
            </span></div>


    </div>--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <table >
        <tr>
            <td colspan ="2">
                <table>
                    <tr>
                        <td  style ="margin-right :0px;">
                            <asp:DropDownList ID="drpoutcome" runat="server" Width="50%">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>--Income--</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style ="margin-left:0px">
                            <asp:DropDownList ID="drpincome" runat="server" Width="50%">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>--Outcome--</asp:ListItem>
                            </asp:DropDownList></td>

                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Place of Issuce</td>
            <td>Date</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="txtplace" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtcal" runat="server" Width="25%"></asp:TextBox>

                <asp:CalendarExtender ID="CalendarExtender1"   PopupPosition="BottomLeft" PopupButtonID="imgcal"  TargetControlID="txtcal" runat="server"></asp:CalendarExtender>
                <%--<asp:CalendarExtender runat="server"></asp:CalendarExtender>--%>
                <asp:ImageButton ID="imgcal" runat="server" ImageUrl="~/image/calendar.png" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtplace" ForeColor="Red">Insert place of issue!</asp:RequiredFieldValidator></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcal" ForeColor="Red">Insert date!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan ="2">Pay Against This Check To The Order Of</td>

        </tr>
        <tr>
            <td colspan ="2">
                <asp:TextBox ID="txtpayagainst" runat="server" Width="100%"></asp:TextBox>
            </td>

        </tr>
        <tr><td colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Insert order of!" ControlToValidate="txtpayagainst" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
        <tr>
            <td colspan ="2">Currecny</td>
        </tr>
        <tr>
            <td colspan ="2">
                <asp:DropDownList ID="drpcurrancy" runat="server" Width="100%">
                    <asp:ListItem Value="1">SAR</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">SAR-Amount in Number</td>
            <td>Amount in Words</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox ID="txtamt" Width="75%" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="txtamtinwords" runat="server" Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Insert amount!" ControlToValidate="txtamt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtamt" ForeColor="Red" ValidationExpression="^\d+(\.\d\d)?$">Insert a valid amount!</asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Insert amount in words!" ForeColor="Red" ControlToValidate="txtamtinwords"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan ="2"> Reson of this check Payment</td>
        </tr>
        <tr>
            <td colspan ="2">
                <asp:TextBox ID="txtresonof" Width="100%" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtresonof" ForeColor="Red">Insert reason!</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan ="2">!Note:The Page Should be Printed Using The Landscape Layout*</td>
        </tr>
        <tr><td colspan ="2"><table><tr>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="SAVE TRANSACTION" Width="50%" OnClick="btnsave_Click"  /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="PRINT TRASATION" Width="50%" /></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="CLEAR FORM" Width="50%" /></td>
        </tr></table></td></tr>
    </table>
            
        </ContentTemplate>
    </asp:UpdatePanel></div></div></div>
</asp:Content>
