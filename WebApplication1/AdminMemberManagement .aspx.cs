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
    public partial class Admin_Member_Management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }
        //active button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberId("active");

        }
        //Pending button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            updateMemberId("pending");
        }
        //deactive button
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            updateMemberId("deactive");
        }
        //delete member button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberbyID();
        }


        //user defined function
        void getMemberByID()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("SELECT * from member_master_tb1 where member_id='" + Textbox1.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetValue(1).ToString();//DOB
                    TextBox3.Text = dr.GetValue(0).ToString();//full name
                    TextBox4.Text = dr.GetValue(3).ToString();//eMAIL
                    TextBox5.Text = dr.GetValue(7).ToString();//address
                    TextBox6.Text = dr.GetValue(5).ToString();//city
                    TextBox7.Text = dr.GetValue(6).ToString();//post code

                    Textbox21.Text = dr.GetValue(10).ToString();//account status
                    TextBox22.Text = dr.GetValue(2).ToString();//contact number
                    TextBox23.Text = dr.GetValue(4).ToString();//COUNTRY
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials');</script>");

            }
        }

        void updateMemberId(string status)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("UPDATE member_master_tb1 SET account_status='"+status+"' where member_id='"+Textbox1.Text.Trim()+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('Status Updated Successfully');</script>");
            
        }
        void deleteMemberbyID()
        {
            if(Textbox1.Text.Trim().Equals("") )
            {
                Response.Write("<script>alert('Member ID can't be blank')</script>");
            }
            else
            {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed) { con.Open(); }
                    SqlCommand cmd = new SqlCommand("DELETE from member_master_tb1 WHERE member_id='" + Textbox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully');</script>");
                    clearform();
                    GridView1.DataBind();

            }
            
        }
        void clearform()
        {
            Textbox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";//eMAIL
            TextBox5.Text = "";//address
            TextBox6.Text = "";//city
            TextBox7.Text = "";//post code

            Textbox21.Text = "";//account status
            TextBox22.Text = "";//contact number
            TextBox23.Text = "";//COUNTRY
        }
    }
}