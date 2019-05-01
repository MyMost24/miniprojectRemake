<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Upload_slip.aspx.cs" Inherits="Mony" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label1" runat="server" BackColor="White" Font-Size="XX-Large" ForeColor="#333333" Text="โอนเงิน"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" BackColor="White" Font-Size="XX-Large" ForeColor="#333333" Text="ส่งใบสลิปการโอนเงิน"></asp:Label>
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <p style="margin-left: 10px; font-size: 18px; background-color: #FFFFFF; width: 230px;">
         &nbsp;
         ค่าอาหาร50%ของอาหารที่สั่ง
        </p>
    </div>
    </div>
    </div>

         <div class="row" style="margin-top:10px">
             <div class="col-lg-4" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <a href="#" class="badge badge-secondary" style="font-size: 20px; width: 190px; background-color: #333333; color: #FFFFFF;">ธนาคารกรุงไทย</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </div>
             <div class="col-lg-4"  > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                  <a href="#" class="badge badge-secondary" style="font-size: 20px; width: 190px; color: #FFFFFF; background-color: #333333;">ธนาคารไทยพานิชย์</a>
             </div>
             <div class="col-lg-4" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                  <a href="#" class="badge badge-secondary" style="font-size: 20px; width: 190px; color: #FFFFFF; background-color: #333333;">ธนาคารออมสิน</a>
             </div>
             <br />

        <div class="row" style="margin-top:20px; margin-left:144px">
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px; background-color: #FFFFFF; width: 128px;">
         &nbsp;เลขบัญชีธนาคาร
        </p>
                </div>
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px; background-color: #FFFFFF; width: 128px;">
         เลขบัญชีธนาคาร
        </p>
                </div>
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px; background-color: #FFFFFF; width: 127px;">
         เลขบัญชีธนาคาร
        </p>
                </div>
         </div>
    
         </div>

         <div class="row" style="margin-top:10px">
             <div class="col-lg-4" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <a href="#" class="badge badge-secondary" style="font-size: 15px; width: 150px; background-color: #333333; color: #FFFFFF;">111-22222-3</a>
             </div>
             <div class="col-lg-4"  > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <a href="#" class="badge badge-secondary" style="font-size: 15px; width: 150px; color: #FFFFFF; background-color: #333333;">111-22222-3</a>
             </div>
             <div class="col-lg-4" > 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <a href="#" class="badge badge-secondary" style="font-size: 15px; width: 150px; color: #FFFFFF; background-color: #333333;">111-22222-3</a>
             </div>
         </div>
        <div class="row" style="margin-top:50px; margin-left:100px">
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px; background-color: #FFFFFF; width: 227px;">
         &nbsp;แนบไฟล์รูปใบสลิปการโอนเงิน
        </p>
        </div> 
        </div>
    <div class="row">
        <div class="col-lg-6">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
            <br />

        </div>
    </div>

</asp:Content>

