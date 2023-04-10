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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            da = new SqlDataAdapter("select * from Image_Details", con);
            ds = new DataSet();
            da.Fill(ds);
            da.Dispose();
            gdImage.DataSource = ds;
            gdImage.DataBind();
        }
        protected void upload_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                cmd = new SqlCommand("insert into Image_Details (pname,Image,price,description) values(@pn,@Image,@p,@d)", con);
                cmd.Parameters.AddWithValue("@pn", pname.Text);
                cmd.Parameters.AddWithValue("@Image", "Images/" + filename);
                cmd.Parameters.AddWithValue("@p", price.Text);
                cmd.Parameters.AddWithValue("@d", descrip.Text);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                upload.Text = ex.Message;
            }
        }

        protected void fdelbb_Click(object sender, EventArgs e)
        {
            fdelb.Text = "here";
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            cmd = new SqlCommand("Delete from Flight where Id=@ii", con);
            cmd.Parameters.AddWithValue("@ii",flightdel.Text);
            cmd.ExecuteNonQuery();
        }
        

        protected void fdd_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            cmd = new SqlCommand("Delete from Flight_Details where Id=@ii and from_loc=@fl and to_loc=@tl", con);
            cmd.Parameters.AddWithValue("@ii", idf.Text);
            cmd.Parameters.AddWithValue("@fl", fromf.Text);
            cmd.Parameters.AddWithValue("@tl", tof.Text);
            cmd.ExecuteNonQuery();
        }  
    }
}