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
    public partial class New_User : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("Login_Admin.aspx");
                }
                else
                {
                    this.refreshdata();
                }
            }

        }

        protected void refreshdata()
        {

            SqlConnection con = new SqlConnection(db.ConnectionString);
            SqlCommand cmd = new SqlCommand("select user_wwid, [User_name], Email  from users with (NoLock) order by created_at desc", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GVusers.DataSource = ds;
            GVusers.DataBind();

        }

        protected void GVusers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GVusers.PageIndex = e.NewPageIndex;
            this.refreshdata();

        }

        protected void AddUser_click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(db.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_I_User_Add ", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@WWID", SqlDbType.VarChar).Value = ID.Value;
                    cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = Name.Value;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Pass.Value;
                    cmd.Parameters.Add("@GrpId", SqlDbType.VarChar).Value = "3";
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = Email.Value;
                    cmd.Parameters.Add("@Created", SqlDbType.VarChar).Value = (string) Session["user"];

                    con.Open();
                    //cmd.ExecuteNonQuery();
                    string Message = Convert.ToString(cmd.ExecuteScalar());
                   
                    con.Close();
                    if (Message == "Success")
                    {
                        Messagelbl.Text = "User Saved";
                        Messagelbl.Visible = true;
                        Messagelbl.ForeColor = System.Drawing.Color.Green;
                        ClientScript.RegisterStartupScript(this.GetType(), "HideLabel", "<script type=\"text/javascript\">setTimeout(\"document.getElementById('" + Messagelbl.ClientID + "').style.display='none'\",2000)</script>");

                        this.refreshdata();

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

        protected void GVusers_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GVusers.EditIndex = e.NewEditIndex;
            refreshdata();
        }

        protected void GVusers_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Busca los controles  
            SqlConnection con = new SqlConnection(db.ConnectionString);
            Label id = GVusers.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            TextBox name = GVusers.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
            TextBox Email = GVusers.Rows[e.RowIndex].FindControl("txt_Email") as TextBox;
            con = new SqlConnection(db.ConnectionString);
            con.Open();
            //Update de los datos por medio del ID
            SqlCommand cmd = new SqlCommand("Update users set user_name='" + name.Text + "',Email='" + Email.Text + "' where user_WWID=" + Convert.ToInt32(id.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //El edit Index lo pone a -1 para cancelar 
            GVusers.EditIndex = -1;
            //llama el refresdata event para actualizar tabla
            refreshdata();
        }
        protected void GVusers_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GVusers.EditIndex = -1;
            refreshdata();
        }
    }
}