using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshita\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\BSADatabase.mdf;Integrated Security=True");

        protected void SendButton_Click(System.Object sender, System.EventArgs e)
        {
            try
            {
                conn.Open();
                string insertQuery = "insert into Contact(Email,Name,Message)values (@email,@name,@message)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@email", EmailTxt.Text);
                cmd.Parameters.AddWithValue("@name", NameTxt.Text);
                cmd.Parameters.AddWithValue("@message", MessageTxt.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Message sent Successfully!!! Thank you");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}