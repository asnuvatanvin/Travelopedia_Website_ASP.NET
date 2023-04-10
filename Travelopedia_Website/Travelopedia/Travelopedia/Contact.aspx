<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Travelopedia.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Travelopedia</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Contact.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <a href="#" class="logo">
                <i class="fas fa-paper-plane"></i>Travelopedia
            </a>

            <nav>
                <ul class="nav__links">
                    <%--<li><a href="#">Home</a></li>--%>
                    <li>
                        <asp:LinkButton ID="homenav" runat="server" CssClass="nl" OnClick="homenav_Click">Home</asp:LinkButton>
                    </li>
                    <%--<li><a href="#">About</a></li>--%>
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="nl" OnClick="LinkButton1_Click">About</asp:LinkButton></li>
                    <%--<li><a href="#">Blog</a></li>--%>
                    <li>
                        <asp:LinkButton ID="blog" runat="server" CssClass="nl">Blog</asp:LinkButton></li>
                    <%--<li><a href="#">Contact</a></li>--%>
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
        <!-- header -->

        <section style="display: block; padding-top: 12rem; position: relative; text-align: center;">
            <img src="images/undraw_contact_us_re_4qqt.svg" alt="" style="width: 80%; margin-left: 16rem; display: block;" />

            <h3 style="color: rgb(13, 12, 71); font-size: 4rem; position: absolute; top: 58%; left: 52%; transform: translate(-50%, -50%);">Contact Us</h3>
        </section>
        <!-- contact section -->
        <section class="cbody">
        <div class="ccontainer">
            <div class="form-container">
                <div class="left-container">
                    <div class="left-inner-container">
                        <h2 class="ch2">Let's Chat</h2>
                        <p style="font-size:1.5rem; text-align:center;">Whether you have a question, want to start a project or            simply want to connect.</p>
                        <br />
                        <p style="font-size:1.5rem;text-align:center;">Feel free to send me a message in the contact form</p>
                    </div>
                </div>
                <div class="right-container">
                    <div class="right-inner-container">
                        <form action="#">
                            <h2 class="lg-view">Contact</h2>
                            <h2 class="sm-view">Let's Chat</h2>
                            <p style="font-size:1.5rem;">* Required</p>
                            <input class="it" type="text" placeholder="Name *" />
                            <input class="it" type="email" placeholder="Email *" />
                            <input class="it" type="text" placeholder="Phone" />
                            <textarea class="it" rows="4" placeholder="Message"></textarea>
                            <button class="cbutton">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            </section>
    </form>
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

     <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script> -->

        <script src="travely.js"></script>
</body>
</html>
