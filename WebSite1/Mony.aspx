<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mony.aspx.cs" Inherits="Mony" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="โอนเงิน" Font-Size="X-Large" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="ส่งใบสลิปการโอนเงิน" Font-Size="X-Large" />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm">
               <p style="margin-left: 90px; font-size: 18px;">
         ค่าอาหาร50%ของอาหารที่สั่ง
        </p>
    </div>
    </div>
    </div>

         <div class="row" style="margin-top:10px">
             <div class="col-lg-4" > 
                  <a href="#" class="badge badge-secondary" style="font-size: 20px; width: 190px;">ธนาคารกรุงไทย</a>
             </div>
             <div class="col-lg-4"  > 
                  <a href="#" class="badge badge-secondary" style="font-size: 20px; width: 190px;">ธนาคารไทยพานิชย์</a>
             </div>
             <div class="col-lg-4" > 
                  <a href="#" class="badge badge-secondary" style="font-size: 20px; width: 190px;">ธนาคารออมสิน</a>
             </div>
         </div>

        <div class="row" style="margin-top:20px">
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px">
         เลขบัญชีธนาคาร
        </p>
                </div>
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px">
         เลขบัญชีธนาคาร
        </p>
                </div>
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px">
         เลขบัญชีธนาคาร
        </p>
                </div>
         </div>
    
         <div class="row" style="margin-top:10px">
             <div class="col-lg-4" > 
                  <a href="#" class="badge badge-secondary" style="font-size: 15px; width: 150px;">111-22222-3</a>
             </div>
             <div class="col-lg-4"  > 
                  <a href="#" class="badge badge-secondary" style="font-size: 15px; width: 150px;">111-22222-3</a>
             </div>
             <div class="col-lg-4" > 
                  <a href="#" class="badge badge-secondary" style="font-size: 15px; width: 150px;">111-22222-3</a>
             </div>
         </div>
        <div class="row" style="margin-top:20px">
            <div class="col-lg-4">
                 <p width: 180px;" style="font-size: 18px">
         แนบไฟล์รูปใบสลิปการโอนเงิน
        </p>
        </div> 
        </div> 
    <div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="FileUpload" aria-describedby="inputGroupFileAddon04">
      
      <asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Button3_Click" />
      <br />
      <br />
      <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button4" runat="server" Text="Back" />
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button5" runat="server" Text="Next" />
      <br />

  </div>
    </div>

</asp:Content>

