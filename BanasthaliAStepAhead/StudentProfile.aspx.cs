using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDBFileName=|DataDirectory|\\D1.mdf;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            IdLabel.Text = Session["id"].ToString();

            conn.Open();
            string str = "Select * from Student where Id="+IdLabel.Text;
            SqlCommand com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
               // string pic= reader["Image"].ToString();
              //  string picture = "~/Upload/" + str.ToString();

              //  byte[] imagem = System.Text.Encoding.ASCII.GetBytes(pic);
              ////  string base64String = Convert.ToBase64String(imagem);
              //  ProfileImage.ImageUrl=String.Format("data:image/jpg;base64,{0}", base64String);
                // ProfileImage.ImageUrl = "data:image/png;base64," + base64String;
              //  ProfileImage.Visible = true;

                NameLabel.Text = reader["Name"].ToString();
                EmailLabel.Text = reader["Email"].ToString();
                HostelLabel.Text = reader["Hostel_Name"].ToString();
                CourseLabel.Text = reader["Course"].ToString();
                DepLabel.Text = reader["Department"].ToString();
            }
            reader.Close();
            conn.Close();

        }

        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}