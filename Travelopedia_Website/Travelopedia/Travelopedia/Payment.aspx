<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Travelopedia.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--Font awesome cdn link-->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />


    <link
        rel="stylesheet"
        href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!--Custom CSS file link-->
    <link rel="stylesheet" href="payment.css" />

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
                        <asp:LinkButton ID="homenav" runat="server" CssClass="nl">Home</asp:LinkButton>
                    </li>
                    <%--<li><a href="#">About</a></li>--%>
                    <li>
                        <asp:LinkButton ID="about" runat="server" CssClass="nl">About</asp:LinkButton></li>
                    <%--<li><a href="#">Blog</a></li>--%>
                    <li>
                        <asp:LinkButton ID="blog" runat="server" CssClass="nl">Blog</asp:LinkButton></li>
                    <%--<li><a href="#">Contact</a></li>--%>
                    <li>
                        <asp:LinkButton ID="contact" runat="server" CssClass="nl">Contact</asp:LinkButton></li>
                </ul>
            </nav>
            <div class="parent" id="login-btn">
                <img src="images/user1.jpg" alt="" />
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="uname"></asp:Label>
                <%--<p class="uname">Asnuva Tanvin</p>--%>
            </div>
            <div class="navbar">
                <asp:LinkButton ID="profile" runat="server" CssClass="navbarbutton">Profile</asp:LinkButton>
                <asp:LinkButton ID="bookings" runat="server" CssClass="navbarbutton">Bookings</asp:LinkButton>
                <asp:LinkButton ID="logout" runat="server" CssClass="navbarbutton">Log Out</asp:LinkButton>
            </div>
        </header>
        <section>
            <div>
                
            </div>
        </section>

        <section class="ticketinfo">
                 <img src="images/ticket.png" />
                  <h3>Ticket Information</h3>

                    <asp:label runat="server" ID="an1"><b>Airline: </b></asp:label>
                    <asp:Label runat="server" ID="an" Text="Airline Name" CssClass="labelcss"></asp:Label>
            
                    <asp:label runat="server" ID="fn1"><b>Flight No: </b></asp:label>
                    <asp:Label runat="server" ID="fn" Text="Flight No" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="from1"><b>From: </b></asp:label>
                    <asp:Label runat="server" ID="from" Text="From" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="To1"><b>To: </b></asp:label>
                    <asp:Label runat="server" ID="To" Text="To" CssClass="labelcss"></asp:Label>
             
                    <asp:label runat="server" ID="dt1"><b>Journey Date: </b></asp:label>
                    <asp:Label runat="server" ID="dt" Text="Journey Date" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="am1"><b>Ticket Amount: </b></asp:label>
                    <asp:Label runat="server" ID="am" Text="Amount" CssClass="labelcss"></asp:Label>                    

                   <asp:label runat="server" ID="dti1"><b>Departure Time: </b></asp:label>
                    <asp:Label runat="server" ID="dti" Text="Departure Time" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="nm1"><b>Destination: </b></asp:label>
                    <asp:Label runat="server" ID="nm" Text="" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="pri1"><b>Price: </b></asp:label>
                    <asp:Label runat="server" ID="pri" Text="" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="ds1"><b>Description: </b></asp:label>
                    <asp:Label runat="server" ID="ds" Text="" CssClass="labelcss"></asp:Label>

                    <asp:label runat="server" ID="ytt1"><b>Enter Date: </b></asp:label>
                    <asp:Textbox runat="server" ID="ytt" TextMode="Date" CssClass="txtbox"></asp:Textbox>

        </section>

        <section class="float_container">
            
            <div class="form-popup" id="paymentform">
                <div action="" class="form-container">

                    <img src="images/visa.png" />
                    <label for="cn"><b>Card Number</b></label>
                    <asp:TextBox ID="cn" runat="server" placeholder="Card Number" CssClass="txtbx"></asp:TextBox>

                    <label for="cvc"><b>CVC</b></label>
                    <asp:TextBox ID="cvc" runat="server" placeholder="CVC" CssClass="txtbx"></asp:TextBox>

                    <label for="chn"><b>Card Holder Name</b></label>
                    <asp:TextBox ID="chn" runat="server" placeholder="Name" CssClass="txtbx"></asp:TextBox>

                    <label for="ed"><b>Experition Date</b></label>
                    <asp:TextBox ID="ed" runat="server" CssClass="txtbx" TextMode="date"></asp:TextBox>

                    <asp:LinkButton ID="tbook" runat="server" CssClass="btnform" Text="Book Now" OnClick="buy_Click"></asp:LinkButton>
                    <button type="button" class="btnform cancel">Close</button>
                </div>
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


        <!-- Header Ends Here -->
    </form>

     <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script> -->

        <script src="travely.js"></script>
</body>
</html>
