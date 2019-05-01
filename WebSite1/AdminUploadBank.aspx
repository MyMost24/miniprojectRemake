<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUploadBank.aspx.cs" Inherits="AdminUploadBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="" style="margin-top:30px">
        <h1>เพิ่มธนาคาร</h1>
        <br />
        <br />
        ชื่อธนาคาร :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        เลขบัญชรธนาคาร :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        ชื่อเจ้าของธนาคาร :
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Cancel" />
        <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Save" />
        
    </div>

</asp:Content>

