 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Travelopedia
{
    public partial class LoginReg : System.Web.UI.Page
    {
        HttpCookie userInfo = new HttpCookie("userInfo");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserData where Email='" + email.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already Exists");
                }
                conn.Close();

            }
            else
            {
                HttpCookie reqCookies = Request.Cookies["userInfo"];
                if (reqCookies != null)
                {
                    loginemail.Text = reqCookies["mail"].ToString();
                }
            }

        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            if (loginemail.Text == "Admin" && loginpass.Text == "1707005")
            {
                Response.Redirect("Admin.aspx");
            }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where Email='" + loginemail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1) //if the user already exists
            {
                conn.Open();
                string checkPasswordQuery = "Select password from UserData where Email='" + loginemail.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == loginpass.Text)
                {
                    string checkfnQuery = "Select FirstName from UserData where Email='" + loginemail.Text + "'";
                    SqlCommand fnComm = new SqlCommand(checkfnQuery, conn);
                    string fn = fnComm.ExecuteScalar().ToString().Replace(" ", "");
                    string checklnQuery = "Select LastName from UserData where Email='" + loginemail.Text + "'";
                    SqlCommand lnComm = new SqlCommand(checklnQuery, conn);
                    string ln = lnComm.ExecuteScalar().ToString().Replace(" ", "");
                    Session["New"] = ' '+fn + ' ' + ln;
                    Response.Write("Password is correct");
                    //HttpCookie reqCookies = Request.Cookies["userInfo"];
                    //HttpCookie userInfo = new HttpCookie("userInfo");
                    //userInfo["UserName"] = fn + ' ' + ln; ;
                    //userInfo["mail"] = loginemail.Text;
                    //userInfo["pass"] = loginpass.Text;
                    //userInfo.Expires = DateTime.Now.AddMonths(1);
                    //Response.Cookies.Add(userInfo);
                    string checkidQuery = "Select ID from UserData where Email='" + loginemail.Text + "'";
                    com = new SqlCommand(checkidQuery, conn);
                    string idd = com.ExecuteScalar().ToString().Replace(" ", "");
                    userInfo["UserID"] = idd;
                    //if (reqCookies == null)
                    //{
                       
                    //}

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("Password is Not Correct");
                }
                //conn.Close();
            }
        }

        protected void submitreg_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UserData (FirstName,LastName,Email,Password,Country,Gender,DateofBirth) values (@fname,@lname,@emaill,@passw,@coun,@gend,@db)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@fname", firstname.Text);
                com.Parameters.AddWithValue("@lname", lastname.Text);
                com.Parameters.AddWithValue("@emaill", email.Text);
                com.Parameters.AddWithValue("@passw", pass.Text);
                com.Parameters.AddWithValue("@coun", country.Text);
                com.Parameters.AddWithValue("@gend", gender.Text);
                com.Parameters.AddWithValue("@db", Convert.ToDateTime(DOB.Text));

                com.ExecuteNonQuery();

                
                userInfo["UserName"] = firstname.Text + ' ' + lastname.Text; ;
                userInfo["mail"] = email.Text;
                string checkidQuery = "Select ID from UserData where Email='" + email.Text + "'";
                com = new SqlCommand(checkidQuery, conn);
                string idd = com.ExecuteScalar().ToString().Replace(" ", "");
                userInfo["UserID"] = idd;
                userInfo.Expires = userInfo.Expires = DateTime.Now.AddMonths(1);
                Response.Cookies.Add(userInfo);
               


                Response.Redirect("Home.aspx");
                Response.Write("Registration is successful");



                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }
    }
}