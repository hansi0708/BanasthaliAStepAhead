using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace BanasthaliAStepAhead
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mayank\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\D1.mdf;Integrated Security=True");

        protected void SendButton_Click(System.Object sender, System.EventArgs e)
        {

            try
            {
                MailMessage message = new MailMessage(EmailTxt.Text,NameTxt.Text,MessageTxt.Text);
               
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("abmca21171_shubhi@banasthali.in", "12345");
                client.Send(message);
                Label1.Text = "message was sent successfully";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.StackTrace;
            }
        }
    }
}
