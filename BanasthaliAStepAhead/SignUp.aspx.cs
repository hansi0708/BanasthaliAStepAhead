using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // refreshData();
        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Harshita\\source\\repos\\BanasthaliAStepAhead\\BanasthaliAStepAhead\\App_Data\\BSADatabase.mdf;Integrated Security=True");

        /* public void refreshData()
         {
                 if (DropDownList1.SelectedIndex == 0)
                 {
                     HostelTxt.Visible = true;
                     CourseTxt.Visible = true;
                     TextBox8.Visible = true;

                 }
                 else
                 {
                     HostelTxt.Visible = false;
                     CourseTxt.Visible = false;
                     TextBox8.Visible = false;
                 }
           //  }
         }*/

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "Student")
            {
                if (FileUpload1.HasFile)
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                    string pic = "~/Upload/" + str.ToString();
                    int id = Convert.ToInt32(IdTxt.Text);
                    string name = NameTxt.Text;
                    string email = EmailTxt.Text;
                    string hostelName = HostelTxt.Text;
                    string course = CourseTxt.Text;
                    string department = DepTxt.Text;
                    string Password = Cryptography.Encrypt(IdTxt.Text.ToString());
                  
                    conn.Open();
                    string insertQuery = "insert into Student(Id,Name,Image,Email,Hostel_Name,Course,Department,Password)values (@id,@name,@pic,@email,@hostelName,@course,@department,@pwd)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("pic", pic);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@hostelName", hostelName);
                    cmd.Parameters.AddWithValue("@course", course);
                    cmd.Parameters.AddWithValue("@department", department);
                    cmd.Parameters.AddWithValue("@pwd", Password);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Session["id"] = IdTxt.Text;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                    Response.Redirect("StudentProfile.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    Label6.Text = "Please Upload your Image";
                }
            }

            else if (DropDownList1.SelectedItem.Text == "Warden")
            {
                if (FileUpload1.HasFile)
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                    string pic = "~/Upload/" + str.ToString();
                    int id = Convert.ToInt32(IdTxt.Text);
                    string name = NameTxt.Text;
                    string email = EmailTxt.Text;
                    string Password = Cryptography.Encrypt(IdTxt.Text.ToString());

                   
                    conn.Open();
                    string insertQuery = "insert into Warden(Id,Name,Image,Email,Password)values (@id,@name,@pic,@email,@pwd)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("pic", pic);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@pwd", Password);

                    cmd.ExecuteNonQuery();

                    Response.Write("Sign Up  Successfully!!! Thank you");

                    conn.Close();
                    Session["id"] = IdTxt.Text;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                    Response.Redirect("WardenProfile.aspx");
                    Session.RemoveAll();

                    Label6.Text = "Image Uploaded";
                }
                else
                {
                    Label6.Text = "Please Upload your Image";
                }
            }
            else if (DropDownList1.SelectedItem.Text == "Head of Department")
            {
                if (FileUpload1.HasFile)
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                    string pic = "~/Upload/" + str.ToString();
                    int id = Convert.ToInt32(IdTxt.Text);
                    string name = NameTxt.Text;
                    string email = EmailTxt.Text;
                    string Password = Cryptography.Encrypt(IdTxt.Text.ToString());

                   
                    conn.Open();
                    string insertQuery = "insert into HOD(Id,Name,Image,Email,Password)values (@id,@name,@pic,@email,@pwd)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("pic", pic);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@pwd", Password);

                    cmd.ExecuteNonQuery();

                    Response.Write("Sign Up  Successfully!!! Thank you");

                    conn.Close();
                    Session["id"] = IdTxt.Text;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                    Response.Redirect("HODProfile.aspx");
                    Session.RemoveAll();

                    Label6.Text = "Image Uploaded";
                }
                else
                {
                    Label6.Text = "Please Upload your Image";
                }
            }
            else
            {
                if (FileUpload1.HasFile)
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                    string pic = "~/Upload/" + str.ToString();
                    int id = Convert.ToInt32(IdTxt.Text);
                    string name = NameTxt.Text;
                    string email = EmailTxt.Text;
                    string Password = Cryptography.Encrypt(IdTxt.Text.ToString());

                   
                    conn.Open();
                    string insertQuery = "insert into Admin(Id,Name,Image,Email,Password)values (@id,@name,@pic,@email,@pwd)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("pic", pic);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@pwd", Password);

                    cmd.ExecuteNonQuery();

                    Response.Write("Sign Up  Successfully!!! Thank you");

                    conn.Close();
                    Session["id"] = IdTxt.Text;
                    Session["role"] = DropDownList1.SelectedItem.Text;
                    Response.Redirect("AdminProfile.aspx");
                    Session.RemoveAll();

                    Label6.Text = "Image Uploaded";
                }
                else
                {
                    Label6.Text = "Please Upload your Image";
                }
            }
        }

        protected void ViewButton_Click(object sender, EventArgs e)
        {
            System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            Image1.ImageUrl = "data:image/png;base64," + base64String;
            Image1.Visible = true;
        }
    }
}
