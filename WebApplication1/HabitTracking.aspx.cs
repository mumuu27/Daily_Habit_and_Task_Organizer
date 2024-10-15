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
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed) { con.Open(); }
                string habitName = txtHabitName.Value;
                string description = txtDescription.Value;


                string sqlQuery = "INSERT INTO Habits (HabitName, Description) VALUES (@HabitName, @Description)";

                SqlCommand command = new SqlCommand(sqlQuery, con);
                command.Parameters.AddWithValue("@HabitName", habitName);
                command.Parameters.AddWithValue("@Description", description);

                try
                {

                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if the habit was successfully created
                    if (rowsAffected > 0)
                    {
                        // Redirect to a confirmation page or display a success message
                        Response.Write("<script>alert('New Habit created ');</script>");

                        GridView1.DataBind();
                    }
                    else
                    {
                        // Display an error message
                        // You can handle errors here based on your requirements
                        Response.Write("Error creating habit.");
                    }
                }
                catch (SqlException ex)
                {
                    // Handle SQL exceptions
                    // You can log the error or display a user-friendly message
                    Response.Write("An error occurred while creating the habit: " + ex.Message);
                }
                
           

        }
    }
}