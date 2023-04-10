using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Travelopedia
{
    public partial class Bookings : System.Web.UI.Page
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
            Label1.Text =  User_name;           
 
            using (SqlConnection SqlCon1 = new SqlConnection(connectionString))
            {
                SqlCon1.Open();
                string find = "select * from Hotel_Booking where ID = '" + Convert.ToInt32(User_ID) + "'";
                SqlDataAdapter sqlDa = new SqlDataAdapter(find, SqlCon1);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                hshow.DataSource = dtbl;
                hshow.DataBind();
                find = "select * from Flight_Ticket where ID = '" + Convert.ToInt32(User_ID) + "'";
                sqlDa = new SqlDataAdapter(find, SqlCon1);
                dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                fticket.DataSource = dtbl;
                fticket.DataBind();
                find = "select * from Bus_Ticket where ID = '" + Convert.ToInt32(User_ID) + "'";
                sqlDa = new SqlDataAdapter(find, SqlCon1);
                dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                bticket.DataSource = dtbl;
                bticket.DataBind();
                find = "select * from TourBooking where ID = '" + Convert.ToInt32(User_ID) + "'";
                sqlDa = new SqlDataAdapter(find, SqlCon1);
                dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                tpbook.DataSource = dtbl;
                tpbook.DataBind();

            }

            if (fticket.Rows.Count > 0)
            {
                GridViewRow row = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                TableHeaderCell cell = new TableHeaderCell();
                cell.Text = "FLIGHT BOOKINGS";
                cell.ColumnSpan = 8;
                row.Controls.Add(cell);
                row.BackColor = ColorTranslator.FromHtml("#4793e3");
                fticket.HeaderRow.Parent.Controls.AddAt(0, row);
            
            }

            if (bticket.Rows.Count > 0)
            {
                GridViewRow row1 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                TableHeaderCell cellb = new TableHeaderCell();
                cellb.Text = "BUS TICKET BOOKINGS";
                cellb.ColumnSpan = 8;
                row1.Controls.Add(cellb);
                row1.BackColor = ColorTranslator.FromHtml("#4793e3");
                bticket.HeaderRow.Parent.Controls.AddAt(0, row1);
            }

            if (tpbook.Rows.Count > 0)
            {
                GridViewRow row2 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                TableHeaderCell cellt = new TableHeaderCell();
                cellt.Text = "TOUR PACKAGE BOOKINGS";
                cellt.ColumnSpan = 8;
                row2.Controls.Add(cellt);
                row2.BackColor = ColorTranslator.FromHtml("#4793e3");
                tpbook.HeaderRow.Parent.Controls.AddAt(0, row2);
            }

            if (hshow.Rows.Count > 0)
            {
                GridViewRow row3 = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
                TableHeaderCell cellh = new TableHeaderCell();
                cellh.Text = "HOTEL BOOKINGS";
                cellh.ColumnSpan = 8;
                row3.Controls.Add(cellh);
                row3.BackColor = ColorTranslator.FromHtml("#4793e3");
                hshow.HeaderRow.Parent.Controls.AddAt(0, row3);
            }
            


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
    }
}