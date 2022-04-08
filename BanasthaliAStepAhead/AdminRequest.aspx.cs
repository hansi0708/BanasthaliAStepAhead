using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class AdminRequest : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDBFileName=|DataDirectory|\\D1.mdf;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            LeaveIdLabel.Text = Session["Leaveid"].ToString();

            conn.Open();
            string str = "Select * from Leave where LeaveId=" + LeaveIdLabel.Text;
            SqlCommand com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                IdLabel.Text = reader["Id"].ToString();
                NameLabel.Text = reader["StudentName"].ToString();
                ReasonLabel.Text = reader["Reason"].ToString();
                HostelLabel.Text = reader["Hostel_Name"].ToString();
                CourseLabel.Text = reader["Class"].ToString();
                GuardianLabel.Text = reader["GuardianName"].ToString();
                FromLabel.Text = reader["From"].ToString();
                ToLabel.Text = reader["To"].ToString();
                AloneLabel.Text = reader["Alone"].ToString();
                AccLabel.Text = reader["AccName"].ToString();
                RelLabel.Text = reader["Relationship"].ToString();
                AdLabel.Text = reader["Address"].ToString();
                PhoneLabel.Text = reader["Phone"].ToString();
                DALabel.Text = reader["DAddress"].ToString();
                StatusLabel.Text = reader["Status"].ToString();
            }
            reader.Close();
            conn.Close();
        }
    }
}