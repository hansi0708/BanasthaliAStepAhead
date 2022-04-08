using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace BanasthaliAStepAhead
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDBFileName=|DataDirectory|\\D1.mdf;Integrated Security=True;");
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text=="Student")
            {
                conn.Open();
                string s1 = "";
                string str;
                bool IsExist = false;
                SqlCommand cmd = new SqlCommand("Select * from Student Where Email='" + EmailTxt.Text + "' ", conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    s1 = dr["Password"].ToString();

                    IsExist = true;
                    str = dr["Id"].ToString();
                    Session["id"] = str;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                  
                }
                conn.Close();
                if (IsExist)
                {
                    if (Cryptography.Decrypt(s1).Equals(PwdTxt.Text))
                    {
                       
                        Response.Redirect("StudentProfile.aspx");
                        Session.RemoveAll();
                        
                    }
                    else
                    {
                        MessageBox.Show("Password is wrong!...", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                }
                else  //showing the error message if user credential is wrong  
                {
                    MessageBox.Show("Please enter the valid credentials", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

            }
            else if (DropDownList1.SelectedItem.Text == "Warden")
            {
                conn.Open();
                string s1 = "";
                string str;
                bool IsExist = false;
                SqlCommand cmd = new SqlCommand("Select * from Warden Where Email='" + EmailTxt.Text + "' ", conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    s1 = dr["Password"].ToString();
                    str = dr["Id"].ToString();
                    Session["id"] = str;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                    IsExist = true;
                    
                }
                conn.Close();
                if (IsExist)
                {
                    if (Cryptography.Decrypt(s1).Equals(PwdTxt.Text))
                    {
                       Response.Redirect("WardenProfile.aspx");
                        Session.RemoveAll();
                    }
                    else
                    {
                        MessageBox.Show("Password is wrong!...", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                }
                else  //showing the error message if user credential is wrong  
                {
                    MessageBox.Show("Please enter the valid credentials", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

            }
            else if (DropDownList1.SelectedItem.Text == "Head of Department")
            {
                conn.Open();
                string s1 = "";
                string str;
                bool IsExist = false;
                SqlCommand cmd = new SqlCommand("Select * from HOD Where Email='" + EmailTxt.Text + "' ", conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    s1 = dr["Password"].ToString();
                    str = dr["Id"].ToString();
                    Session["id"] = str;
                    IsExist = true;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                }
                conn.Close();
                if (IsExist)
                {
                    if (Cryptography.Decrypt(s1).Equals(PwdTxt.Text))
                    {
                        Response.Redirect("HODProfile.aspx");
                        Session.RemoveAll();
                         }
                    else
                    {
                        MessageBox.Show("Password is wrong!...", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                }
                else  //showing the error message if user credential is wrong  
                {
                    MessageBox.Show("Please enter the valid credentials", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

            }
            else
            {
                conn.Open();
                string s1 = "";
                string str;
                bool IsExist = false;
                SqlCommand cmd = new SqlCommand("Select * from Admin Where Email='" + EmailTxt.Text + "' ", conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    s1 = dr["Password"].ToString();
                    str = dr["Id"].ToString();
                    Session["id"] = str;
                     IsExist = true;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                }
                conn.Close();
                if (IsExist)
                {
                    if (Cryptography.Decrypt(s1).Equals(PwdTxt.Text))
                    {
                        MessageBox.Show("Login Success", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Response.Redirect("AdminProfile.aspx");
                        Session.RemoveAll();
                    }
                    else
                    {
                        MessageBox.Show("Password is wrong!...", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                }
                else  //showing the error message if user credential is wrong  
                {
                    MessageBox.Show("Please enter the valid credentials", "error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

            }



        }

        protected void HomeButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

       

        protected void ForgetPwdButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");
        }
    }
}
