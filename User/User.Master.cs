using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aromakart.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {

                lbLoginOrLogout.Text = "Login";
                Session["cartcount"] = "0";
            }
            else
            {
                lbLoginOrLogout.Text = "Logout";
                Utils utils = new Utils();
                Session["cartCount"] = utils.cartCount(Convert.ToInt32(Session["userId"])).ToString();

            }

        }
        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                lbRegisterOrProfile.ToolTip = "User Registration";
                Response.Redirect("Signup.aspx");

            }
            else
            {
                lbRegisterOrProfile.ToolTip = "User profile";
                Response.Redirect("Profile.aspx");
            }
        }
        protected void lbLoginOrLogout_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                lbRegisterOrProfile.ToolTip = "Login.aspx";
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }


    }
}