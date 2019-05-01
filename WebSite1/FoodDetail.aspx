﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FoodDetail.aspx.cs" Inherits="FoodDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <div class="col-lg-6 text-center" style="margin-top:30px;">
            <asp:Image ID="Image1" runat="server"  Width="300" Height="300" />
        </div>
        <div class="col-lg-4" style="margin-top:50px;">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Back" PostBackUrl="~/Booking_food.aspx"/>
            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button2_Click" />
            <asp:HiddenField ID="HiddenField1" runat="server"/>

        </div>

    </div>
</asp:Content>

