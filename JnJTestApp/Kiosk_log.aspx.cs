
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;


namespace JnJTestApp
{
    public partial class Kiosk_log : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("Login_Admin.aspx");
                }

                GvVisitas.DataSource = GetData("exec SP_S_GetHistory '" + Module_ddl.SelectedValue + "','" + Station_ddl.SelectedValue + "','" + StartDate.Value + "','" + EndDate.Value + "'");
                GvVisitas.DataBind();

                this.Bind_Module();
                this.Bind_Stations();
                //this.refreshdata();
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {

            this.refreshdata();

        }

        protected void refreshdata()
        {

            SqlConnection con = new SqlConnection(db.ConnectionString);
            SqlCommand cmd = new SqlCommand("exec SP_S_GetHistory '" + Module_ddl.SelectedValue + "','" + Station_ddl.SelectedValue + "','" + StartDate.Value + "','" + EndDate.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GvVisitas.DataSource = ds;
            GvVisitas.DataBind();

        }

        protected void Bind_Module()
        {

            SqlConnection con = new SqlConnection(db.ConnectionString);
            SqlCommand cmd = new SqlCommand("Select Menu_Name from Main_Menu ", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Module_ddl.DataTextField = "Menu_Name";
            Module_ddl.DataValueField = "Menu_Name";
            Module_ddl.DataSource = ds;
            Module_ddl.DataBind();

        }

        protected void Bind_Stations()
        {

            SqlConnection con = new SqlConnection(db.ConnectionString);
            SqlCommand cmd = new SqlCommand("Select HostName from Stations ", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Station_ddl.DataTextField = "HostName";
            Station_ddl.DataValueField = "HostName";
            Station_ddl.DataSource = ds;
            Station_ddl.DataBind();

        }

        private static DataTable GetData(string query)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["DLMConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = query;
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string Menu_id = GvVisitas.DataKeys[e.Row.RowIndex].Values[0].ToString();
                string Date_Start = GvVisitas.DataKeys[e.Row.RowIndex].Values[1].ToString();
                string Date_End = GvVisitas.DataKeys[e.Row.RowIndex].Values[2].ToString();
                GridView gvDetails = e.Row.FindControl("gvDetails") as GridView;
                //gvDetails.DataSource = GetData(string.Format("select a.Spare1 as Modulo, b.Hostname, c.Location_name, a.created_at as [Date] from Main_Menu_log a with(NoLock), Stations b With(Nolock), Locations c With(NoLock)  where a.Menu_id='{0}' and a.created_at between '{1}' and '{2}'  and a.station_id=b.id and a.Location_id=c.id ", Menu_id, Date_Start, Date_End));
                gvDetails.DataSource = GetData(string.Format("exec SP_S_GetHistory_Details '{0}','' ,'{1}','{2}' ", Menu_id, Date_Start, Date_End));
                gvDetails.DataBind();
            }
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvVisitas.PageIndex = e.NewPageIndex;
            this.refreshdata();
        }

        protected void ExportToExcel(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                GvVisitas.AllowPaging = false;
                this.refreshdata();

                GvVisitas.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in GvVisitas.HeaderRow.Cells)
                {
                    cell.BackColor = GvVisitas.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in GvVisitas.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = GvVisitas.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = GvVisitas.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                }

                GvVisitas.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void Filter_chck_CheckedChanged(object sender, EventArgs e)
        {
            if (StartDate.Visible == false)
            {
                StartDate.Visible = true;
                EndDate.Visible = true;
                Startlbl.Visible = true;
                Endlbl.Visible = true;

            }
            else
            {
                StartDate.Visible = false;
                EndDate.Visible = false;
                Startlbl.Visible = false;
                Endlbl.Visible = false;
                StartDate.Value = "";
                EndDate.Value = "";
            }
        }
    }
}