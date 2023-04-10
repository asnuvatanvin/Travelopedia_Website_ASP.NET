<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Travelopedia.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Travelopedia Profile Page</title>

    <link rel="stylesheet" href="profile.css" />
    <%--<link rel="stylesheet" href="travely.css" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
</head>
<body>
    <form id="myForm" runat="server">

        <header class="header">
            <a href="#" class="logo">
                <i class="fas fa-paper-plane"></i>Travelopedia
            </a>

            <nav>
                <ul class="nav__links">
                    <li>
                        <asp:LinkButton ID="homenav" runat="server" CssClass="nl" OnClick="homenav_Click">Home</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="about" runat="server" CssClass="nl" OnClick="about_Click">About</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="blog" runat="server" CssClass="nl">Blog</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="contact" runat="server" CssClass="nl" OnClick="contact_Click">Contact</asp:LinkButton></li>
                </ul>
            </nav>

            <div class="parent" id="login-btn">
                <img src="images/user1.jpg" alt="" />
                &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="uname"></asp:Label>
            </div>
            <div class="navbar">
                <asp:LinkButton ID="profile" runat="server" CssClass="navbarbutton" OnClick="profile_Click">Profile</asp:LinkButton>
                <asp:LinkButton ID="bookings" runat="server" CssClass="navbarbutton" OnClick="bookings_Click">Bookings</asp:LinkButton>
                <asp:LinkButton ID="logout" runat="server" CssClass="navbarbutton" OnClick="logout_Click">Log Out</asp:LinkButton>
            </div>
        </header>

        
            <div class="container form__wrapper">

                <h2>Edit Profile</h2><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <div>

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            
                            <label for="firstName">First Name</label>
                            <asp:TextBox
                                ID="firstName"
                                runat="server" CssClass="form-control"
                                placeholder="First Name"></asp:TextBox>
                            <%--<input name="firstName" type="text" class="form-control" id="firstName" placeholder="First name">--%>
                        </div>
                        <!-- /form-group -->

                        <div class="form-group col-md-6">

                            <label for="lastName">Last Name</label>
                            <asp:TextBox
                                ID="lastName"
                                runat="server" CssClass="form-control"
                                placeholder="Last Name"></asp:TextBox>
                            <%--<input name="lastName" type="text" class="form-control" id="lastName" placeholder="Last name">--%>
                        </div>
                        <!-- /form-group -->

                    </div>
                    <!-- /form-row -->

                    <div class="form-group">

                        <label for="email">Email</label>
                        <asp:TextBox
                            ID="email"
                            runat="server" CssClass="form-control"
                            placeholder="Email"></asp:TextBox>
                        <%--<input name="company" type="text" class="form-control" id="company" placeholder="Company">--%>
                    </div>
                    <!-- /form-group -->
                    <div class="form-row">

                        <div class="form-group col-md-6">

                            <label for="newpass">New Password</label>
                            <asp:TextBox
                                ID="npass"
                                runat="server" CssClass="form-control"
                                placeholder="Password" TextMode="Password"></asp:TextBox>
                            <%--<input name="firstName" type="text" class="form-control" id="firstName" placeholder="First name">--%>
                        </div>
                        <!-- /form-group -->

                        <div class="form-group col-md-6">

                            <label for="old" style="color: red;">*Old Password (Required for any change in Profile Information)</label>
                            <asp:TextBox
                                ID="opass"
                                runat="server" CssClass="form-control"
                                placeholder="Password" TextMode="Password"></asp:TextBox>
                            <%--<input name="lastName" type="text" class="form-control" id="lastName" placeholder="Last name">--%>
                        </div>
                        <!-- /form-group -->

                    </div>

                    <%--<div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <asp:TextBox
                        ID="dob" CssClass="form-control"
                        runat="server"
                        TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DOB" ErrorMessage="!"></asp:RequiredFieldValidator>
                </div>--%>


                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <!-- <label for="cars">Choose a car:</label> -->
                            <asp:DropDownList
                                ID="country"
                                runat="server"
                                CssClass="form-control">
                                <asp:ListItem Value="Select Country" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Bangladesh" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="India" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Nepal" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Bhutan" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Maldives" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Pakistan" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Afghanistan" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Malaysia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Indonesia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Thailand" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Sri Lanka" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="France" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Germany" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Hungary" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Italy" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="England" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Scotland" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="USA" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Australia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Russia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="China" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="South Korea" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Vietnam" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Laos" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Japan" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Mexico" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Philipines" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Canada" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Greenland" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Iceland" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Spain" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Mongolia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Uzbekistaan" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Russia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Singapur" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Fiji" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Norway" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="South Africa" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Monaco" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Ghana" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Egypt" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Namibia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Morocco" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Netharlands" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Greece" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Sweden" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Denmark" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Austria" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Croatia" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Romania" CssClass="dropdown_input"></asp:ListItem>
                            </asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="country" ErrorMessage="!" InitialValue="Select Country"></asp:RequiredFieldValidator>--%>
                        </div>
                        <div class="form-group col-md-6">
                            <asp:DropDownList ID="gender" runat="server" CssClass="form-control">
                                <asp:ListItem Value="Select Gender" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Female" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Male" CssClass="dropdown_input"></asp:ListItem>
                                <asp:ListItem Value="Other" CssClass="dropdown_input"></asp:ListItem>
                            </asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="gender" ErrorMessage="!" InitialValue="Select Gender"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>

                    <div class="form__btns">

                        <asp:Button ID="save" runat="server" Text="Save" CssClass="btn btn-outline-primary" OnClick="save_Click" />
                        <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn btn-outline-primary" OnClick="cancel_Click" />

                    </div>

                </div>


                <!-- /form__btns -->
            </div>


            <!-- /container -->
       
        <section class="footer">

            <div class="box-container">

                <div class="box" data-aos="fade-up">
                    <h3>About Us</h3>
                    <p>Travelopedia has been around for 5 years providing our users the best possible service to live their dream to travel around the world.</p>
                </div>

                <div class="boxx" data-aos="fade-up">
                    <h3>Follow Us</h3>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-pinterest"></i></a>
                </div>


                <div class="box" data-aos="fade-up">
                    <h3>Quick Links</h3>
                    <a href="#"><i class="fas fa-chevron-right"></i>Home </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Packages </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Services </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Pricing </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Review </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Contact </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>Blogs </a>
                </div>

                <div class="box" data-aos="fade-up">
                    <h3>Contact Info</h3>
                    <a href="#"><i class="fas fa-phone"></i>+123-456-7890 </a>
                    <a href="#"><i class="fas fa-phone"></i>+111-222-3333 </a>
                    <a href="#"><i class="fas fa-envelope"></i>asnuva.tanvin@gmail.com </a>
                    <a href="#"><i class="fas fa-map-marker-alt"></i>Dhaka, Bangladesh </a>
                </div>

            </div>

        </section>


        <%--<script src="profile.js"></script>--%>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="travely.js"></script>
        <p>
            &nbsp;
        </p>
    </form>


</body>
</html>
