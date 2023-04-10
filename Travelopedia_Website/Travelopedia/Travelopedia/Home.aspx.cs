using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Travelopedia
{
    public partial class Home : System.Web.UI.Page
    {
        string name,idp;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                name = reqCookies["UserName"].ToString();
                idp = reqCookies["UserID"].ToString();
            }
            Label1.Text = name;
            Session["idp"] = idp;
            SqlConnection con;
            SqlDataAdapter da;
            DataSet ds;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            da = new SqlDataAdapter("select * from Image_Details", con);
            ds = new DataSet();
            da.Fill(ds);
            da.Dispose();
            datashowlist.DataSource = ds;
            datashowlist.DataBind();
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
        protected void homenav_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void about_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void blog_Click(object sender, EventArgs e)
        {
            Response.Redirect("Blog.aspx");
        }

        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void logout_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("LoginReg.aspx");
        }

        protected void search1_Click(object sender, EventArgs e)
        {
            Session["Location"] = location.Text;
            Session["ad"] = arrivald.Text;
            Session["dd"] = departured.Text;
            Session["adult"] = adultenum.Text;
            Session["hotel"] = "this";
            Response.Redirect("BookPage.aspx");
        }

        protected void search2_Click(object sender, EventArgs e)
        {
            Session["From"]=locationf.Text;
            Session["To"]=locationt.Text;
            Session["jdate"]=jdate.Text;
            Session["seatr"] = num.Text;
            //profile.Text = Hidden.Value.ToString();
            if (Hidden.Value.ToString() == "plane")
            {
                Session["flight"] = "this";
                Session["hotel"] = null;
                Session["car"] = null;
                Session["bus"] = null;
            }
            else if (Hidden.Value == "bus")
            {
                Session["bus"] = "this";
                Session["hotel"] = null;
                Session["car"] = null;
                Session["flight"] = null;
            }
            else
            {
                Session["Car"] = "this";
                Session["hotel"] = null;
                Session["bus"] = null;
                Session["flight"] = null;
            }

            Response.Redirect("BookPage.aspx");
        }

        protected void profile_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void bookings_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookings.aspx");
        }

        protected void b_Click(object sender, EventArgs e)
        {
            int tid = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Session["tid"] = tid.ToString();
            Session["tourp"] = "this";
            Session["bus"] = null;
            Session["flight"] = null;
            Session["hotel"] = null;
            Session["car"] = null;
            Response.Redirect("Payment.aspx");
        }


    }
}