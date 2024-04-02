<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ChequePrint.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   <style type="text/css">
        .auto-style1 {
            width: 758px;
        }
        .lbl {
            border-bottom: 1px solid #000;
        }
        .lbl1 {
            border: 1px solid #000;
        }
         .lbl2 {
            border: 1px solid #000;
            border-right:0px;
          
            padding-left:5px;
            text-align:center;


        }
    </style>
</head>
<body style="font-family:Arial,sans-serif">
    <form id="form1" runat="server">     
     <div style="width:1300px; height:500px; border:1px solid #000; margin:0 auto ">

<asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" /><br />   
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>  
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" Visible="False" />
&nbsp;<asp:Panel ID="pnl1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td style="width:20%; text-align:left; ">
                    <div  style="margin-left:20px;">
                    <asp:Label ID="Label1" runat="server" Text="001629"></asp:Label></div></td>
                <td style="width:50%;text-align:center;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/check_logo.jpg" /></td>
                <td style="width:30%"> <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>&nbsp 
                    <asp:Label ID="lblDate" runat="server" Width="250px" CssClass="lbl"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width:50%;text-align:center;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/samba.jpg" /></td>
          <td style="width:30%"> <asp:Label ID="Label4" runat="server" Text="place of issue"></asp:Label>&nbsp 
                    <asp:Label ID="lblPlace" runat="server" Width="200px" CssClass="lbl"></asp:Label>
                </td>
            </tr>
            <tr>
               <td style="width:25%; text-align:left; ">
                    <div  style="margin-left:20px;">
                    <asp:Label ID="Label6" runat="server" Text="K.A.A UNIVERSITY-MEN BRANCH "></asp:Label></div></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <td colspan="3" style="width:100%; text-align:left; "> 
                    <div  style="margin-left:20px;">
                    <asp:Label ID="Label7" runat="server" Text="Pay against this cheque  "></asp:Label><br />
                         <asp:Label ID="Label9" runat="server" Text=" to the order of "></asp:Label>
                         <asp:Label ID="lblPayAgnstChk" runat="server" Width="1100px" CssClass="lbl"></asp:Label>
                    </div></td>
               
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
          
            <tr>
                 <td colspan="2" style="width:100%; text-align:left; "> 
                    <div  style="margin-left:20px;">
                   
                         <asp:Label ID="Label11" runat="server" Text=" The amount of "></asp:Label>
                         <asp:Label ID="lblAmtWords" runat="server" Width="820px" CssClass="lbl"></asp:Label>
                    </div></td>
                <td>
                    <div style="float:left; margin-top:-32px;"><asp:Label ID="Label10" runat="server" Text=" SAR " Width="48px" Height="54px" CssClass="lbl2" ></asp:Label></div>
                        <div style="float:right; margin-top:-32px; margin-right:20px;"> <asp:Label ID="lblAmt" runat="server" Width="245px" Height="54px" CssClass="lbl1"></asp:Label></div></td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            
                <td colspan="2" style="width:100%; text-align:left; "> 
                    <div  style="margin-left:20px;">
                   
                       
                         <asp:Label ID="Label15" runat="server" Text="" Width="920px" CssClass="lbl"></asp:Label>
                    </div></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                 <td colspan="2" style="width:100%; text-align:left; "> </td>
              
               <td  style="width:100%; text-align:left; "> 
                    <div  style="margin-left:0px;">
                   
                       
                         <asp:Label ID="Label14" runat="server" Text="" Width="300px" CssClass="lbl"></asp:Label><br />
                         <asp:Label ID="Label16" runat="server" Text="Signature" Width="300px" ></asp:Label>
                    </div></td>
            </tr>
            <tr>
                  <td colspan="3" style="width:100%; text-align:left; border-bottom:1px solid #000; "> 
                     <%-- <asp:Label ID="Label17" runat="server" Text="" Width="1298px"  CssClass="lbl"></asp:Label>--%>
                  </td>
                
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                  <td colspan="3" style="width:100%; text-align:center; border-bottom:1px solid #000; margin-top:20px; "> 
                      <asp:Label ID="Label17" runat="server" Text="678980997"   ></asp:Label>
                  </td>
                
            </tr>

        </table>

    </asp:Panel>
    
    </div>
    </form>
</body>
</html>



    


    
   

