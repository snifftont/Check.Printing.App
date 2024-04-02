<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="moneytranferprint.aspx.cs" Inherits="moneyprint.moneytranferprint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title></title>
    <style type="text/css">
        .lbl1 {
            border-bottom: 1px solid #000;
            width: 250px;
           
        }
        /*.lbl11 { padding-right: 132px;
padding-top: 64px;
        }*/

        .auto-style1 {
            width: 50px;

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
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" Visible="False" /><asp:Button ID="btnprint" runat="server" Text="Print" OnClick="btnprint_Click" />
            <asp:Panel ID="pnl1" runat="server">


                <table style="width: 793px; padding-bottom:20px; height:1118px" dir="rtl">

                    <tr>
                        <td style="width: 50%">
                            <table style="width: 100%">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="lblABr" runat="server" Text="فرع"></asp:Label></td>
                                    <td class="auto-style3" style="padding-right: 142px;padding-top: 34px;">
                                        <asp:Label ID="lblBrn" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td class="auto-style2">
                                        <asp:Label ID="lblBr" runat="server" Text="Branch" CssClass="lbl"></asp:Label></td>
                                </tr>
                            </table>


                        </td>
                        <td style="width: 50%">
                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblAdt" runat="server" Text="تاريخ"></asp:Label></td>
                                    <td style="padding-right: 132px;padding-top: 34px;">

                                        <asp:Label ID="lblDt" runat="server" CssClass="lbl1" Width="200px"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lbldate" runat="server" Text="Date" CssClass="lbl"></asp:Label></td>
                                </tr>
                            </table>


                        </td>

                    </tr>
                    <tr>
                        <td style="width: 50%;padding-bottom:55px;">

                            <table style="width: 100%;" dir="ltr">
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:Label ID="lblPliss" runat="server" Text="Please Issue:" Font-Bold="True"></asp:Label></td>
                                    <td colspan="2" dir="rtl" style="height: 5px" >
                                        <asp:Label ID="lblApliss" runat="server" Text="يرجى العدد:" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:CheckBox ID="chkSr" runat="server" Text="Sarie" /></td>
                                    <td colspan="2" dir="rtl" style="height: 30px">
                                        <asp:CheckBox ID="chkASar" runat="server" Text="سري" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:CheckBox ID="chkDr" runat="server" Text="Draft" /></td>
                                    <td colspan="2" dir="rtl" style="height: 30px">
                                        <asp:CheckBox ID="chkAdr" runat="server" Text="مسودة" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:CheckBox ID="chkTT" runat="server" Text="Telex Transfer" /></td>
                                    <td colspan="2" dir="rtl" style="height: 30px">
                                        <asp:CheckBox ID="chkaTT" runat="server" Text="نقل التلكس" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:CheckBox ID="chkAmtTAmt" runat="server" Text="Account to account transfer" /></td>
                                    <td colspan="2" dir="rtl" style="height: 30px">
                                        <asp:CheckBox ID="chkAamtTamt" runat="server" Text="المبلغ إلى مبلغ التحويل" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:Label ID="lblAPayby" runat="server" Text="Against Payment By:" Font-Bold="True"></asp:Label></td>
                                    <td colspan="2" dir="rtl" style="height: 25px">
                                        <asp:Label ID="lblAaPayby" runat="server" Text="ضد الدفع عن طريق:" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:CheckBox ID="chkNo" runat="server" Text="Check No:" /></td>
                                    <td style="height: 5px">
                                        <asp:Label ID="Label17" runat="server" CssClass="lbl1" Width="100px"></asp:Label></td>
                                    <td dir="rtl" style="height: 5px">
                                        <asp:CheckBox ID="chkAchk" runat="server" Text="أي التحقق:" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4" style="width: 100px;">
                                        <asp:CheckBox ID="chkDebno" runat="server" Text="Debit Account No:" /></td>
                                    <td style="height: 5px">
                                        <asp:Label ID="Label16" runat="server" CssClass="lbl1" Width="100px"></asp:Label></td>
                                    <td dir="rtl" style="height: 5px">
                                        <asp:CheckBox ID="chkAdeb" runat="server" Text="حساب الخصم لا:" /></td>
                                </tr>
                            </table>


                        </td>
                        <td style="width: 50%; padding-bottom:55px">
                            <table style="width: 100%">
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblAamt" runat="server" Text="مبلغ"></asp:Label>&nbsp;&nbsp;&nbsp; 
                                        <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblAcr" runat="server" Text="عملة"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblcr" runat="server" Text="Currency"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; padding-bottom:25px">
                                        <asp:Label ID="lblamt" runat="server"></asp:Label></td>
                                    <td style="text-align: center; padding-bottom:25px">
                                        <asp:Label ID="lblCrnc" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: left">
                                        <asp:Label ID="lblAaminwrd" runat="server" Text="Amount In Words"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center; padding-bottom:38px">
                                        <asp:Label ID="lblAmtInWd" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center">
                                        <asp:Label ID="Label13" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; height: 25px;">

                            <asp:Label ID="lblArd" runat="server" Text="تفاصيل التحويلات" Font-Bold="True"></asp:Label>
                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lblRd" runat="server" Text="Remittance Details" Font-Bold="True"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%">

                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <table style="width: 100%;padding-bottom :20px;">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblAbb" runat="server" Text="البنك المستفيد:"></asp:Label></td>
                                                <td style="text-align: left" colspan="2">
                                                    <asp:Label ID="lblBB" runat="server" Text=":Beneficiary's Bank"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center;">
                                                    <asp:Label ID="lblBank" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center;padding-top:10px;">
                                                    <asp:Label ID="Label45" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:10px">
                                                    <asp:Label ID="lbl16" runat="server" Text=" المستفيد IBAN"></asp:Label></td>
                                                <td style="text-align: left" colspan="2">
                                                    <asp:Label ID="lbl19" runat="server" Text=":Beneficiary's IBAN"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center">
                                                    <asp:Label ID="lblIban" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbl17" runat="server" Text="عنوان البنك"></asp:Label></td>
                                                <td style="text-align: center">
                                                    <asp:Label ID="lblBankAdd" runat="server" Text="Label" CssClass="lbl1" Width="250px"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl11" runat="server" Text="Bank's Address"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center">
                                                    <asp:Label ID="Label52" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center;">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbl18" runat="server" Text="بلد"></asp:Label></td>
                                                            <td style ="padding-right:58px">
                                                                 <asp:Label ID="lblCnt" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl15" runat="server" Text="Country"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl14" runat="server" Text="مدينة"></asp:Label></td>
                                                            <td style ="padding-right:48px">
                                                                <asp:Label ID="lblCit" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl13" runat="server" Text="City"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table >
                                           
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblAbn" runat="server" Text=": اسم المستفيد"></asp:Label></td>
                                                <td style="text-align: left" colspan="2">
                                                    <asp:Label ID="lblBN" runat="server" Text=":Beneficiary's Name"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center; padding-bottom :10px">
                                                    <asp:Label ID="lblBenName" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center;">
                                                    <asp:Label ID="Label24" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbl4" runat="server" Text="رقم الهاتف"></asp:Label></td>
                                                <td style="text-align: center;padding-bottom :5px">
                                                    <asp:Label ID="lblTel" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                                <td  style="text-align: left">
                                                    <asp:Label ID="lbl1" runat="server" Text=":Tel No"></asp:Label>&nbsp;&nbsp; </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbl5" runat="server" Text="عنوان"></asp:Label></td>
                                                <td style="text-align: center;">
                                                    <asp:Label ID="lblAdd" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                                <td  style="text-align: center">
                                                    <asp:Label ID="lbl2" runat="server" Text=":Address"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" >
                                                    <table style="width:100%">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbl8" runat="server" Text="مدينة"></asp:Label></td>
                                                            <td style="padding-right: 85px">
                                                                <asp:Label ID="lblCity" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl7" runat="server" Text="City"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl6" runat="server" Text="الرمز البريدي"></asp:Label></td>
                                                            <td style="padding-right: 53px">
                                                                <asp:Label ID="lblZip" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl3" runat="server" Text="Zipcode"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbl10" runat="server" Text="دولة"></asp:Label></td>
                                                            <td style="padding-right: 70px">
                                                                <asp:Label ID="lblSt" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="Label35" runat="server" Text="State"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl9" runat="server" Text="بلد"></asp:Label></td>
                                                            <td style="padding-right: 63px">
                                                                <asp:Label ID="lblCCnt" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="lbl12" runat="server" Text="Country"></asp:Label></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                             <tr><td colspan="3" ></td></tr>
                                           <%-- <tr><td colspan="3"></td></tr>
                                             <tr><td colspan="3"></td></tr>--%>
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
                                        <asp:Label ID="lbl22" runat="server" Text="تفاصيل أخرى:"></asp:Label></td>
                                    <td style="text-align: center;">
                                        <asp:Label ID="lblOther" runat="server" CssClass="lbl1" Width="450px"></asp:Label></td>
                                    <td  style="text-align: left">
                                        <asp:Label ID="lbl20" runat="server" Text=":Other Details"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align: center; padding-bottom :60px ">
                                        <asp:Label ID="Label62" runat="server" CssClass="lbl1" Width="450px"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style ="font-size :x-small; height: 20px;"><asp:Panel ID="Panel2" runat="server">
                            الأحكام والشروط الصفحة التالية فضلا عن تلك المذكورة في اتفاقية فتح الحساب تطبق. لمزيد من التفاصيل، الرجوع إلى أحكام وشروط القسم في
                             <u>www.samba.com</u><br />
                            إنني أدرك وتوافق مع الرسوم المطبقة / الرسوم التي سيتم تحصيلها وفقا لجدول الرسوم المصرفية.
                       </asp:Panel> </td>
                        <td dir="ltr" style ="font-size :x-small; height: 20px;">
                            <asp:Panel ID="Panel1" runat="server">
                            Terms and conditions overleaf as well as those mentioned in account opening agreement shall apply.For details,refer to terms and conditions section at
                        <u>www.samba.com</u>
                            <br />
                            I am aware and agree with applicable charges/fees that would be levied as per schedule of bank charges.
                        </asp:Panel></td>
                    </tr>
                     <tr>
                        <td colspan="2" style="width: 50%">
                            <table style="width: 100%;padding-bottom :20px;">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl25" runat="server" Text="اسم المحول و"></asp:Label></td>
                                    <td style="text-align: center; ">
                                        <asp:Label ID="lblrem" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lbl21" runat="server" Text=":Remitter's Name"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <table style="width: 100%; padding-bottom :20px;">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl26" runat="server" Text="بتحويل التوقيع"></asp:Label></td>
                                    <td style="text-align: center;" >
                                        <asp:Label ID="Label67" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left; ">
                                        <asp:Label ID="lbl23" runat="server" Text=":Remitter's Signature"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                        <tr>
                        <td colspan="2">
                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl24" runat="server" Text="رقم الهاتف"></asp:Label></td>
                                    <td style="text-align: center; ">
                                        <asp:Label ID="lbltelno" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lbl27" runat="server" Text=":Telephone No"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>


                    <tr>
                        <td style="height: 60px; ">
                            <asp:Label ID="lbl28" runat="server" Text="المراد شغلها إذا المحول هو غير صاحب الحساب"></asp:Label></td>
                        <td style="height: 60px; ">
                            <asp:Label ID="lbl29" runat="server" Text="To be filled if Remitter is other than the Account Holder"></asp:Label></td>

                    </tr>

                    <tr>
                        <td colspan="2" >
                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl44" runat="server" Text="اسم Id NO"></asp:Label></td>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblIdName" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lbl30" runat="server" Text=":Name &amp; Id No" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl45" runat="server" Text="تاريخ ومكان إصدار"></asp:Label></td>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblDteIss" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lbl40" runat="server" Text=":Date and Place of Issuance" Font-Bold="True"></asp:Label></td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="lbl46" runat="server" Text="عنوان"></asp:Label></td>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblRemAdd" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lbl41" runat="server" Text=":Address" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl47" runat="server" Text="العنوان ورقم الهاتف الكفيل"></asp:Label></td>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblSoptel" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lbl43" runat="server" Text=":Sponsor's Address and Telephone no" Font-Bold="True"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl48" runat="server" Text="لاستخدام البنك فقط"></asp:Label></td>
                                    <td style="height: 10px;">
                                        <asp:Label ID="lbl49" runat="server" Text="For Bank Use Only" Font-Bold="True"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl51" runat="server" Text="الغرض من التحويلات"></asp:Label></td>
                                    <td style="height: 10px;">
                                        <asp:Label ID="lbl42" runat="server" Text="Purpose of Remittance" Font-Bold="True"></asp:Label></td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                   
                    <tr>
                        <td style="width: 50%">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="text-align: center; height: 10px;">
                                        <asp:Label ID="lbl55" runat="server" Text="قيمة العداد (SAR)"></asp:Label><br />
                                        <asp:Label ID="lbl54" runat="server" Text="(Counter Value(SAR"></asp:Label></td>
                                    <td style="text-align: center; height: 10px;">
                                        <asp:Label ID="lbl50" runat="server" Text="سعر الصرف"></asp:Label><br />
                                        <asp:Label ID="lbl52" runat="server" Text="Exchange Rate"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl56" runat="server" CssClass="lbl1" Width="250px">xyz</asp:Label></td>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl53" runat="server" CssClass="lbl1" Width="250px">xyz</asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl65" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl64" runat="server" Text="رسوم تسليم"></asp:Label><br />
                                        <asp:Label ID="lbl58" runat="server" Text="Handing Charges"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl59" runat="server" CssClass="lbl1" Width="250px"></asp:Label></td>
                                    <td style="height: 10px">
                                        <asp:Label ID="lbl57" runat="server" Text="(Total(SAR"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table style ="width:100%">
                                            <tr>
                                                <td style="height: 10px"><asp:Label ID="lbl60" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                                <td style="height: 10px"> <asp:Label ID="lbl61" runat="server" CssClass="lbl1" Width="125px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 10px"><asp:Label ID="lbl67" runat="server" Text="Verifier"></asp:Label></td>
                                                <td style="height: 10px"><asp:Label ID="lbl66" runat="server" Text="Processor"></asp:Label></td>
                                                
                                            </tr>
                                            <tr><td colspan="2" style="height: 10px"></td></tr>
                                            <tr><td colspan="2" style="height: 10px"></td></tr>
                                            <tr><td colspan="2" style="height: 10px"></td></tr>
                                        </table>
                                       
                                        
                                    </td>

                                </tr>
                            </table>
                        </td>
                        <td style="width: 50%">
                            <table style="width: 100% ;font-size :x-small">
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:Label ID="lbl63" runat="server" Text="هذه المعلومات هي لأغراض إحصائية فقط"></asp:Label>
                                    </td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:Label ID="lbl62" runat="server" Text="This Information is for statistical purpose only"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkAimp" runat="server" Text="استيراد المالية الدفع" />
                                    </td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:CheckBox ID="chk1" runat="server" Text="Import Finance Payment" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkRBY" runat="server" Text="التحويلات من قبل الشركات الأجنبية:" /><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="chkFor" runat="server" Text="للاستيراد" /><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="chkAother" runat="server" Text="أغراض أخرى" />
                                    </td>
                                    <td dir="ltr" style="height: 10px">

                                        <asp:CheckBox ID="chk2" runat="server" Text="Remittance By Foreign Firms:" />
                                        <br />
                                        &nbsp;&nbsp;
                                    <asp:CheckBox ID="chk2For" runat="server" Text="For Imports" />
                                        <br />
                                        &nbsp;&nbsp;
                                       <asp:CheckBox ID="chk2Other" runat="server" Text="Other Purposes" />

                                   </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkPRI" runat="server" Text="التحويلات الشخصية من قبل الأفراد:" /><br />
                                        &nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="chksau" runat="server" Text="سعودي" /><br />
                                        &nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="chknonsau" runat="server" Text="غير سعودية" />

                                    </td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:CheckBox ID="chk3" runat="server" Text="Personal Remittances by Individuals:" /><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="chk3Soudi" runat="server" Text="Saudi" /><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="chk3Non" runat="server" Text="Non-Saudi" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkAINK" runat="server" Text="الاستثمار خارج المملكة" /></td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:CheckBox ID="chk4" runat="server" Text="Investment Outside the Kingdom" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkMn" runat="server" Text="مبيعات لصرافة صرافون" /></td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:CheckBox ID="chk5" runat="server" Text="Sales to Money Changers" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkSg" runat="server" Text="المبيعات للوكالات الحكومية" /></td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:CheckBox ID="chk6" runat="server" Text="Sales To Goverment Agencies" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style5" style="height: 10px">
                                        <asp:CheckBox ID="chkoth" runat="server" Text="آخرون" /></td>
                                    <td dir="ltr" style="height: 10px">
                                        <asp:CheckBox ID="chk7" runat="server" Text="Others" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
