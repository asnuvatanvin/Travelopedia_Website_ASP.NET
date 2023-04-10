using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travelopedia
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Lable_welcome.Text += Session["New"].ToString();

            }
            else
            {
                Response.Redirect("LoginReg.aspx");
            }
        }

        protected void Buttonlogout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("LoginReg.aspx");

        }
    }
}