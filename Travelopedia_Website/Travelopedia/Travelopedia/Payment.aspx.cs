using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Travelopedia
{
    public partial class Payment : System.Web.UI.Page
    {
        string floc, tloc, no, airlinename, departuretime,find, aseats;
        SqlConnection con;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            string User_name = string.Empty;
            string User_ID = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_ID = reqCookies["UserID"].ToString();
            }
            Label1.Text = User_name;  
            if (!IsPostBack)
            {
                if (Session["flight"] != null)
                {
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    con.Open();
                    floc = Session["From"].ToString();
                    tloc = Session["To"].ToString();
                    no = Session["flightno"].ToString();
                    find = "select airline_name from flight_details join flight on flight.id = flight_details.flight_id where flight_id='" + no + "' and from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    com = new SqlCommand(find, con);
                    airlinename = Convert.ToString(com.ExecuteScalar().ToString());
                    find = "select departure_time from flight_details join flight on flight.id = flight_details.flight_id where flight_id='" + no + "' and from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    com = new SqlCommand(find, con);
                    departuretime = Convert.ToString(com.ExecuteScalar().ToString());
                    Session["flna"] = airlinename;
                    find = "select available_seats from flight_details join flight on flight.id = flight_details.flight_id where flight_id='" + no + "' and from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    com = new SqlCommand(find, con);
                    aseats = Convert.ToString(com.ExecuteScalar().ToString());
                    Session["fseats"] = aseats;
                    an.Text = airlinename;
                    from.Text = floc;
                    To.Text = tloc;
                    fn.Text = no;
                    dt.Text = Session["jdate"].ToString();
                    am.Text = Session["seatr"].ToString();
                    dti.Text = departuretime;
                    Session["dtt"] = departuretime;
                    nm.Visible = false; nm1.Visible = false;
                    pri.Visible = false; pri1.Visible = false;
                    ds.Visible = false; ds1.Visible = false;
                    ytt.Visible = false; ytt1.Visible = false;
                }
                else if (Session["bus"] != null)
                {
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    con.Open();
                    floc = Session["From"].ToString();
                    tloc = Session["To"].ToString();
                    no = Session["coachno"].ToString();
                    find = "select company_name from Bus_Details join Bus on Bus.id = Bus_Details.bus_id where bus_id='" + no + "' and from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    com = new SqlCommand(find, con);
                    Session["bna"] = Convert.ToString(com.ExecuteScalar().ToString());
                    find = "select departure_time from Bus_Details join Bus on Bus.id = Bus_details.bus_id where bus_id='" + no + "' and from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    com = new SqlCommand(find, con);
                    departuretime = Convert.ToString(com.ExecuteScalar().ToString());
                    find = "select available_seats from Bus_Details join Bus on Bus.id = Bus_details.bus_id where bus_id='" + no + "' and from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    com = new SqlCommand(find, con);
                    Session["bseats"] = Convert.ToString(com.ExecuteScalar().ToString());
                    an.Text = Session["bna"].ToString();
                    from.Text = floc;
                    To.Text = tloc;
                    fn.Text = no;
                    dt.Text = Session["jdate"].ToString();
                    am.Text = Session["seatr"].ToString();
                    dti.Text = departuretime;
                    Session["dtt"] = departuretime;
                    nm.Visible = false; nm1.Visible = false;
                    pri.Visible = false; pri1.Visible = false;
                    ds.Visible = false; ds1.Visible = false;
                    ytt.Visible = false; ytt1.Visible = false;
                }
                else if (Session["tourp"] != null)
                {
                    an.Visible = false; an1.Visible = false;
                    from.Visible = false; from1.Visible = false;
                    To.Visible = false; To1.Visible = false;
                    fn.Visible = false; fn1.Visible = false;
                    dt.Visible = false; dt1.Visible = false;
                    am.Visible = false; am1.Visible = false;
                    dti.Visible = false; dti1.Visible = false;
                    int tpnn = Convert.ToInt32(Session["tid"]);
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    con.Open();
                    find = "select pname from Image_Details where tpid='" + tpnn + "';";
                    com = new SqlCommand(find, con);
                    string pname = Convert.ToString(com.ExecuteScalar().ToString());
                    Session["placet"] = pname;
                    find = "select price from Image_Details where tpid='" + tpnn + "';";
                    com = new SqlCommand(find, con);
                    string price = Convert.ToString(com.ExecuteScalar().ToString());
                    Session["pricet"] = price;
                    find = "select description from Image_Details where tpid='" + tpnn + "';";
                    com = new SqlCommand(find, con);
                    string description = Convert.ToString(com.ExecuteScalar().ToString());
                    Session["dest"] = description ;
                    nm.Text = pname;
                    pri.Text = price;
                    ds.Text = description;

                }
            }
            

        }

        protected void buy_Click(object sender, EventArgs e)
        {
            string User_name = string.Empty;
            string User_ID = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_ID = reqCookies["UserID"].ToString();
            }
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            if (Session["flight"] != null)
            {

                

                int num = Convert.ToInt32(Session["seatr"]);
                int p = Convert.ToInt32(Session["fseats"]) - Convert.ToInt32(Session["seatr"]);
                if (p >= 0)
                {
                    string updateQuery = "UPDATE Flight_Details SET available_seats = @st Where flight_id = @ii and from_loc=@fl and to_loc=@tl";
                    com = new SqlCommand(updateQuery, con);
                    com.Parameters.AddWithValue("@st", p);
                    com.Parameters.AddWithValue("@ii", Session["flightno"].ToString());
                    com.Parameters.AddWithValue("@fl", Session["From"].ToString());
                    com.Parameters.AddWithValue("@tl", Session["To"].ToString());
                    com.ExecuteNonQuery();

                    string insertQuery = "insert into Flight_Ticket(UserID,Username,flight_id,departure_date,departure_time,passengers,flightname,from_loc,to_loc) values (@userid,@uname,@hi,@hn,@rc,@pp,@ff,@ad,@dd)";
                    com = new SqlCommand(insertQuery, con);
                    com.Parameters.AddWithValue("@userid", User_ID);
                    com.Parameters.AddWithValue("@uname", User_name);
                    com.Parameters.AddWithValue("@hi", Session["flightno"].ToString());
                    com.Parameters.AddWithValue("@hn", Session["jdate"].ToString());
                    com.Parameters.AddWithValue("@rc", Session["dtt"].ToString());
                    com.Parameters.AddWithValue("@pp", Session["seatr"].ToString());
                    com.Parameters.AddWithValue("@ff", Session["flna"].ToString());
                    com.Parameters.AddWithValue("@ad", Session["From"].ToString());
                    com.Parameters.AddWithValue("@dd", Session["To"].ToString());
                    com.ExecuteNonQuery();
                }
                

                
            }
            else if (Session["bus"] != null)
            {
                int num = Convert.ToInt32(Session["seatr"]);
                int p = Convert.ToInt32(Session["bseats"]) - Convert.ToInt32(Session["seatr"]);

                if (p >= 0)
                {
                    string updateQuery = "UPDATE Bus_Details SET available_seats = @st Where bus_id = @ii and from_loc=@fl and to_loc=@tl";
                    com = new SqlCommand(updateQuery, con);
                    com.Parameters.AddWithValue("@st", p);
                    com.Parameters.AddWithValue("@ii", Session["coachno"].ToString());
                    com.Parameters.AddWithValue("@fl", Session["From"].ToString());
                    com.Parameters.AddWithValue("@tl", Session["To"].ToString());
                    com.ExecuteNonQuery();

                    string insertQuery = "insert into Bus_Ticket(UserID,Username,bus_id,departure_date,departure_time,passengers,companyname,from_loc,to_loc) values (@userid,@uname,@hi,@hn,@rc,@pp,@ff,@ad,@dd)";
                    com = new SqlCommand(insertQuery, con);
                    com.Parameters.AddWithValue("@userid", User_ID);
                    com.Parameters.AddWithValue("@uname", User_name);
                    com.Parameters.AddWithValue("@hi", Session["coachno"].ToString());
                    com.Parameters.AddWithValue("@hn", Session["jdate"].ToString());
                    com.Parameters.AddWithValue("@rc", Session["dtt"].ToString());
                    com.Parameters.AddWithValue("@pp", Session["seatr"].ToString());
                    com.Parameters.AddWithValue("@ff", Session["bna"].ToString());
                    com.Parameters.AddWithValue("@ad", Session["From"].ToString());
                    com.Parameters.AddWithValue("@dd", Session["To"].ToString());
                    com.ExecuteNonQuery();
                }
                

                
            }
            else if (Session["tourp"] != null)
            {
                string ddd = ytt.Text;
                string insertQuery = "insert into TourBooking(UserID,Username,tourpid,place,des,sfrom,price) values (@userid,@uname,@hi,@hn,@rc,@pp,@ff)";
                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@userid", User_ID);
                com.Parameters.AddWithValue("@uname", User_name);
                com.Parameters.AddWithValue("@hi", Convert.ToInt32(Session["tid"]));
                com.Parameters.AddWithValue("@hn", Session["placet"].ToString());
                com.Parameters.AddWithValue("@rc", Session["dest"].ToString());
                com.Parameters.AddWithValue("@pp", ddd);
                com.Parameters.AddWithValue("@ff", Session["pricet"].ToString());
                com.ExecuteNonQuery();

            }
            Response.Redirect("Bookings.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("LoginReg.aspx");
        }

        protected void bookings_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookings.aspx");
        }
    }
}