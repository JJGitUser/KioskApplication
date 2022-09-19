using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace JnJTestApp
{
    public partial class Login_Admin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }

        }


        protected void Verify_User(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(db.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_S_Verify_login ", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@loginWWID", SqlDbType.VarChar).Value = WWID.Value;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Pass.Value;
                    con.Open();
                    //cmd.ExecuteNonQuery();
                    string Message = Convert.ToString(cmd.ExecuteScalar());

                    con.Close();
                    if (Message == "Entry_Success")
                    {
                        string HostName = Environment.MachineName;
                        Session["User"] = WWID.Value;
                        Session["HostName"] = HostName;
                        Response.Redirect("Admin_Menu.aspx");
                    }
                    else
                    {
                        Messagelbl.Text = Message;
                        Messagelbl.Visible = true;
                        Messagelbl.ForeColor = System.Drawing.Color.Red;
                        ClientScript.RegisterStartupScript(this.GetType(), "HideLabel", "<script type=\"text/javascript\">setTimeout(\"document.getElementById('" + Messagelbl.ClientID + "').style.display='none'\",2000)</script>");

                    }




                }
            }

        }

    }
}