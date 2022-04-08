using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class HODProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDBFileName=|DataDirectory|\\D1.mdf;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            IdLabel.Text = Session["id"].ToString();

            conn.Open();
            string str = "Select * from HOD where Id=" + IdLabel.Text;
            SqlCommand com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                NameLabel.Text = reader["Name"].ToString();
                EmailLabel.Text = reader["Email"].ToString();
            }
            reader.Close();
            conn.Close();
        }

        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
       /* protected void Button1_Click(object sender, EventArgs e)
        {

            string prevPage = Request.UrlReferrer.ToString();
            Response.Redirect(prevPage);
        }*/
    }
}