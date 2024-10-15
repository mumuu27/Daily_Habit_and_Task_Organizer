using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class User_sign_up : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('Testing')</script>");
            if (!IsPostBack)
            {

            }
        }

        //sign uo button
        protected void Button2_Click(object sender, EventArgs e)
        {

            if(checkMemberExist())
            {
                Response.Write("<script>alert('Member already Exist with this Member ID, try other Id');</script>");
            }
            else
            {
                NewSignUp();
            }
            
        }

        //user defined function
        bool checkMemberExist()
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tb1 where member_id='"+ TextBox8.Text.Trim() +"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else { return false; }

        }
        void NewSignUp()
        {

            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string query = "INSERT INTO member_master_tb1(full_name, DOB, contact_no, email, country, city, pincode, full_adress, member_id, password, account_status) values(@full_name, @DOB, @contact_no, @email, @country, @city, @pincode, @full_adress, @member_id, @password, @account_status)";
            using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_adress", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfull')</script>");

            }
            // clear all the textboxes
            TextBox3.Text = "";
            Response.Redirect("User_log_in.aspx");
            return;
        }
    }
}