<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Insta_Influencer.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-5 bg-light">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

                <asp:Repeater ID="Home_Repeater" runat="server">
                    <ItemTemplate>
                        <div class="col">
                            <div class="card shadow-sm">
                                <a href="ImageGallery.aspx?Category=<%# Eval("Category_Name") %>" target="_blank">
                                    <asp:Image ID="img_categ" runat="server" ImageUrl='<%# Eval("Category_Image") %>' Height="300px" Width="100%" CssClass="img-rounded" />
                                </a>
                            </div>
                            <div class="card-body text-center">
                                <asp:Label ID="lbl_categ" runat="server" Font-Size=" Large"
                                    Text='<%# Eval("Category_Name") %>' Font-Bold="True" ForeColor="#FF3300" />
                            </div>
                        </div>
                    </ItemTemplate>

                </asp:Repeater>

            </div>
        </div>
    </div>
</asp:Content>
