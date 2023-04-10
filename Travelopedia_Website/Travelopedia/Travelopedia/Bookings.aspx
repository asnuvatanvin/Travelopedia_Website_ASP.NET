<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="Travelopedia.Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Travelopedia Booking Page</title>
    <link rel="stylesheet" href="travely.css" />
    <link rel="stylesheet" href="table.css" />
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
                <asp:LinkButton ID="bookings" runat="server" CssClass="navbarbutton" >Bookings</asp:LinkButton>
                <asp:LinkButton ID="logout" runat="server" CssClass="navbarbutton" OnClick="logout_Click">Log Out</asp:LinkButton>
            </div>
        </header>
        <section>
            <div class="table-wrapper">
                <asp:GridView ID="hshow" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="User_Name" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Room_capacity" HeaderText="Person(s)" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="StartDate" HeaderText="Arrival Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="End_Date" HeaderText="Departure Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="table-wrapper">
                <asp:GridView ID="fticket" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="flightname" HeaderText="Airline Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="flight_id" HeaderText="Flight No" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="passengers" HeaderText="Ticket Amount" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_date" HeaderText="Departure Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="Departure City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="Arrival City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="table-wrapper">
                <asp:GridView ID="bticket" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="companyname" HeaderText="Bus Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="bus_id" HeaderText="Coach No" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_date" HeaderText="Departure Date" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="passengers" HeaderText="Ticket Amount" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="Departure City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="Arrival City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="table-wrapper">
                <asp:GridView ID="tpbook" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="User Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                         <asp:BoundField DataField="place" HeaderText="Destination" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="des" HeaderText="Description" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="sfrom" HeaderText="Tour Starts From" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="price" HeaderText="Price Per Person" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                    </Columns>
                </asp:GridView>
            </div>
        </section>
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
    </form>

     <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script> -->

        <script src="travely.js"></script>
</body>
</html>
