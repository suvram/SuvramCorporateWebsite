using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GlobalMindzModel;
using GlobalMindzBusinessLayer;

namespace GlobalMindzWebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			divLoading.Visible = false;
        }
		protected void btn_login_click(object sender, EventArgs e)
		{
			divLoading.Visible = true;
			User u = new User();
			//int userid = 67; //admin
			u = UserBusiness.GetUserDetails(txt_loginuser.Text.ToString());
			
			if (u != null && u.UserID > 0)
			{
				lit_Response.Text = u.UserName + " - " + u.RoleID.ToString();
				if (Micro.Commons.MicroSecuritty.DecryptString(u.Password) == txt_loginpassword.Text)
				{
					lit_Response.Text = u.UserName + " - password okay- a valid user";
				}
				else
				{
					lit_Response.Text = u.UserName + "'s password is NOT correct- Please try again";
				}
			}
			else
			{
				lit_Response.Text = u.UserName + " - not a valid user";
			}
			divLoading.Visible = false;
			//Response.Write(u.UserName);


		}
    }
}