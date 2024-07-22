  <%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IndoFood.User.Default" %>
<%@ Import Namespace="IndoFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 


    <!-- about section -->

  <section class="about_section layout_padding_bottom">
    <div class="container  ">

      <div class="row">
        <div class="col-md-7 ">
          <div class="img-box">
            <img src="../Templatefiles/images/13.jpg" alt="" width="800" height="600">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                We Are IndoFood
              </h2>
            </div>
            <p>
              We are providing many kinds of Indonesian Food here. The taste is no need to be doubt, because it's the same as the original taste.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->


  <section class="client_section layout_padding-bottom pt-5">
  </section>


</asp:Content>
