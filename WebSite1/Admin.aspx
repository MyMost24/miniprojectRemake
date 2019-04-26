﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="AdminHomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row"  style="margin-top : 10px ; margin-bottom : 20px;">
        <div class="col-lg-12" style="background-color:darkgrey; ">
            <br />
            <a href="AdminUpload.aspx" class="btn btn-success btn-lg active" role="button" aria-pressed="true">เพิ่มอาหาร</a>
            <a href="Q_Booking.aspx" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">คิวจอง
            </a>
            <br />
            <br />
           
            <h1>MENU</h1>
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
              
                <ItemTemplate>
                    <td runat="server" class="text-center">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("F_img") %>' Height="200" Width="200" />
                        <br />
                        <br />
                <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        ราคา :
                <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                        <br />
                       
                        <asp:Button ID="Button1" runat="server" Text="Edit" CommandName="Edit_Button" CommandArgument='<%# Eval("F_id") %>'/>
                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete_Button" CommandArgument='<%# Eval("F_id") %>'/>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" border="0" style="">
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </table>
                    <div style="">
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price], [F_id] FROM [Food]"></asp:SqlDataSource>
        </div>
    </div>


</asp:Content>

