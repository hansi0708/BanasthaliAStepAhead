using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;

namespace BanasthaliAStepAhead
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mayank\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\D1.mdf;Integrated Security=True");
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = "";
            bool IsExist = false;
                if (Session["role"] == "Student")
                {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Student Where Email='" + TextBox1.Text + "' ", con);
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        IsExist = true;
                    password = Cryptography.Decrypt(dr["Password"].ToString());

                    }
                    con.Close();

                }

                else if (Session["role"] == "Warden")
                {
                    con.Open();


                    SqlCommand cmd = new SqlCommand("Select * from Warden Where Email='" + TextBox1.Text + "' ", con);
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        IsExist = true;
                    password = Cryptography.Decrypt(dr["Password"].ToString());


                }
                    con.Close();

                }
                else if (Session["role"] == "HOD")
                {
                    con.Open();


                    SqlCommand cmd = new SqlCommand("Select * from HOD Where Email='" + TextBox1.Text + "' ", con);
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        IsExist = true;
                    password = Cryptography.Decrypt(dr["Password"].ToString());


                }
                    con.Close();

                }

                else if (Session["role"] == "Admin")
                {
                    con.Open();


                    SqlCommand cmd = new SqlCommand("Select * from Admin Where Email='" + TextBox1.Text + "' ", con);
                    cmd.ExecuteNonQuery();
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        IsExist = true;
                    password = Cryptography.Decrypt(dr["Password"].ToString());


                }
                    con.Close();

                }
               
           
            string username = TextBox1.Text;


                if (IsExist) { 

                if (!string.IsNullOrEmpty(password))
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("abmca21171_shubhi@banasthali.in");
                    msg.To.Add(TextBox1.Text);
                    msg.Subject = " Recover your Password";
                    msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
                    msg.IsBodyHtml = true;

                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "abmca21171_shubhi@banasthali.in"; //Your Email ID  
                    ntwd.Password = "banasthalividyapith"; // Your Password  
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg);
                    Label5.Text = "Username and Password Sent Successfully";
                    Label5.ForeColor = System.Drawing.Color.ForestGreen;
                }
            }
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
        }





