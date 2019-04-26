<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminEdit.aspx.cs" Inherits="AdminEdit" %>
      

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container" style="margin-top:30px;">
        <h1>แก้ไขเมนูอาหาร</h1>
        <br />
        <div class="row">
            <asp:Image ID="Image1" runat="server" Height="300" Width="300" />
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
    <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Save" Height="38px" Width="79px" OnClick="Button1_Click" />
    <asp:Label ID="alert" runat="server" Text="Edit Success" Visible="False"></asp:Label>


</asp:Content>

