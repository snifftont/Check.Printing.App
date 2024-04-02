<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="moneyTansPrint.aspx.cs" Inherits="ChequePrint.moneyTansPrint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title></title>
    <style type="text/css">
        .lbl1 {
            border-bottom:1px solid #000;
           width:250px;

        }

        .auto-style1 {
            width: 261px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 253px;
        }

        .auto-style4 {
            width: 266px;
        }

        .auto-style5 {
            width: 166px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="btnsubmit" runat="server" Text="Submit" /><asp:Button ID="btnprint" runat="server" Text="Print" />
            <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%">

                <tr>
                    <td style="width: 50%">
                        <table style="width: 100%">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label5" runat="server" CssClass="lbl1" Text="Label2" Width="250px" ></asp:Label></td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text="Branch" CssClass="lbl"></asp:Label></td>
                            </tr>
                        </table>


                    </td>
                    <td style="width: 50%">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                                <td class="auto-style1">
                                    <asp:Label ID="Label2" runat="server" CssClass="lbl1" Text="Label2" Width="250px"></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Date" CssClass="lbl"></asp:Label></td>
                            </tr>
                        </table>


                    </td>

                </tr>
                <tr>
                    <td style="width: 50%">

                        <table  style="width: 100%" dir="ltr">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label15" runat="server" Text="Please Issue:" Font-Bold="True"></asp:Label></td>
                                <td colspan="2" dir="rtl">
                                    <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="True"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:CheckBox ID="CheckBox8" runat="server" Text="Sarie" /></td>
                                <td colspan="2" dir="rtl">
                                    <asp:CheckBox ID="CheckBox7" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Dreft" /></td>
                                <td colspan="2" dir="rtl">
                                    <asp:CheckBox ID="CheckBox5" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Telex Transfer" /></td>
                                <td colspan="2" dir="rtl">
                                    <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Account to account transfer" /></td>
                                <td colspan="2" dir="rtl">
                                    <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                            </tr>
                            <tr>
                               <td class="auto-style4">
                                   <asp:Label ID="Label19" runat="server" Text="Against Payment By:" Font-Bold="True"></asp:Label></td>
                                <td colspan="2" dir="rtl">
                                    <asp:Label ID="Label18" runat="server" Text="Label" Font-Bold="True"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:CheckBox ID="CheckBox12" runat="server" Text="Check No:" /></td>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text="Label" CssClass="lbl1" Width="90px"></asp:Label></td>
                                <td dir="rtl">
                                    <asp:CheckBox ID="CheckBox11" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:CheckBox ID="CheckBox10" runat="server" Text="Debit Account No" /></td>
                                 <td>
                                     <asp:Label ID="Label16" runat="server" Text="Label" CssClass="lbl1" Width="50px"></asp:Label></td>
                                <td dir="rtl">
                                    <asp:CheckBox ID="CheckBox9" runat="server" /></td>
                            </tr>
                        </table>


                    </td>
                    <td style="width: 50%">
                        <table style="width: 100%" >
                            <tr>
                                <td style ="text-align :left">
                                    <asp:Label ID="Label8" runat="server" Text="Amount"></asp:Label></td>
                                <td  style ="text-align :left">
                                    <asp:Label ID="Label7" runat="server" Text="Currency"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td  colspan="2" style ="text-align :left">
                                    <asp:Label ID="Label11" runat="server" Text="Amount In Words"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style ="text-align :center">
                                    <asp:Label ID="Label12" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" style ="text-align :center">
                                    <asp:Label ID="Label13" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" style ="text-align:center"> Remittance Details</td>
                    
                </tr>
                <tr>
                    <td colspan="2" style="width: 100%">


                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label22" runat="server" Text=":Beneficiary's Bank"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label44" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                             </tr>
                                        <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label45" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label47" runat="server" Text=":Beneficiary's IBAN:"></asp:Label></td>
                                        </tr>
                                         <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label48" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                             </tr>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label49" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label50" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label51" runat="server" Text="Bank's Address"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label52" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                             </tr>
                                        <tr>
                                            <td colspan="3" style ="text-align:center">
                                                 <table style="width: 100%">
                                                 <tr>
                                                        <td>
                                                            <asp:Label ID="Label53" runat="server" Text="Label"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label54" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label55" runat="server" Text="Country"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label56" runat="server" Text="Label"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label57" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label58" runat="server" Text="City"></asp:Label></td>
                                                    </tr>
                                                     </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>





                                <td> 
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label21" runat="server" Text=":Beneficiary's Name"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label25" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                             </tr>
                                        <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label24" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label30" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label29" runat="server" Text=":Tel No"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label27" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label26" runat="server" Text=":Address"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label42" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label41" runat="server" Text="City"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label39" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label38" runat="server" Text="Zipcode"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label36" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label35" runat="server" Text="State"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label33" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                         <td>
                                                             <asp:Label ID="Label32" runat="server" Text="Country"></asp:Label></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        
                                    </table>

                                </td>
                            </tr>
                        </table>







                    </td>
                </tr>















                <tr>
                    <td colspan="2" style="width: 100%">
                        <table style="width: 100%">
                             <tr>
                                            <td>
                                                <asp:Label ID="Label59" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label60" runat="server" Text="Label" CssClass="lbl1" Width="450px"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label61" runat="server" Text=":Other Details"></asp:Label></td>
                                        </tr>
                            <tr>
                                            <td colspan="3" style ="text-align:center">
                                                <asp:Label ID="Label62" runat="server" Text="Label" CssClass="lbl1" Width="450px"></asp:Label></td>
                                             </tr>
                        </table>
                        </td>
                </tr>






                <tr>
                    <td>dggggggggggggggggggggggggggggggggfvvfgfhgfhdggdfgdfgdgdgd</td>
                    <td>ljhhgjhhghggfhgfhfhgfhgfvhtruytugjkgjhgvjhgjgjkgjgvjvgjhg</td>
                </tr>


                <tr>
                    <td colspan="2">
                        <table style ="width:100%">
                             <tr>
                                            <td>
                                                <asp:Label ID="Label63" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label64" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left" >
                                                <asp:Label ID="Label65" runat="server" Text=":Remitter's Name"></asp:Label></td>
                                        </tr>
                        </table>
                    </td>
                </tr>

                 <tr>
                    <td colspan="2">
                        <table style ="width:100%">
                             <tr>
                                            <td>
                                                <asp:Label ID="Label66" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label67" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left" >
                                                <asp:Label ID="Label68" runat="server" Text=":Remitter's Signature"></asp:Label></td>
                                        </tr>
                        </table>
                    </td>
                </tr>



                                 <tr>
                    <td colspan="2">
                        <table style ="width:100%">
                             <tr>
                                            <td>
                                                <asp:Label ID="Label69" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label70" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left" >
                                                <asp:Label ID="Label71" runat="server" Text=":Telephone No"></asp:Label></td>
                                        </tr>
                        </table>
                    </td>
                </tr>


                 <tr>
                      <td>
                        <asp:Label ID="Label73" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label72" runat="server" Text="To be filled if Reitter is other than the Account Holder"></asp:Label></td>
                   
                </tr>

                <tr>
                    <td colspan="2">
                        <table style ="width:100%">
                           <tr>
                                            <td>
                                                <asp:Label ID="Label74" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label75" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label76" runat="server" Text=":Name &amp; Id No" Font-Bold="True"></asp:Label></td>
                                        </tr>
                             <tr>
                                            <td>
                                                <asp:Label ID="Label77" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label78" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label79" runat="server" Text=":Date and Place of Issuance" Font-Bold="True"></asp:Label></td>
                                        </tr>

                             <tr>
                                            <td>
                                                <asp:Label ID="Label80" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label81" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label82" runat="server" Text=":Address" Font-Bold="True"></asp:Label></td>
                                        </tr>
                             <tr>
                                            <td>
                                                <asp:Label ID="Label83" runat="server" Text="Label"></asp:Label></td>
                                            <td  style ="text-align:center">
                                                <asp:Label ID="Label84" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            <td style ="text-align:left">
                                                <asp:Label ID="Label85" runat="server" Text=":Sponsor's Address and Telephone no" Font-Bold="True"></asp:Label></td>
                                        </tr>
                            </table>
                    </td>
                </tr>
                 <tr>
                      <td>
                          <table style ="width:100%">
                              <tr>
                                  <td>
                                      <asp:Label ID="Label88" runat="server" Text="Label"></asp:Label></td>
                                  <td style ="text-align:left">
                                      <asp:Label ID="Label86" runat="server" Text="For Bank Use Only" Font-Bold="True"></asp:Label></td>
                              </tr>
                          </table>
                       </td>
                    <td>
                    <table style ="width:100%">
                              <tr>
                                  <td>
                                      <asp:Label ID="Label87" runat="server" Text="Label"></asp:Label></td>
                                  <td style ="text-align:left">
                                      <asp:Label ID="Label89" runat="server" Text="Purpose of Remittance" Font-Bold="True"></asp:Label></td>
                              </tr>
                          </table>    
                    </td>
                   
                </tr>
               
                
                
                
                 <tr>
                     <td style="width: 100%">

                         <table style="width: 100%; border:1px;">
                             <tr>
                                 <td  style ="text-align:center ">
                                     <asp:Label ID="Label95" runat="server" Text="Label"></asp:Label><br />
                                     <asp:Label ID="Label93" runat="server" Text="(Counter Value(SAR"></asp:Label></td>
                                 <td  style ="text-align:center ">
                                     <asp:Label ID="Label94" runat="server" Text="Label"></asp:Label><br />
                                     <asp:Label ID="Label92" runat="server" Text="Exchange Rate"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label97" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                 <td>
                                     <asp:Label ID="Label96" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label99" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                 <td>
                                     <asp:Label ID="Label100" runat="server" Text="Label"></asp:Label><br />
                                     <asp:Label ID="Label98" runat="server" Text="Handing Charges"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label102" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                 <td>
                                     <asp:Label ID="Label101" runat="server" Text="(Total(SAR"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td colspan ="2">
                                     <asp:Label ID="Label103" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label104" runat="server" Text="Label" CssClass="lbl1" Width="125px"></asp:Label><br />
                                     <asp:Label ID="Label105" runat="server" Text="Processor"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label106" runat="server" Text="Verifier"></asp:Label>
                                 </td>
                                
                             </tr>
                         </table>

                    </td>
                    <td style="width: 50%">
                        <table style="width: 100%">
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Label91" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td dir="ltr">
                                    <asp:Label ID="Label90" runat="server" Text="This Information is for statistical purpose only"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox34" runat="server" />
                                </td>
                                <td dir="ltr">
                                    <asp:CheckBox ID="CheckBox33" runat="server" Text="Import Finance Payment" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox30" runat="server" /><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="CheckBox31" runat="server" /><br />&nbsp;&nbsp;&nbsp;&nbsp; <asp:CheckBox ID="CheckBox32" runat="server" />
                                </td>
                                <td dir="ltr">




                                    <asp:CheckBox ID="CheckBox27" runat="server" Text="Remittance By Foreign Firms:" />
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:CheckBox ID="CheckBox28" runat="server" Text="For Imports" />
                                    <br />
                                       &nbsp;&nbsp;
                                       <asp:CheckBox ID="CheckBox29" runat="server" Text="Other Purposes" />




                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5"><asp:CheckBox ID="CheckBox24" runat="server" /><br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="CheckBox25" runat="server" /><br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="CheckBox26" runat="server" />

                                </td>
                                <td dir="ltr">
                                    <asp:CheckBox ID="CheckBox21" runat="server" Text="Personal Remittances by Individuals:" /><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="CheckBox22" runat="server" Text="Saudi" /><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CheckBox ID="CheckBox23" runat="server" Text="Non-Saudi" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox20" runat="server" /></td>
                                <td dir="ltr">
                                    <asp:CheckBox ID="CheckBox19" runat="server" Text="Investment Outside the Kingdom" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox18" runat="server" /></td>
                                <td dir="ltr">
                                    <asp:CheckBox ID="CheckBox17" runat="server" Text="Sales to Money Changers" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox16" runat="server" /></td>
                                <td dir="ltr">
                                    <asp:CheckBox ID="CheckBox15" runat="server" Text="Sales To Govermment Agencies" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBox14" runat="server" /></td>
                                <td dir="ltr" >
                                    <asp:CheckBox ID="CheckBox13" runat="server" Text="Others" /></td>
                            </tr>
                        </table>
                    </td>
                    
                </tr>

            </table></asp:Panel>
        </div>
    </form>
</body>
</html>
