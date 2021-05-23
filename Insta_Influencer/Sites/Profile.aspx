<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Insta_Influencer.Sites.Profile"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-4 bg-light">
        <div class="container">
            <div class="row table-bordered">

                <div class="container border border-dark">

                    <div class="profile">

                        <div class="profile-image">

                            <asp:Image ID="img_inf"  runat="server" CssClass="img-thumbnail w-75"  />
                        </div>

                        <div class="profile-user-settings">
                           <%-- <a href="<%# Eval("Insta_Link") %>" >
                                <h1 class="profile-user-name">
                                    <asp:Label ID="lbl_inf_Name" runat="server" /></h1>
                            </a>--%>
                            <h1 class="profile-user-name">
                                <asp:HyperLink ID="HyperLink1" Font-Underline="false" ForeColor="Black" Font-Bold="true" Target="_blank" runat="server"></asp:HyperLink>
                                </h1>
                            
                        </div>

                        <div class="profile-stats">

                            <ul>
                                <li><span class="profile-stat-count">164</span> posts</li>
                                <li><span class="profile-stat-count">188</span> followers</li>
                                <li><span class="profile-stat-count">206</span> following</li>
                            </ul>

                        </div>

                        <div class="profile-bio">
                            <asp:Label ID="Label1" runat="server" Text="Jane Doe Lorem ipsum dolor sit, amet consectetur adipisicing elit 📷✈️🏕️ " CssClas ="profile-real-name"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <hr />

        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
               
                <asp:Repeater ID="Repeater_Profile" runat="server">
                    <ItemTemplate>
                        <div class="col">
                            <div class="card shadow-sm">
                                <%--<a href="Profile.aspx?Influencer_ID=<%# Eval("Influencer_ID") %>"  target="_blank">--%>
                                    <asp:Image ID="img_Profile" runat="server" ImageUrl='<%# Eval("Image_Path") %>' Height="300px" Width="100%" CssClass="img-rounded rounded-1"  />
                                    <%--<asp:ImageButton ID="ImageButton1" ImageUrl='<%# Eval("Image_Path") %>' Height="300px" Width="100%" CssClass="img-rounded rounded-1"  data-bs-toggle="modal" data-bs-target="#exampleModal"  runat="server"  />--%>
                                <%--</a>--%>
                            </div>
                            <div class="card-body text-center">
                                <asp:Label ID="lbl_categ" runat="server" Font-Size=" Large"
                                    Text='<%# Eval("Influencer_Name") %>' Font-Bold="True" ForeColor="#FF3300" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>



    </div>

</asp:Content>
