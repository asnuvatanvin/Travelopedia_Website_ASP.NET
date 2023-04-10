<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Travelopedia.Home" ClientIDMode="Static" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Travelopedia Home Page</title>

    <!--Font awesome cdn link-->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />


    <link
        rel="stylesheet"
        href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!--Custom CSS file link-->
    <link rel="stylesheet" href="travely.css" />

    <style type="text/css">
        .navbarbutton {
            height: 26px;
        }
    </style>
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
                        <asp:LinkButton ID="about" runat="server" CssClass="nl" OnClick="about_Click">About</asp:LinkButton></li>
                    <%--<li><a href="#">Blog</a></li>--%>
                    <li>
                        <asp:LinkButton ID="blog" runat="server" CssClass="nl" OnClick="blog_Click">Blog</asp:LinkButton></li>
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
                <asp:LinkButton ID="profile" runat="server" CssClass="navbarbutton" OnClick="profile_Click1">Profile</asp:LinkButton>
                <asp:LinkButton ID="bookings" runat="server" CssClass="navbarbutton" OnClick="bookings_Click">Bookings</asp:LinkButton>
                <asp:LinkButton ID="logout" runat="server" CssClass="navbarbutton" OnClick="logout_Click1">Log Out</asp:LinkButton>
            </div>
        </header>

        <!-- Header Ends Here -->

        <!-- Explore Body Starts Here -->
        <section class="home" id="home">
            <div class="image" data-aos="fade-down">
                <img src="images/undraw_floating_re_xtcj.svg" alt="" />
            </div>

            <div class="content" data-aos="fade-up">
                <h3>Explore Dream Discover</h3>
                <pre>
