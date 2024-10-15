using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class User_profile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string userrname = Session["username"] as string;
            if (userrname=="" || userrname == null)
            {
                Response.Write("<script>alert('Session Expired, Login again')</script>");
                Response.Redirect("User_log_in.aspx");
            }
            else
            {
                
                if(!Page.IsPostBack)
                {
                    getUserData();
                    
                }
            }
            
        }

        


        protected void Button2_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
          /*  getUserData();*/

        }
        void getUserData()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("SELECT * from member_master_tb1 WHERE member_id ='" + Session["username"].ToString() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();  
            da.Fill(dt);
            TextBox3.Text = dt.Rows[0]["full_name"].ToString();
            TextBox2.Text = dt.Rows[0]["DOB"].ToString();
            TextBox1.Text = dt.Rows[0]["contact_no"].ToString();
            TextBox4.Text = dt.Rows[0]["email"].ToString();
            TextBox5.Text = dt.Rows[0]["full_adress"].ToString();
            DropDownList1.SelectedValue = dt.Rows[0]["country"].ToString().Trim();
            TextBox6.Text = dt.Rows[0]["city"].ToString();
            TextBox7.Text = dt.Rows[0]["pincode"].ToString();
            TextBox8.Text = dt.Rows[0]["member_id"].ToString();
            
            label1.Text = dt.Rows[0]["account_status"].ToString().Trim();
            if (dt.Rows[0]["account_status"].ToString().Trim()=="active")
            {
                label1.Attributes.Add("class", "badge rounded-pill text-bg-success");
            }
            else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
            {
                label1.Attributes.Add("class", "badge rounded-pill text-bg-warning");
            }
            else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
            {
                label1.Attributes.Add("class", "badge rounded-pill text-bg-danger");
            }
            else
            {
                label1.Attributes.Add("class", "badge rounded-pill text-bg-dark");
            }


        }

        
    }
    
}