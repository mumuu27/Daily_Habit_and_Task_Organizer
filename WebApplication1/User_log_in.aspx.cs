using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{


    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //user login
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("SELECT * from member_master_tb1 where member_id='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    //Response.Write("<script>alert('"+ dr.GetValue(8).ToString()+"');</script>");

                    Session["username"] = dr.GetValue(8).ToString();

                    Session["fullname"] = dr.GetValue(0).ToString();

                    Session["role"] = "User";

                    Session["status"] = dr.GetValue(10).ToString();
                }
                Response.Redirect("homepage.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");

            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_sign_up.aspx");
        }
    }
}