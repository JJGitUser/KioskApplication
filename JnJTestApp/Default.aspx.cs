using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace JnJTestApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void Module1_Click(object sender, ImageClickEventArgs e)
        {

            //Add Module Value
            Hidden_ModuleID.Value = "1";
            //--Insert Log to DB
            Insert_Log(this, e);

            //--Get Url from Database
            Get_Url(this, e);

            //--Redirect to new page using Js
            ClientScript.RegisterStartupScript(this.GetType(), "OpenWin", "<script>openNewWin('" + Hidden_Url.Value + "')</script>");
            Hidden_Url.Value = "";
        }
        protected void Module2_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "2";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module3_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "3";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module4_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "4";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module5_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "5";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module6_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "6";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module7_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "7";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module8_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "8";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module9_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "9";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module10_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "10";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }

        protected void Module11_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "11";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module12_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "12";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module13_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "13";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module14_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "14";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module15_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "15";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        protected void Module16_Click(object sender, ImageClickEventArgs e)
        {
            //Add Module Value
            Hidden_ModuleID.Value = "16";
            //--Insert Log to DB
            Insert_Log(this, e);
            //--Redirect to new page
            Response.Redirect("About.aspx");
        }
        
        protected void Insert_Log(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(db.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_I_AddLog ", con))
                {

                    string HostName = Environment.MachineName;
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Module", SqlDbType.VarChar).Value = Hidden_ModuleID.Value;
                    cmd.Parameters.Add("@Station_Name", SqlDbType.VarChar).Value = HostName;

                    con.Open();
                    cmd.ExecuteNonQuery();

                    con.Close();

                }
            }
            
        }

        protected void Get_Url(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(db.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_S_GetURL", con))

                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Module", SqlDbType.VarChar).Value = Hidden_ModuleID.Value;


                    con.Open();
                    cmd.ExecuteNonQuery();
                    string url = Convert.ToString(cmd.ExecuteScalar());
                    Hidden_Url.Value = url;




                    con.Close();

                    Hidden_ModuleID.Value = "0";
                }
            }

        }
    }
}