“Travel makes one modest. You see what a tiny place you occupy in the world.” 
                                                                                                       – Gustave Flaubert</pre>
                <a href="#" class="btn">explore now</a>
            </div>
        </section>
        <!-- Explore Body Ends Here -->

        <!--Menu Card Starts Here-->
        <section class="float_container">
            <input id="Hidden" type="hidden" runat="server" />
            <div class="float_child">
                <img src="images/iconhotel.png" onclick="openForm()" />
                <text>Find a Hotel</text>
            </div>
            <div class="float_child">
                <img src="images/iconplane.png" onclick="openForm1('plane')" />
                <text>Book a Flight</text>
            </div>
            <div class="float_child">
                <img src="images/iconcar.png" onclick="openForm1('car')" />
                <text>Rent a car</text>
            </div>
            <div class="float_child">
                <img src="images/iconbus.png" onclick="openForm1('bus')"/>
                <text>Find a bus</text>
            </div>
            <div class="float_child">
                <img src="images/icontodo.png" />
                <text>Things to do</text>
            </div>
            <div class="float_child">
                <img src="images/iconfoodtray.png" />
                <text>Find Restaurants</text>
            </div>
            <div class="form-popup" id="myForm">
                <div action="" class="form-container">

                    <label for="location"><b>Location</b></label>&nbsp;
                    <asp:TextBox ID="location" placeholder="Location" runat="server" CssClass="txtbx"></asp:TextBox>

                    <label for="from"><b>From</b></label>
                    <asp:TextBox ID="arrivald" runat="server" placeholeder="Arrival Date" TextMode="Date" CssClass="txtbx"></asp:TextBox>

                    <label for="to"><b>To</b></label>
                    <asp:TextBox ID="departured" runat="server" placeholder="Departure Date" TextMode="Date" CssClass="txtbx"></asp:TextBox>

                    <label for="adults"><b>Adults</b></label>
                    <asp:TextBox ID="adultenum" runat="server" placeholder="Adults" TextMode="Number" CssClass="txtbx"></asp:TextBox>

                    <asp:Button ID="search1" runat="server" Text="Search" CssClass="btnform" OnClick="search1_Click" />
                    <button type="button" class="btnform cancel" onclick="closeForm()">Close</button>
                </div>
            </div>
            <div class="form-popup" id="myForm1">
                <div action="" class="form-container">

                    <label for="locationf"><b>From</b></label>
                    <asp:TextBox ID="locationf" runat="server" placeholder="Enter Location" CssClass="txtbx"></asp:TextBox>

                    <label for="locationt"><b>To</b></label>
                    <asp:TextBox ID="locationt" runat="server" placeholder="To" CssClass="txtbx"></asp:TextBox>

                    <label for="to"><b>Date</b></label>
                    <asp:TextBox ID="jdate" runat="server" placeholder="Date" CssClass="txtbx" TextMode="Date"></asp:TextBox>

                    <label for="seats"><b>Seats</b></label>
                    <asp:TextBox ID="num" runat="server" placeholder="Seats" CssClass="txtbx" TextMode="Number"></asp:TextBox>

                    <asp:Button ID="search2" runat="server" Text="Search" CssClass="btnform" OnClick="search2_Click" />
                    <button type="button" class="btnform cancel" onclick="closeForm1()">Close</button>
                </div>
            </div>
        </section>
        <!-- Menu Card Ends Here -->


        <!-- featured section -->
        <section id="featured" class="py-4">
            <div class="container">
                 <h1 class="heading">Featured <span>Places</span></h1>
                <%--<div class="title-wrap">
                    <!-- <span class = "sm-title">know about some places before your travel</span> -->
                    <h2 class="lg-title">Featured Places</h2>
                </div>--%>

                <div class="featured-row">
                    <div class="featured-item my-2 shadow">
                        <img
                            src="images/cairo.jpg"
                            alt="featured place" />
                        <div class="featured-item-content">
                            <span>
                                <i class="fas fa-map-marker-alt"></i>
                                Cairo, Egypt
                            </span>
                            <div>
                                <p class="text">
                                    Cairo is best known for preserving the last of the Seven Wonders of the Ancient World, but the city contains infinite treasures beyond the Pyramids of Giza.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="featured-item my-2 shadow">
                        <img
                            src="images/amsterdam.jpg"
                            alt="featured place" />
                        <div class="featured-item-content">
                            <span>
                                <i class="fas fa-map-marker-alt"></i>
                                Amsterdam, Netharlands
                            </span>
                            <div>
                                <p class="text">
                                    Amsterdam is famous for its canals, beautiful houses, 'coffee' shops and Red Light District, but there's plenty more to this liberal city than most visitors realise. 
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="featured-item my-2 shadow">
                        <img
                            src="images/jaipur.jpg"
                            alt="featured place" />
                        <div class="featured-item-content">
                            <span>
                                <i class="fas fa-map-marker-alt"></i>
                                Jaipur, India
                            </span>
                            <div>
                                <p class="text">
                                    Jaipur is famous for Rajasthani traditional Jewelry, traditional fabrics and handicrafts, and also for traditional rajasthani cuisine.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="featured-item my-2 shadow">
                        <img
                            src="images/paris.jpg"
                            alt="featured place" />
                        <div class="featured-item-content">
                            <span>
                                <i class="fas fa-map-marker-alt"></i>
                                Paris, France
                            </span>
                            <div>
                                <p class="text">
                                    Paris is famous for its cafe culture, the Eiffel Tower, the Louvre, Notre Dame, the Moulin Rouge, pastries, and fashion.  It's known for being a boldly romantic city.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="featured-item my-2 shadow">
                        <img src="images/rome.jpg" alt="featured place" />
                        <div class="featured-item-content">
                            <span>
                                <i class="fas fa-map-marker-alt"></i>
                                Rome, Italy
                            </span>
                            <div>
                                <p class="text">
                                    Rome is known for its stunning architecture, with the Colleseum, Pantheon, and Trevi Fountain as the main attractions. 
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="featured-item my-2 shadow">
                        <img
                            src="images/male.jpg"
                            alt="featured place" />
                        <div class="featured-item-content">
                            <span>
                                <i class="fas fa-map-marker-alt"></i>
                                Male, Maldives
                            </span>
                            <div>
                                <p class="text">
                                    Male is a natural paradise with lush island canopy and pictures of perfect scenarios that are an absolute treat for the eyes as well as senses.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end of featured section -->

        <!-- packages section starts  -->

        <section class="packages" id="packages">

            <h1 class="heading">Our <span>Packages</span> </h1>

            <%--<div class="box-container">

                <div class="box" data-aos="fade-up">
                    <div class="image">
                        <img src="images/p-6.jpg" alt="">
                        <h3><i class="fas fa-map-marker-alt"></i>egypt </h3>
                    </div>
                    <div class="content">
                        <div class="price">290.99 <span>350.99</span> </div>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vero, vitae.</p>
                        <a href="#" class="btn">book now</a>
                    </div>
                </div>

            </div>--%>
            <asp:DataList ID="datashowlist" runat="server" RepeatColumns="4"  
        CellSpacing="3" RepeatLayout="Table" CssClass="box-container" OnSelectedIndexChanged="b_Click">  
        <ItemTemplate>  
            <table >  
                <tr class="box" data-aos="fade-up">  
                    <td  class="image">  
                       <asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("Image")%>' CssClass="timg"/> 
                       <h3 class="th3"><i class="fas fa-map-marker-alt"></i>  <%# Eval("pname") %> </h3> 
                    </td>  
                </tr>   
                <tr  class="box" data-aos="fade-up">  
                    <td colspan="2" class="content"> 
                        <div  class="price"><%# Eval("price") %></div> 
                        <p> <%# Eval("description") %><br /></p>
                        <asp:LinkButton ID="tbook" Text="Book Now" runat="server" CssClass="btn" CommandArgument='<%# Eval("tpid") %>' OnClick="b_Click"></asp:LinkButton>
                        <%--<a href="#" class="btn">Book Now</a>--%>
                    </td>  
                </tr>  
            </table>  
        </ItemTemplate>  
    </asp:DataList>  

        </section>

        <!-- Review Section Starts -->
        <section class="review" id="review">
            <h1 class="heading">Client's <span>Review</span></h1>

            <div class="swiper mySwiper review-slider" data-aos="zoom-in">
                <div class="swiper-wrapper">
                    <div class="swiper-slide slide">
                        <img src="images/joey.jpg" alt="" />
                        <h3>Joey Tribbiani</h3>
                        <p>
                            Very easy to deal with, will consider booking with again.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide slide">
                        <img src="images/jake.jpg" alt="" />
                        <h3>Jake Peralta</h3>
                        <p>
                            A room at the hotel I wanted wasn't available elsewhere; I found one only through Travelopedia! Even better was that I got it at an amazing price!
