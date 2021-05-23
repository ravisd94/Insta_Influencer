<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ImageGallery.aspx.cs" Inherits="Insta_Influencer.Sites.ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-5 bg-light">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

                <asp:Repeater ID="img_Gallery_Repeater" runat="server">
                    <itemtemplate>
                        <div class="col">
                            <div class="card shadow-sm">
                                <a href="Profile.aspx?Influencer_ID=<%# Eval("Influencer_ID") %>" target="_blank">
                                    <asp:Image ID="img_categ" runat="server" ImageUrl='<%# Eval("Image_Path") %>' Height="300px" Width="100%" CssClass="img-rounded" />
                                </a>
                            </div>
                            <div class="card-body text-center">
                                <asp:Label ID="lbl_categ" runat="server" Font-Size=" Large"
                                    Text='<%# Eval("Influencer_Name") %>' Font-Bold="True" ForeColor="#FF3300" />
                            </div>
                        </div>
                    </itemtemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
</asp:Content>
