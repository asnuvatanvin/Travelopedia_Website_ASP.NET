<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookPage.aspx.cs" Inherits="Travelopedia.BookPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                <asp:LinkButton ID="bookings" runat="server" CssClass="navbarbutton" OnClick="bookings_Click">Bookings</asp:LinkButton>
                <asp:LinkButton ID="logout" runat="server" CssClass="navbarbutton" OnClick="logout_Click">Log Out</asp:LinkButton>
            </div>
        </header>
        <section>
            <input id="Hidden" type="hidden" runat="server" />
            <div class="table-wrapper">
                <asp:GridView ID="collect" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Hotel Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc"/>
                        <asp:BoundField DataField="Description" HeaderText="Address" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc"/>
                        <asp:BoundField DataField="Street" HeaderText="Description" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc"/>
                        <asp:TemplateField HeaderStyle-CssClass="headc">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkselect" Text="Book Now" runat="server" CommandArgument='<%# Eval("ID") %>' OnClick="lnkselect_Click"  CssClass="tbb"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:GridView ID="collectr" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="Room_num" HeaderText="Number of Available Rooms" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="R_Type" HeaderText="Room Type" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="R_price" HeaderText="Expense per Night" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="Currency" HeaderText="Currency"  HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc"/>
                        <asp:TemplateField HeaderStyle-CssClass="headc">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkselect1" Text="Book Now" runat="server" CommandArgument='<%# Eval("Hotel_ID") %>' OnClick="lnkselect1_Click" CssClass="tbb" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
               
                <asp:GridView ID="collectf" runat="server" AutoGenerateColumns="false" CssClass="fl-table" >
                    <Columns>
                        <asp:BoundField DataField="airline_name" HeaderText="Airline" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="flight_id" HeaderText="Flight No" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="arrival_time" HeaderText="Arrival Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="Departure City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="Arrival City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="duration" HeaderText="Flight Duration" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="price" HeaderText="Price(Economy 1 Person)" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="available_seats" HeaderText="Available Seats" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:TemplateField HeaderStyle-CssClass="headc">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkselectf" Text="Buy Now" runat="server" CommandArgument='<%# Eval("flight_id") %>' OnClick="lnkselectf_Click" CssClass="tbb" />
                                <%--<button type="button" class="tbb" onclick="openpayment('fly')">Buy Now</button>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                 <asp:GridView ID="collectb" runat="server" AutoGenerateColumns="false" CssClass="fl-table">
                    <Columns>
                        <asp:BoundField DataField="company_name" HeaderText="Company Name" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="bus_id" HeaderText="Coach No" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="departure_time" HeaderText="Departure Time" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="from_loc" HeaderText="Departure City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="to_loc" HeaderText="Arrival City" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />        
                        <asp:BoundField DataField="price" HeaderText="Price(1 Person)" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:BoundField DataField="available_seats" HeaderText="Available Seats" HeaderStyle-CssClass="headc" ItemStyle-CssClass="bodyc" />
                        <asp:TemplateField HeaderStyle-CssClass="headc">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkselectb" Text="Buy Now" runat="server" OnClick="lnkselectb_Click" CssClass="tbb" CommandArgument='<%# Eval("bus_id") %>'/>
                                <%--<button type="button" class="tbb" onclick="openpayment()">Buy Now</button>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

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

                    <asp:Button ID="lnkselectv" Text="Buy Now" runat="server" OnClick="lnkselectf_Click" CssClass="btnform"></asp:Button>
                    <button type="button" class="btnform cancel" onclick="closepayment()">Close</button>
                </div>
            </div>
        </section>

       <!-- footer -->
       <section class="footer">

            <div class="box-container">

                <div class="box" data-aos="fade-up">
                    <h3>about us</h3>
                    <p>Travelopedia has been around for 5 years providing our users the best possible service to live their dream to travel around the world.</p>
                </div>

                <div class="boxx" data-aos="fade-up">
                    <h3>follow us</h3>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-pinterest"></i></a>
                </div>


                <div class="box" data-aos="fade-up">
                    <h3>quick links</h3>
                    <a href="#"><i class="fas fa-chevron-right"></i>home </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>packages </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>services </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>pricing </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>review </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>contact </a>
                    <a href="#"><i class="fas fa-chevron-right"></i>blogs </a>
                </div>

                <div class="box" data-aos="fade-up">
                    <h3>contact info</h3>
                    <a href="#"><i class="fas fa-phone"></i>+123-456-7890 </a>
                    <a href="#"><i class="fas fa-phone"></i>+111-222-3333 </a>
                    <a href="#"><i class="fas fa-envelope"></i>asnuva.tanvin@gmail.com </a>
                    <a href="#"><i class="fas fa-map-marker-alt"></i>dhaka, bangladesh </a>
                </div>
            </div>
        </section>
        <script src="travely.js">
        </script>
    </form>
    
</body>
</html>
