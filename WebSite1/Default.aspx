<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbpConnectionString %>" SelectCommand="SELECT [F_img], [F_name], [F_price] FROM [Food]"></asp:SqlDataSource>
&nbsp;<br />
    <br />
    
&nbsp;<div class="row" style="border-style: groove; border-color: #FFFFFF; background-color:#C0C0C0; width: 1277px; margin-left: 281px;">


        <div class="col-lg-12" style="margin-top:10px ; margin-bottom:10px">
            <a href="Booking.aspx" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">จองโต๊ะ</a>

        <div class="col-lg-12" style="margin-top:10px; margin-bottom:10px; left: -126px; top: -1px; width: 1234px;  margin-left: 143px;">
            

            <br />
            <br />

           <h2>Menu</h2>
            <br />
            <br />
            
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
               
                <ItemTemplate>
                    <span style="" class="col-lg-2 text-center">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("F_img") %>' Width="160" Height="160"/>
                    <br />
                    
                    <asp:Label ID="F_nameLabel" runat="server" Text='<%# Eval("F_name") %>' />
                    <br />
                    ราคา :
                    <asp:Label ID="F_priceLabel" runat="server" Text='<%# Eval("F_price") %>' />
                    <br />
                    <br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div class="row" id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
               
            </asp:ListView>
        </div>
    </div>
    </div>
</asp:Content>
