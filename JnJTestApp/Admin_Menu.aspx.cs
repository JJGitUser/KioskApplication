using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JnJTestApp
{
    public partial class Admin_Menu : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("Login_Admin.aspx");
                }
               
            }

        }

        protected void Users_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("New_User.aspx");

        }

        protected void Reports_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Kiosk_log.aspx");

        }

        protected void Module_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Module_Manager.aspx");

        }
    }
}