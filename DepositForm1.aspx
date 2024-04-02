<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositForm1.aspx.cs" Inherits="ChequePrint.DepositForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
           
        }
        .lbl {
            border-bottom: 1px dotted transparent;
        }
        .lbl1 {
            border: 1px solid transparent;
        }
        .lbl2 {
            border: 1px solid transparent;
            border-right: 0px;
            padding-left: 5px;
            text-align: center;
        }
        .lbl11 {
             border-bottom: 1px dotted transparent;
            padding-top:20px;
            padding-left:30px;
            padding-bottom:20px;
        }

        
    </style>
</head>
    <body style="font-family:Arial,sans-serif">
    <form id="form2" runat="server">
    <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" /><br />       
    <div style="width:1300px; height:650px; margin:0 auto; border-bottom:0px; margin-bottom:25px; margin-left:150px; margin-top:110px  ">
     <div style="width:1200px; height:629px; margin:0 auto;padding-left:100px; padding-top:50px ">

              <div style="width:100%; height:25px;  color:red; margin-bottom:20px;  ">
             <h4>DEPOSITE FORM</h4>
                  </div>


        <asp:Panel ID="pnl1" runat="server">


        <table class="auto-style1" style="margin-top:90px">
                  <tr>
                      <td style="width:34%; text-align:center;margin-right:20px; ">
                          <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>&nbsp 
                    <asp:Label ID="lblDate" runat="server" Width="342px" CssClass="lbl11"></asp:Label>
                      </td>
                      <td style="width:32%; text-align:left; height:50px ">
                          <div style="width:94%; height:30px; padding-left:10px; padding-top:5px;  ">
                              <asp:Label ID="Label5" runat="server" Text="Deposite Details"></asp:Label>&nbsp 
                                 <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                          </div>
                      </td>
                        <td style="width:34%; text-align:center; padding-left:30px; ">
                          <asp:Label ID="Label1" runat="server" Text="Branch"></asp:Label>&nbsp 
                            <asp:Label ID="lblBranch" runat="server" CssClass="lbl11"></asp:Label>
                      </td>
                  </tr>
                   </table>
        <div style="width:1200px; height:440px; margin:0 auto ">
                    <div style="width:34%; height:440px; float:left ">
                        <table class="auto-style1" style="border-spacing: 0px;padding-top:0px">
                            <tr>
                     <td style=" text-align:center;margin-right:0px; height:0px; column-span:none; ">
                       
                         <asp:Label ID="Label7" runat="server" Text="Account /credit Card /Personal Finance Number"></asp:Label>&nbsp 
                     </td>
                  </tr>

                            <tr>
                     <td style=" text-align:center;margin-right:0px; height:0px; column-span:none; ">
                       
                         <asp:Label ID="Label8" runat="server" Text=""></asp:Label>&nbsp 
                     </td>

                     </tr>
                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:40px; column-span:none; padding-left:5px; ">
                                 <div style=" margin-top:15px;">
                       
                         <asp:Label ID="Label9" runat="server" Text="Name :"></asp:Label>&nbsp <asp:Label ID="lblName" runat="server" Width="330px" CssClass="lbl"></asp:Label> 
                    </div> </td>
                                </tr>
                                 
                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:20px; column-span:none; padding-left:5px; padding-top:30px ">
                                 <div style=" margin-bottom:40px;">
                       
                         <asp:Label ID="Label11" runat="server" Text="Telephone No :"></asp:Label>&nbsp <asp:Label ID="lblTNo" runat="server" Width="275px" CssClass="lbl"></asp:Label> 
                                 </div> </td>
                                </tr>
                            <tr>
                     <td style=" text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:0px; column-span:none; height:0px; background-color:red; color:white ">
                       
                         <asp:Label ID="Label13" runat="server" Text="DEPOSITOR INFORMATION"></asp:Label>&nbsp 
                     </td>

                     </tr>
                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:40px; column-span:none; padding-left:5px; ">
                                 <div style=" margin-top:10px;">
                       
                         <asp:Label ID="Label14" runat="server" Text="Depositor Name :"></asp:Label>&nbsp 
                                     <asp:Label ID="lblDName" runat="server" CssClass="lbl"></asp:Label>
                               </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:30px; column-span:none; padding-left:5px; ">
                                 <div style=" margin-top:20px;">
                       
                         <asp:Label ID="Label16" runat="server" Text="Nationality :"></asp:Label>&nbsp 
                                     <asp:Label ID="lblNtn" runat="server" CssClass="lbl"></asp:Label>
                                 </div> </td>
                            </tr>

                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:30px; column-span:none; padding-left:5px; ">
                                 <div style=" margin-top:10px;">
                       
                         <asp:Label ID="Label18" runat="server" Text="Civil ID / luama :"></asp:Label>&nbsp 
                                     <asp:Label ID="lblCv" runat="server" CssClass="lbl"></asp:Label>
                                </div> </td>
                             </tr>

                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:40px; column-span:none; padding-left:5px; ">
                                 <div style=" margin-top:30px;">
                       
                         <asp:Label ID="Label20" runat="server" Text="Sponsor's Name & Address :"></asp:Label>&nbsp <asp:Label ID="lblSpsName" runat="server" Width="380px" CssClass="lbl"></asp:Label> 
                                </div> </td>
                            </tr>

                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:30px; column-span:none; padding-left:5px; ">
                                 <div style=" margin-top:5px;">
                       
                         <asp:Label ID="Label22" runat="server" Text="Purpose of Deposite :"></asp:Label>&nbsp 
                                     <asp:Label ID="lblPD" runat="server" CssClass="lbl"></asp:Label>
                                </div> </td>
                            </tr>

                            <tr>
                             <td style=" text-align:center;margin-right:0px; border-bottom:0px solid transparent; height:30px; column-span:none; padding-left:5px;padding-bottom:10px ">
                                 <div style=" margin-top:10px;">
                       
                         <asp:Label ID="Label24" runat="server" Text="tel :"></asp:Label>&nbsp 
                                     <asp:Label ID="lblTel" runat="server" CssClass="lbl"></asp:Label>
                                </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border:1px solid transparent; height:60px; column-span:none; padding-left:5px; background-color:aqua; border-left:0px;border-right:0px; ">
                                 <div style=" margin-top:0px;">
                                     <asp:Label ID="Label28" runat="server" Text="Depositor's :"></asp:Label><br />
                       
                         <asp:Label ID="Label26" runat="server" Text="Signature :"></asp:Label>&nbsp 
                                     <asp:Label ID="Label127" runat="server" CssClass="lbl" Text=""></asp:Label>
                                </div> </td>
                             </tr>




                        </table>
                    </div>
                    <div style="width:30.7%; height:440px; border:1px solid transparent; border-right:0px;  float:left ">
                        <table class="auto-style1" style="border-collapse: collapse; border-spacing: 0px">
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:50px; column-span:none; ">
                       
                         <asp:Label ID="Label29" runat="server" Text="checks#"></asp:Label>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:50px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label30" runat="server" Text="Bank Name"></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:50px; column-span:none;border-right:1px solid transparent; ">
                       
                         <asp:Label ID="Label31" runat="server" Text="A/c#"></asp:Label>&nbsp 
                     </td>
                  </tr>
                  <tr>
                     <td style=" width:10.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none; padding-left:20% ">
                       
                         <asp:Label ID="lblChk1" runat="server"></asp:Label>
                     </td>
                      
                     <td style="width:12.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none;padding-left:10% ">
                       
                         <asp:Label ID="lblBank1" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                           
                     <td style="width:14.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none;border-right:1px solid transparent; ">
                       
                         <asp:Label ID="lblAc1" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                  </tr>
                  <tr>
                     <td style=" width:10.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none;padding-left:20% ">
                       
                         <asp:Label ID="lblChk2" runat="server"></asp:Label>
                     </td>
                      
                     <td style="width:22.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none;padding-left:10% ">
                       
                         <asp:Label ID="lblBank2" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none; border-right:1px solid transparent;">
                       
                         <asp:Label ID="lblAc2" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                   </tr>
                  <tr>
                     <td style=" width:10.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none;padding-left:20% ">
                       
                         <asp:Label ID="lblChk3" runat="server"></asp:Label>
                     </td>
                      
                     <td style="width:22.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none;padding-left:10% ">
                       
                         <asp:Label ID="lblBank3" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none;border-right:1px solid transparent; ">
                       
                         <asp:Label ID="lblAc3" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                  </tr>
                  <tr>
                     <td style=" width:10.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none;padding-left:20% ">
                       
                         <asp:Label ID="lblChk4" runat="server"></asp:Label>
                     </td>
                      
                     <td style="width:22.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none;padding-left:10% ">
                       
                         <asp:Label ID="lblBank4" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none;border-right:1px solid transparent; ">
                       
                         <asp:Label ID="lblAc4" runat="server"></asp:Label>
                         &nbsp 
                     </td>
                   </tr>
                            </table>
                        <table class="auto-style1" style="border-collapse: collapse; border-spacing: 0px; font-size:13px;">
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:30px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label44" runat="server" Text="cash"></asp:Label>
                                     <br /> <asp:Label ID="Label45" runat="server" Text="choose Sourcs of Cash Deposite ()for induviual account only "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label46" runat="server" Text="1. Rental income"></asp:Label>
                                      <asp:Label ID="Label47" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                             </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label48" runat="server" Text="2. Sale of property"></asp:Label>
                                      <asp:Label ID="Label49" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label50" runat="server" Text="3. From own bank Account"></asp:Label>
                                      <asp:Label ID="Label51" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label52" runat="server" Text="4. Trading / Business"></asp:Label>
                                      <asp:Label ID="Label53" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label54" runat="server" Text="5. Loan"></asp:Label>
                                      <asp:Label ID="Label55" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label56" runat="server" Text="6. Gift"></asp:Label>
                                      <asp:Label ID="Label57" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label58" runat="server" Text="7. Salary $ Wages & Allowance"></asp:Label>
                                      <asp:Label ID="Label59" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                         <asp:Label ID="Label60" runat="server" Text="8. Other (Specify in space provided below)"></asp:Label>
                                      <asp:Label ID="Label61" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                            </tr>
                            <tr>
                             <td style=" text-align:left;margin-right:0px; border-bottom:1px solid transparent; height:21px; column-span:none; padding-left:5px;border-right:1px solid transparent; ">
                                 <div style=" margin-top:0px;">
                       
                                     <asp:Label ID="lblOthers" runat="server"></asp:Label>
                                      <asp:Label ID="Label63" runat="server" Text=" "  ></asp:Label> 
                    </div> </td>
                             </tr>
                            <tr>
                             <td style=" text-align:center;margin-right:0px; border:1px solid transparent; height:63px; column-span:none; padding-left:50px;  border-right:0px;padding-bottom:60px ">
                                 <div style="margin-left:150px;margin-top:20px">
                                   
                       
                         <asp:Label ID="Label65" runat="server" Text="Amount in word :"></asp:Label>&nbsp 
                                     <asp:Label ID="lblAmWrd" runat="server" CssClass="lbl11"></asp:Label>
                    </div> </td>
                                </tr>
                        </table>

                   </div>





                    <div style="width:34.96%; height:440px; border:1px solid transparent;  float:left; border-left:0px; ">
                            <table class="auto-style1" style="border-collapse: collapse; border-spacing: 0px">

                  <tr>
                     <td   style=" width:60%; margin-bottom:0px; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:0px solid transparent; height:100px; border-spacing:0px;  ">
                       
                         <asp:Label ID="Label64" runat="server" Text="Amount"></asp:Label>
                     </td>
                      
                      <td   style=" width:0%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; border-spacing:0px;  ">

                  </td>
                           
                     <td style="width:40%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; ">
                       
                         <asp:Label ID="Label68" runat="server" Text="For Bank use only" Width="200px"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none; ">
                       <div  style="margin-top:10px;">
                           <asp:Label ID="lblAmt1" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label73" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none; ">
                       
                         <asp:Label ID="Label74" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label67" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>

                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none; ">
                       <div  style="margin-top:10px;">
                           <asp:Label ID="lblAmt2" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label70" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none; ">
                       
                         <asp:Label ID="Label71" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label75" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblAmt3" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label77" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none; ">
                       
                         <asp:Label ID="Label78" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label79" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblAmt4" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label81" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; column-span:none; ">
                       
                         <asp:Label ID="Label82" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label83" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:20px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblRen" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:20px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label85" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; column-span:none; ">
                       
                         <asp:Label ID="Label86" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label87" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:30px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblSpr" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label89" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; column-span:none; ">
                       
                         <asp:Label ID="Label90" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label91" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:30px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblOwmBnkAc" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label93" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; column-span:none; ">
                       
                         <asp:Label ID="Label94" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label95" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:30px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblTrBs" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label97" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; column-span:none; ">
                       
                         <asp:Label ID="Label98" runat="server" Text="="></asp:Label>&nbsp &nbsp   <asp:Label ID="Label99" runat="server" Text="X"></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:30px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblLoan" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:30px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label101" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center; font-size:12px; border-bottom:1px solid transparent; height:35px; column-span:none; ">
                       
                         <asp:Label ID="Label102" runat="server" Text="Foreign currency Deposite"></asp:Label>&nbsp &nbsp   <asp:Label ID="Label103" runat="server" Text=""></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:38px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblGift" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:35px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label105" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:35px; column-span:none; ">
                       
                         <asp:Label ID="Label106" runat="server" Text="Rate"></asp:Label>&nbsp &nbsp   <asp:Label ID="Label107" runat="server" Text=""></asp:Label>
                     </td>
                     </tr>
                  <tr>
                     <td style=" width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; border-right:1px solid transparent; height:36px; column-span:none; ">
                       <div  style="margin-top:-10px;">
                           <asp:Label ID="lblsalary" runat="server"></asp:Label>
                         </div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:36px; border-right:1px solid transparent; column-span:none; ">
                       
                         <asp:Label ID="Label109" runat="server" Text=""></asp:Label>&nbsp 
                     </td>
                           
                     <td style="width:5.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:36px; column-span:none;padding-right:25%;padding-bottom:80px ">
                        <div style="margin-bottom:140px;">
                         <asp:Label ID="Label110" runat="server" Text="Total"></asp:Label>&nbsp &nbsp   
                         <asp:Label ID="lblTAmt" runat="server"></asp:Label>
                            </div>
                     </td>
                     </tr>
                  <tr>
                     <td colspan="3" style=" width:100%; text-align:left;margin-right:0px; border-bottom:1px solid transparent; border-right:0px solid transparent; height:63px; column-span:none; ">
                       <div  style="margin-top:-10px; margin-left:-2px; margin-top:14px">
                         <asp:Label ID="Label112" runat="server" Text="" CssClass="lbl" Width="290px" ></asp:Label></div>
                     </td>
                      
                     <td style="width:32.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:36px; border-right:0px solid transparent; column-span:none; ">
                       
                         
                     </td>
                           
                     <td style="width:30.7%; text-align:center;margin-right:0px; border-bottom:1px solid transparent; height:36px; column-span:none; ">
                       
                         
                     </td>
                     </tr>
                           
                   </table>
                    </div>   
         
                         

          </div>
        </asp:Panel>

              <div style="width:100%; height:40px; border-bottom:1px solid transparent; color:red; margin-bottom:20px;  font-size:14px; ">
             <p>Term and Conditions overleaf as well as those mentioned in account opening agreement<br />
                 Shall apply.For detail, follow to term and conditions section at www.samba.com.
             </p>
                  </div>
              <div style="width:100%; height:23px; border-bottom:0px solid transparent; color:black; margin-bottom:0px;  font-size:13px; ">
             <p>Samba financial group Soudi joint Stock Company capital S.R 9,000 Million, Comercial Reg.No 1010035319, Head office : Riyadh P.O Box 833, Riyadh 11421 Kingdom of Soudi arabia Tel : +966 11 479 9402
             </p>
                  </div>

         </div>
     <div style="width:1300px; height:90px; border:1px solid #f0f0f0; text-align:center;margin-bottom:5px; padding-top:10px; background-color:; background-image:url('http://localhost:52639//image/blue.jpg') ; background-repeat: repeat-x;">
         <asp:Image ID="Image1" runat="server" ImageUrl="~/image/logo.png" />
     </div>
        
     </div>
      
    </form>
</body>
</html>
