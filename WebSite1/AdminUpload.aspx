<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUpload.aspx.cs" Inherits="AdminUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="margin-top:30px;">
        <h1>เพิ่มเมนูอาหาร</h1>
        <br />
        <div class="row">
            <div class="col-sm-2 imgUp">
                <div class="imagePreview"></div>
                <label class="btn btn-primary" id="btn_upimg">
                    Upload<input type="file" class="uploadFile img" value="Upload Photo" style="width: 0px; height: 0px; overflow: hidden;">
                </label>
            </div>
        </div>
    </div>
   ชื่ออาหาร : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    ราคา : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <a href="Admin.aspx" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">Cancel</a>
    <a href="#" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Submit</a>
    
           
    

</asp:Content>

