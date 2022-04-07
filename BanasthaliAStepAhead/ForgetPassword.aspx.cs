using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=(LocalD SqlConnection con = new SqlConB)\\MSSQLLocalDB;AttachDbFileName=|DataDirectory|\\D1.mdf;Integrated Security=True;");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string s1 = "";

            SqlCommand cmd = new SqlCommand("Select * from SignupTable Where Email='" + TextBox1.Text + "' and Id='" + TextBox2.Text + "' ", con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                s1 = dr[0].ToString();

                TextBox1.Text = dr[0].ToString();

                TextBox2.Text = dr[1].ToString();
            }

            if (s1 == "")

            {

                TextBox1.Text = "";

                TextBox2.Text = "";



                Label5.Text = "not found";
            }
            else
            {
                TextBox1.Text = "";

                TextBox2.Text = "";
                Label5.Text = "success";
            }

            con.Close();
        }
    }
}





