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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGrid();
            }
        }

        private void SaveImage()
        {
            if (FileUpload1.HasFile)
            {
                int imagefilelenth = FileUpload1.PostedFile.ContentLength;
                byte[] imgarray = new byte[imagefilelenth];
                HttpPostedFile image = FileUpload1.PostedFile;
                image.InputStream.Read(imgarray, 0, imagefilelenth);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Insert into ImageDemo (ImgName, Img) values (@ImageName, @Image)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@ImageName", SqlDbType.VarChar).Value = TextBox1.Text;
                cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imgarray;
                cmd.ExecuteNonQuery();
                BindGrid();
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            SaveImage();
        }
        public void BindGrid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select id, ImgName, Img from ImageDemo", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gv.DataSource = dr;
            gv.DataBind();
        }

     
    }
}