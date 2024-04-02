<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ChequePrint.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div id="maincontent">
            <div id="page_title">
                <h2>User Login</h2>
            </div>
            <div class="control">
                <table>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtusername" runat="server" Width="399px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Insert username!" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtpasword" runat="server" Width="399px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Insert password!" ControlToValidate="txtpasword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style1">
                        Contact the site administrator  <a href="#">admin@iei.com</a>  
                        </td>
                    </tr>
                </table>

            </div>
        </div>

    </div>
</asp:Content>