Will definitely book with Travelopedia again!
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide slide">
                        <img src="images/rosa.jpg" alt="" />
                        <h3>Rosa Diaz</h3>
                        <p>
                            I had to change my booking due to covid and I know your team was under the pump but I was always reassured and knew my booking was being looked after. We will definitely book other holidays through travelopedia.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide slide">
                        <img src="images/amy.png" alt="" />
                        <h3>Amy Santiago</h3>
                        <p>
                            Travelopedia managed to secure us a free night in our chosen motel. Service was prompt, and will use the service again.
                        </p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-pagination"></div>
            </div>
        </section>

        <!-- review section ends -->

        <!-- Footer -->
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
                    <a href="#home"><i class="fas fa-chevron-right"></i>Home </a>
                    <a href="#packages"><i class="fas fa-chevron-right"></i>Packages </a>
                    <a href="#featured"><i class="fas fa-chevron-right"></i>Featured </a>
                    <a href="#review"><i class="fas fa-chevron-right"></i>Review </a>
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
        <script>
            var swiper = new Swiper(".review-slider", {
                loop: true,
                spaceBetween: 30,
                centeredSlides: true,
                autoplay: {
                    delay: 5500,
                    disableOnInteraction: false,
                },
                pagination: {
                    el: ".swiper-pagination",
                },
            });
            AOS.init({
                duration: 800,
                delay: 400,
            });
        </script>
    </form>
</body>
</html>
