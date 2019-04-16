<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="AdminHomepage" %>

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
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <td runat="server" style="">F_img:
                <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                        <br />
                        F_name:
                <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        F_price:
                <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">F_img:
                <asp:TextBox ID="F_imgTextBox" runat="server" Text='<%# Bind("F_img") %>' />
                        <br />
                        F_name:
                <asp:TextBox ID="F_nameTextBox" runat="server" Text='<%# Bind("F_name") %>' />
                        <br />
                        F_price:
                <asp:TextBox ID="F_priceTextBox" runat="server" Text='<%# Bind("F_price") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">F_img:
                <asp:TextBox ID="F_imgTextBox" runat="server" Text='<%# Bind("F_img") %>' />
                        <br />
                        F_name:
                <asp:TextBox ID="F_nameTextBox" runat="server" Text='<%# Bind("F_name") %>' />
                        <br />
                        F_price:
                <asp:TextBox ID="F_priceTextBox" runat="server" Text='<%# Bind("F_price") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">F_img:
                <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                        <br />
                        F_name:
                <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        F_price:
                <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                        <br />
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
                <SelectedItemTemplate>
                    <td runat="server" style="">F_img:
                <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                        <br />
                        F_name:
                <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        F_price:
                <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price] FROM [Food]"></asp:SqlDataSource>
        </div>
    </div>


</asp:Content>

