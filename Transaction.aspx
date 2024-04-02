<%@ Page Title="" Language="C#" MasterPageFile="~/Cheque.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="ChequePrint.Transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div id="content">
        <div id="maincontent">
            <div id="page_title">
               
                  <h2> <asp:Label ID="lblpage" runat="server" Text=""></asp:Label> Transaction</h2>
            </div>
    
    
    
    
    
     <div class="control">
         <table>
             <tr>
                 
                 <td style ="text-align :left">
                     <asp:Label ID="lblBln" runat="server" Text=""></asp:Label></td>
                 <td style ="text-align :right;">
                     <asp:Label ID="Label1" runat="server" Text="Main Balance" ForeColor="#009900"></asp:Label></td>
             </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="TRANSACTION DETAILS">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" Text="SHOW DETAILS" />
                                        </ItemTemplate>
                                       
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PRINT STATUS">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chk" runat="server"  Checked='<%# Eval("StatusPrint").ToString().Equals("printed")  %>' />
                                        </ItemTemplate>
                                        <HeaderStyle ForeColor="#009900" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="dateTrans" HeaderText="TRANSACTION DATE" >
                                    <HeaderStyle ForeColor="#009900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TransType" HeaderText="TRANSACTION TYPE" >
                                    <HeaderStyle ForeColor="#009900" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="StatusID" HeaderText="TRANSACTION ID" >
                                    <HeaderStyle ForeColor="#009900" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
         </table>
     </div>
            </div>
         </div>




</asp:Content>
