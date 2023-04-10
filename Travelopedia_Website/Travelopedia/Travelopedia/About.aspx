<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Travelopedia.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Travelopedia</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="travely.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- navbar  -->
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
                        <asp:LinkButton ID="about" runat="server" CssClass="nl" OnClick="about_Click">About</asp:LinkButton></li>
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
                <asp:LinkButton ID="bookings" runat="server" CssClass="navbarbutton" OnClick="LinkButton1_Click">Bookings</asp:LinkButton>
                <asp:LinkButton ID="logout" runat="server" CssClass="navbarbutton" OnClick="logout_Click">Log Out</asp:LinkButton>
            </div>
        </header>
        <!-- header -->

        <section style="display: block; padding-top: 12rem; position: relative; text-align: center;">
            <img src="images/undraw_moonlight_-5-ksn.svg" alt="" style="width: 80%; margin-left: 16rem; display: block;" />

            <h3 style="color: rgb(236, 88, 88); font-size: 4rem; position: absolute; top: 58%; left: 52%; transform: translate(-50%, -50%);">About Us</h3>
        </section>


<%--        <section>
          
            <div class="aboutside" >
                <img src="images/about-img.jpg" alt="about image" class="aboutimg"/>
                <h2 style="color: var(--text-color-1); font-size: 2.5rem; position: absolute; top: 120%; left: 70%; transform: translate(-50%, -50%);">15 Years of Experience</h2>
               
            </div>

        </section>--%>
        <section>
              <div class="container" style="padding-top: 4%">
                <div class="title-wrap">
                    <span class="sm-title">Things to Know About Us</span>
                    <h2 class="lg-title">Our Story</h2>
                </div>
            </div>

        </section>
        <div class="aboutcontainer">
            <div class="aboutimage">
                <img src="images/about-img.jpg" class="aboutimg">
            </div>
            <div class="abouttext">
                <h2 style="padding-bottom:0.5rem;">15 Years of Experience</h2>
                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae vitae sed aperiam qui repudiandae earum voluptatem. Modi at inventore omnis veniam necessitatibus exercitationem vel nesciunt delectus ex officiis, culpa doloremque odit illo saepe placeat. Delectus consequuntur reprehenderit omnis accusantium officiis!</p>
                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique explicabo blanditiis quidem consequuntur qui quaerat fuga iste tenetur consequatur porro. Aliquam maiores alias doloribus at quisquam quo numquam perferendis. Odit!</p>
            </div>
        </div>





        <!-- footer -->
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
        <!-- end of footer -->

        <!-- js -->
         <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

        <script src="travely.js"></script>
    </form>
</body>
</html>
