<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUpload.aspx.cs" Inherits="AdminUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="margin-top:30px;">
        <h1>เพิ่มเมนูอาหาร</h1>
        <br />
        <div class="row">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
    </div>
    <br />
    <br />
   ชื่ออาหาร : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    ราคา : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="Cancel" PostBackUrl="~/Admin.aspx" Height="38px" Width="79px" />
    &nbsp;<asp:Button ID="Button1" class="btn btn-success" runat="server" Height="38px" OnClick="Button1_Click" Text="Button" Width="79px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="alert" runat="server" Text="Upload Success" Visible="False"></asp:Label>
    
           
    

</asp:Content>

