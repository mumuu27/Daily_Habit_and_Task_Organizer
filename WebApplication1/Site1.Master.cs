using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string role = Session["role"] as string;

            if (role=="User")
                {
                    LinkButton2.Visible = false;//user login link button
                    LinkButton3.Visible = false;//Sign up link button
                    LinkButton4.Visible = true;//logout link button
                    LinkButton5.Visible = true;//Hello user link button
                    LinkButton5.Text = "Hello " + Session["username"].ToString();
                LinkButtonFeat.Visible = true;
                LinkButton7.Visible = true;//admmin login
                    LinkButton8.Visible = false;//member management
              
                }
                else if (role=="admin")
                {
                    LinkButton2.Visible = false;//user login link button
                    LinkButton3.Visible = false;//Sign up link button
                    LinkButton4.Visible = true;//logout link button
                    LinkButton5.Visible = true;//Hello user link button
                    LinkButton5.Text = "Hello Admin!";
                LinkButtonFeat.Visible = true;
                LinkButton7.Visible = false;//admmin login
                    LinkButton8.Visible = true;//member management
                  
                } 
            else if(string.IsNullOrEmpty(role))
                {
                    LinkButton2.Visible = true;//user login link button
                    LinkButton3.Visible = true;//Sign up link button
                    LinkButton4.Visible = false;//logout link button
                    LinkButton5.Visible = false;//Hello user link button
                    LinkButton7.Visible = true;//admmin login
                    LinkButtonFeat.Visible = false;
                    LinkButton8.Visible = false;//member management
                }            
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_log_in.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement .aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_log_in.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_sign_up.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //logout code
            Session["username"] = "";

            Session["fullname"] = "";

            Session["role"] = "";

            Session["status"] = "";

            LinkButton2.Visible = true;//user login link button
            LinkButton3.Visible = true;//Sign up link button
            LinkButton4.Visible = false;//logout link button
            LinkButton5.Visible = false;//Hello user link button
            LinkButton7.Visible = true;//admmin login
            
            LinkButton8.Visible = false;//member management
            
            Response.Redirect("homepage.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_profile.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reviews.aspx");
        }
    }
}