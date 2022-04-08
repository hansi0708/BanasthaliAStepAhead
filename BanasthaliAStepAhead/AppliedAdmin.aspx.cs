using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class AppliedAdmin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshita\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\BSADatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshita\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\BSADatabase.mdf;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("Select LeaveId,[From],[To] from Leave where Status = 'Approved by Head of Department'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = conn;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];

                //Fetch value of Name.
                string leaveId = (row.FindControl("LeaveId") as Label).Text;
                Session["Leaveid"] = leaveId;
                Response.Redirect("AdminRequest.aspx");
            }
        }
    }
}