using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanasthaliAStepAhead
{
    public partial class Warden : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProfileButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WardenProfile.aspx");
        }

        protected void ApplyButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppliedLeaves.aspx");
        }

        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}