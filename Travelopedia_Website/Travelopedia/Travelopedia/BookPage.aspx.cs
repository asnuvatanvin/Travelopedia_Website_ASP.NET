using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;

namespace Travelopedia
{
    public partial class BookPage : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;";
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

            if (Session["hotel"] != null)
            {
                using (SqlConnection SqlCon = new SqlConnection(connectionString))
                {
                    SqlCon.Open();
                    string loc = Session["Location"].ToString();
                    string find = "select ID,Name,Description,Street from Hotel where City_ID in(select ID from City where name='" + loc + "')";
                    SqlDataAdapter sqlDa = new SqlDataAdapter(find, SqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    collect.DataSource = dtbl;
                    collect.DataBind();

                }
                if (collect.Rows.Count > 0)
                {
                    GridViewRow row11 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                    TableHeaderCell cell11 = new TableHeaderCell();
                    cell11.Text = "HOTEL BOOKING";
                    cell11.ColumnSpan = 5;
                    row11.Controls.Add(cell11);
                    row11.BackColor = ColorTranslator.FromHtml("#4793e3");
                    collect.HeaderRow.Parent.Controls.AddAt(0, row11);
                }
                
            }
            else if (Session["flight"] != null)
            {
                using (SqlConnection SqlCon = new SqlConnection(connectionString))
                {
                    SqlCon.Open();
                    string floc = Session["From"].ToString();
                    string tloc = Session["To"].ToString();
                    string find = "select * from flight_details join flight on flight.id = flight_details.flight_id where from_loc= '"+floc+"' and to_loc='"+tloc+"';";
                    SqlDataAdapter sqlDa = new SqlDataAdapter(find, SqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    collectf.DataSource = dtbl;
                    collectf.DataBind();
                   
                }
                if (collectf.Rows.Count > 0)
                {
                    GridViewRow row8 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                    TableHeaderCell cell8 = new TableHeaderCell();
                    cell8.Text = "FLIGHT INFORMATION";
                    cell8.ColumnSpan = 10;
                    row8.Controls.Add(cell8);
                    row8.BackColor = ColorTranslator.FromHtml("#4793e3");
                    collectf.HeaderRow.Parent.Controls.AddAt(0, row8);
                }

            }
            else if (Session["bus"] != null)
            {
                using (SqlConnection SqlCon = new SqlConnection(connectionString))
                {
                    SqlCon.Open();
                    string floc = Session["From"].ToString();
                    string tloc = Session["To"].ToString();
                    string find = "select * from bus_details join bus on bus.id = bus_details.bus_id where from_loc= '" + floc + "' and to_loc='" + tloc + "';";
                    SqlDataAdapter sqlDa = new SqlDataAdapter(find, SqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    collectb.DataSource = dtbl;
                    collectb.DataBind();

                }
                if (collectb.Rows.Count > 0)
                {
                    GridViewRow row7 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                    TableHeaderCell cell7 = new TableHeaderCell();
                    cell7.Text = "ROOM INFORMATION";
                    cell7.ColumnSpan = 10;
                    row7.Controls.Add(cell7);
                    row7.BackColor = ColorTranslator.FromHtml("#4793e3");
                    collectb.HeaderRow.Parent.Controls.AddAt(0, row7);
                }
            }
        
           
        }

        protected void lnkselect_Click(object sender, EventArgs e)
        {
            int hotelid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            using (SqlConnection SqlConn = new SqlConnection(connectionString))
            {
                SqlConn.Open();
                string loc = Session["Location"].ToString();
                string find = "select Room_num,R_Type,R_price,Currency,Hotel_ID from Room where Hotel_ID ='" + hotelid + "'";
                SqlCommand findhn = new SqlCommand("select Name from Hotel where ID='" + hotelid + "'", SqlConn);
                Session["hotelname"] = findhn.ExecuteScalar().ToString().Replace(" ", "");
                SqlDataAdapter sqlDa = new SqlDataAdapter(find, SqlConn);
                DataTable dtbl1 = new DataTable();
                sqlDa.Fill(dtbl1);
                collectr.DataSource = dtbl1;
                collectr.DataBind();

            }
            if (collectr.Rows.Count > 0)
            {
                GridViewRow row1 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                TableHeaderCell cellb = new TableHeaderCell();
                cellb.Text = "ROOM INFORMATION";
                cellb.ColumnSpan = 5;
                row1.Controls.Add(cellb);
                row1.BackColor = ColorTranslator.FromHtml("#4793e3");
                collectr.HeaderRow.Parent.Controls.AddAt(0, row1);
            }
        }


        protected void lnkselect1_Click(object sender, EventArgs e)
        {
            int hotelid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Session["hotelid"] = hotelid.ToString();
            string User_name = string.Empty;
            string User_ID = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                User_ID = reqCookies["UserID"].ToString();
            }

            using (SqlConnection SqlCon = new SqlConnection(connectionString))
            {
                SqlCon.Open();
                string insertQuery = "insert into Hotel_Booking(UserID,User_Name,Hotel_ID,Hotel_Name,Room_capacity,StartDate,End_date) values (@userid,@uname,@hi,@hn,@rc,@ad,@dd)";
                SqlCommand com = new SqlCommand(insertQuery, SqlCon);
                com.Parameters.AddWithValue("@userid", User_ID);
                com.Parameters.AddWithValue("@uname", User_name);
                com.Parameters.AddWithValue("@hi", Session["hotelid"].ToString());
                com.Parameters.AddWithValue("@hn", Session["hotelname"].ToString());
                com.Parameters.AddWithValue("@rc", Session["adult"].ToString());
                com.Parameters.AddWithValue("@ad", Session["ad"].ToString());
                com.Parameters.AddWithValue("@dd", Session["dd"].ToString());
                com.ExecuteNonQuery();

            }
            Response.Redirect("Bookings.aspx");
        }

        protected void lnkselectf_Click(object sender, EventArgs e)
        {
            Session["flightno"] = Convert.ToString((sender as LinkButton).CommandArgument);
            //SqlConnection con;
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            //con.Open();
            Response.Redirect("Payment.aspx");
          

        }
        protected void lnkselectb_Click(object sender, EventArgs e)
        {
            Session["coachno"] = Convert.ToString((sender as LinkButton).CommandArgument);
            Response.Redirect("Payment.aspx");
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

        protected void homenav_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void about_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}