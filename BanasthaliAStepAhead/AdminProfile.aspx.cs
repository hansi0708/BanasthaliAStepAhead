﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshita\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\BSADatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            IdLabel.Text = Session["id"].ToString();

            conn.Open();
            string str = "Select * from Admin where Id=" + IdLabel.Text;
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
    }
}