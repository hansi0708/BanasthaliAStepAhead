using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class StudentMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProfileButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentProfile.aspx");
        }

        protected void ApplyButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLeave.aspx");
        }

        protected void ViewRequestButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRequest.aspx");
        }

        protected void LogOutButton_Click(object sender, EventArgs e)
        {

        }
    }
}