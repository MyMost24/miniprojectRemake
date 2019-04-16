<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price] FROM [Food]"></asp:SqlDataSource>
&nbsp;<br />
    <br />
    
&nbsp;<div class="row" style="background-color:darkgray">

        <div class="col-lg-12" style="margin-top:10px ; margin-bottom:10px">
            <asp:Button ID="Button1" runat="server"  BackColor="#FF6600" ForeColor="#CCCCCC" Height="31px" Text="จองโต๊ะ" Width="167px" BorderColor="Black" PostBackUrl="~/Booking.aspx" />
            <br />
            <br />

           <h2>Menu</h2>
            <br />
            <br />
            
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <td runat="server" style="">
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
                    <td runat="server" style="">
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
                    <td runat="server" style="">
                        <asp:TextBox ID="F_imgTextBox" runat="server" Text='<%# Bind("F_img") %>' />
                        <br />F_name:
                        <asp:TextBox ID="F_nameTextBox" runat="server" Text='<%# Bind("F_name") %>' />
                        <br />F_price:
                        <asp:TextBox ID="F_priceTextBox" runat="server" Text='<%# Bind("F_price") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">
                        <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                        <br />
                        ชื่อ :
                        <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        ราคา :
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
                    <td runat="server" style="">
                        <asp:Label ID="F_imgLabel" runat="server" Text='<%# Eval("F_img") %>' />
                        <br />
                        ชื่อ :
                        <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                        <br />
                        ราคา :
                        <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
