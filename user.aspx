<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="ChequePrint.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div id="maincontent">
            <div id="page_title">
                <h2>Add User</h2>
            </div>
            <div class="control">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table>
            <tr>
                <td colspan="2">
                    <table>
                        <tr>

                            <td>
                                <asp:ImageButton ID="ImageButton2" src="image/btn_edit.png" runat="server" />
                                <asp:ImageButton ID="ImageButton1" src="image/btn_add.png" runat="server" /></td>
                            
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>Username</td>
                
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="insert Username!" ControlToValidate ="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
            <tr>
                <td>User Type</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="drpusertpye" runat="server" Width="15%">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="insert User Type!" ControlToValidate ="drpusertpye" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
            <tr>
                <td>Full Name</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox></td>
            </tr>
         <tr><td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Insert Full Name!" ControlToValidate ="txtFullName" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
               <tr><td>Phone Number</td></tr>
               <tr><td>
                   <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td></tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="insert Phone Number!" ControlToValidate ="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Insert a valid phone number!" ControlToValidate="txtPhone" ForeColor="Red" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ></asp:RegularExpressionValidator>
                </td></tr>
               <tr><td>Email Address</td></tr>
             <tr><td>
                 <asp:TextBox ID="txtxEmail" runat="server"></asp:TextBox></td></tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="insert Email!" ControlToValidate ="txtxEmail" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Insert a valid email address!" ForeColor="Red" ControlToValidate="txtxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td></tr>
             <%--<tr><td>Balance</td></tr>
             <tr><td>
                 <asp:TextBox ID="txtbalance" runat="server"></asp:TextBox></td></tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="insert balance!" ControlToValidate="txtbalance" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Insert a valid amount!" ControlToValidate="txtbalance" ForeColor="Red" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
                </td></tr>--%>
             <tr><td>Password</td></tr>
             <tr><td>
                 <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td></tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Insert password!" ControlToValidate ="txtPass" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
             <tr><td>Confirm Password</td></tr>
             <tr><td>
                 <asp:TextBox ID="txtConfPass" runat="server" TextMode="Password"></asp:TextBox></td></tr>
            <tr><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm password!" ControlToValidate ="txtConfPass" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords mismatch!" ControlToCompare="txtPass" ControlToValidate="txtConfPass" ForeColor="Red"></asp:CompareValidator>

                </td></tr>
            <tr><td>Permissions</td></tr>
             <tr><td>
                 <asp:CheckBox ID="chkIncome" runat="server" Text="Income Permission" /></td></tr>
             <tr><td>
                 <asp:CheckBox ID="Chkoutcome" runat="server" Text="Outcome Permission" /></td></tr>
            <caption>
                <hr />
                <tr>
                    <td>
                        <asp:Button ID="btnsave" runat="server" Text="ADD USER" OnClick="btnsave_Click" />
                    </td>
                </tr>
            </caption>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>











                
                </div></div>
        </div>
</asp:Content>
