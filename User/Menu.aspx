<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="IndoFood.User.Menu" %>
<%@ Import Namespace="IndoFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- food section -->

    <section class="food_section layout_padding">
        <div class="container">
            <div class="heading_container heading_center">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2>Our Menu
                </h2>
            </div>

            <ul class="filters_menu">
                <%--<li class="active" data-filter="*" data-id="0">All</li>--%>
                <asp:Repeater ID="rCategory" runat="server">
                    <ItemTemplate>
                        <li data-filter=".<%# Regex.Replace(Eval("Name").ToString().ToLower(),@"\s+","") %>"
                            data-id="<%# Eval("CategoryID") %>" ><%# Eval("Name") %></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

            <div class="filters-content">
                <div class="row grid">
                    <asp:Repeater ID="rProducts" runat="server" OnItemCommand="rProducts_ItemCommand">
                        <ItemTemplate>
                            <div class="col-sm-6 col-lg-4 all <%# Regex.Replace(Eval("Name").ToString().ToLower(),@"\s+","") %>">
                                <div class="box">
                                    <div>
                                        <div class="img-box">
                                                <asp:LinkButton runat="server" ID="lbAdddToCart" CommandName="addToCart"
                                                    CommandArgument='<%# Eval("ProductID") %>'>
                                            <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="" width="300" height="300">
                                                </asp:LinkButton>
                                        </div>
                                        <div class="detail-box">
                                            <h5><%# Eval("Name") %></h5>
                                            <p>
                                                <%# Eval("Description") %>
                                            </p>
                                            <div class="options">
                                                <h6>$<%# Eval("Price") %></h6>                                                       
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>




                </div>
            </div>
        </div>
    </section>

    <!-- end food section -->

</asp:Content>


