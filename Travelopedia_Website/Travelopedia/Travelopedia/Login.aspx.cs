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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
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
                string password = passComm.ExecuteScalar().ToString().Replace(" ","");
                if (password == loginpass.Text)
                {
                    Session["New"] = loginemail.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("Password is Not Correct");
                }
                //conn.Close();

            }
            else
            {
                Response.Write("Email is not correct");
            }
            conn.Close();

        }
    }
}