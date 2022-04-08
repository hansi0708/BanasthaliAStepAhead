using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class StudentLeave : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDBFileName=|DataDirectory|\\D1.mdf;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Id.Text = Session["id"].ToString();

            conn.Open();
            string str = "Select * from Student where Id=" + Id.Text;
            SqlCommand com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();

            while (reader.Read())
            {
                TextBox1.Text= reader["Name"].ToString();
                TextBox2.Text = reader["Course"].ToString();
                TextBox3.Text = reader["Hostel_Name"].ToString();
            }
            reader.Close();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string prevPage = Request.UrlReferrer.ToString();
            Response.Redirect(prevPage);
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Yes")
            {

                TextBox8.Enabled = false;
                TextBox9.Enabled = false;
                TextBox10.Enabled = false;
                TextBox11.Enabled = false;
                TextBox12.Enabled = false;

            }
            else
            {
                TextBox8.Enabled = true;
                TextBox9.Enabled = true;
                TextBox10.Enabled = true;
                TextBox11.Enabled = true;
                TextBox12.Enabled = true;
            }
        }

   /*     protected void Button1_Click(object sender, EventArgs e)
        {
            string prevPage = Request.UrlReferrer.ToString();
            Response.Redirect(prevPage);
        }*/

        protected void Button2_Click(object sender, EventArgs e)
        {

            ArrayList status = new ArrayList();
            status.Add("Applied");
            status.Add("Approved by Warden");
            status.Add("Approved by HOD");
            status.Add("Approved by Admin");


            int id = Convert.ToInt32(Id.Text);
            string StudentName = TextBox1.Text;
            string Course = TextBox2.Text;
            string HostelName = TextBox3.Text;
            string GuardianName = TextBox4.Text;
            string Reason = TextBox6.Text;
            string From = TextBox13.Text;

            //   DateTime From=DateTime.ParseExact(TextBox13.Text, "M/d/yyyy", CultureInfo.InvariantCulture);
            //  DateTime To = DateTime.ParseExact(TextBox14.Text, "M/d/yyyy", CultureInfo.InvariantCulture);

            //  DateTime From = DateTime.ParseExact(TextBox13.Text, "dd/MM/yyyy", null);
            // DateTime From = Convert.ToDateTime(TextBox13.Text);
            //  From = Convert.ToDateTime(From, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
            //  DateTime To = DateTime.ParseExact(TextBox14.Text, "dd/MM/yyyy", null);
            //  DateTime To=Convert.ToDateTime(TextBox14.Text);
            //   To = Convert.ToDateTime(To, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
            string To = TextBox14.Text;

            // CultureInfo provider = CultureInfo.InvariantCulture;
            // System.Globalization.DateTimeStyles style = DateTimeStyles.None;
            ///  DateTime From;
            //  DateTime To;
            //  DateTime.TryParseExact(TextBox13.Text, "m-d-yyyy", provider, style, out From);
            //   DateTime.TryParseExact(TextBox14.Text, "m-d-yyyy", provider, style, out To);

            string Alone = DropDownList1.SelectedItem.Text;
            string AccName = TextBox12.Text;
            string Relationship = TextBox11.Text;
            string Address = TextBox10.Text;
            string Phone = TextBox9.Text;
            string DAddress = TextBox8.Text;

            // conn.Open();

            if (DropDownList1.SelectedItem.Text == "Yes")
            {
                string insertQuery1 = "insert into Leave(Id,StudentName,Class,Hostel_Name,GuardianName,Reason,[From],[To],Alone,Status) values (@id,@studentName,@class,@hostelName,@guardianName,@reason,@from,@to,@alone,@status)";
                SqlCommand cmd1 = new SqlCommand(insertQuery1, conn);
                cmd1.Parameters.AddWithValue("@id", id);
                cmd1.Parameters.AddWithValue("@studentName", StudentName);
                cmd1.Parameters.AddWithValue("@class", Course);
                cmd1.Parameters.AddWithValue("@hostelName", HostelName);
                cmd1.Parameters.AddWithValue("@guardianName", GuardianName);
                cmd1.Parameters.AddWithValue("@reason", Reason);
                cmd1.Parameters.AddWithValue("@from", From);
                cmd1.Parameters.AddWithValue("@to", To);
                cmd1.Parameters.AddWithValue("@alone", Alone);
                cmd1.Parameters.AddWithValue("@status", "Applied");
                conn.Open();
                cmd1.ExecuteNonQuery();
                conn.Close();
            }
            else
            {


                string insertQuery = "insert into Leave(Id,StudentName,Class,Hostel_Name,GuardianName,Reason,[From],[To],Alone,AccName,Relationship,Address,Phone,DAddress,Status)" +
                "values (@id,@studentName,@class,@hostelName,@guardianName,@reason,@from,@to,@alone,@accName,@relationship,@address,@phone,@dAddress,@status)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@StudentName", StudentName);
                cmd.Parameters.AddWithValue("@class", Course);
                cmd.Parameters.AddWithValue("@hostelName", HostelName);
                cmd.Parameters.AddWithValue("@guardianName", GuardianName);
                cmd.Parameters.AddWithValue("@reason", Reason);
                cmd.Parameters.AddWithValue("@from", From);
                cmd.Parameters.AddWithValue("@to", To);
                cmd.Parameters.AddWithValue("@alone", Alone);
                cmd.Parameters.AddWithValue("@accName", AccName);
                cmd.Parameters.AddWithValue("@relationship", Relationship);
                cmd.Parameters.AddWithValue("@address", Address);
                cmd.Parameters.AddWithValue("@phone", Phone);
                cmd.Parameters.AddWithValue("@dAddress", DAddress);
                cmd.Parameters.AddWithValue("@status", status[0]);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

            }
            //   conn.Close();

            Response.Write("Sign Up  Successfully!!! Thank you");
            Response.Redirect("StudentProfile.aspx");
        }
    }
}