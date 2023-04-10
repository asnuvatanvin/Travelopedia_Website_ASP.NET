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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserData where Email='"+ email.Text +"'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User alraedy Exists");
                }
                conn.Close();

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
                com.Parameters.AddWithValue("@fname",firstname.Text);
                com.Parameters.AddWithValue("@lname",lastname.Text);
                com.Parameters.AddWithValue("@emaill", email.Text);
                com.Parameters.AddWithValue("@passw", pass.Text);
                com.Parameters.AddWithValue("@coun", country.Text);
                com.Parameters.AddWithValue("@gend", gender.Text);
                com.Parameters.AddWithValue("@db", DOB.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Manager.aspx");
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