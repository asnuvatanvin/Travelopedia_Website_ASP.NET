using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;



namespace Travelopedia
{
    public partial class Profile : System.Web.UI.Page
    {

        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True;";
        string fname, lname, em, old, cont, gen;
        string User_ID = string.Empty;
        //DateTime dbb;
        protected void Page_Load(object sender, EventArgs e)
        {
            string User_name = string.Empty;
            string User_ID = string.Empty;
 
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                //User_ID = reqCookies["UserID"].ToString();
                //old = reqCookies["pass"].ToString();
                User_name = reqCookies["UserName"].ToString();
            }
            User_ID = Session["idp"].ToString();
            using (SqlConnection passcon = new SqlConnection(connectionString))
            {
                passcon.Open();
                string prof = "select Password from UserData where ID = '" + User_ID + "'";
                SqlCommand sq = new SqlCommand(prof, passcon);
                old = sq.ExecuteScalar().ToString().Replace(" ", "");
            }

            Label1.Text = User_name;
          
            if (!IsPostBack)
            {
                using (SqlConnection SqlCon = new SqlConnection(connectionString))
                {
                    SqlCon.Open();
                    string profile = "select * from UserData where ID = '" + User_ID + "'";
                    SqlDataAdapter sqlDa = new SqlDataAdapter(profile, SqlCon);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    foreach (DataRow row in dtbl.Rows)
                    {
                        fname = row["FirstName"].ToString().Replace(" ", "");
                        lname = row["LastName"].ToString().Replace(" ", "");
                        em = row["Email"].ToString().Replace(" ", "");
                        old = row["Password"].ToString().Replace(" ", "");
                        cont = row["Country"].ToString().Replace(" ", "");
                        gen = row["Gender"].ToString().Replace(" ", "");
                        firstName.Text = fname;
                        lastName.Text = lname;
                        email.Text = em;
                        gender.Text = gen;
                        country.Text = cont;
                    }
                    SqlCon.Close();
                }

            }
       
        }

        protected void save_Click(object sender, EventArgs e)
        {
            //lastName.Text = "here";
            //TextBox1.Text = User_ID;
            using (SqlConnection SqlCon = new SqlConnection(connectionString))
            {
                SqlCon.Open();
                string updateQuery = "UPDATE UserData SET LastName = @ln,FirstName = @fn, Email=@em, Password=@pass,Country=@coun, Gender=@gen Where ID = @i";
                SqlCommand com = new SqlCommand(updateQuery, SqlCon);
                com.Parameters.AddWithValue("@i", User_ID);
                com.Parameters.AddWithValue("@ln", lastName.Text);
                com.Parameters.AddWithValue("@fn", firstName.Text);
                com.Parameters.AddWithValue("@em", email.Text);
                if (!String.IsNullOrEmpty(npass.Text) && npass.Text != old)
                {
                    com.Parameters.AddWithValue("@pass", npass.Text);
                }
                else
                {
                    com.Parameters.AddWithValue("@pass", old);
                }
                com.Parameters.AddWithValue("@coun", country.Text);
                com.Parameters.AddWithValue("@gen", gender.Text);
                com.ExecuteNonQuery();
                SqlCon.Close();
            }
            //if (opass.Text.ToString() == old)
            //{
                
                
            //}
            
          
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
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

        protected void bookings_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookings.aspx");
        }
    }
}