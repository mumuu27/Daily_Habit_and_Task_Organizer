using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize the task lists
                InitializeTaskLists();
            }
        }

        protected void addTaskButton_Click(object sender, EventArgs e)
        {

            string taskText = TextBox5.Text;

            // Create a new ListItem with the task text
            ListItem newItem = new ListItem(taskText);

            // Add the new ListItem to the ListBox or other control where you want to display tasks
            // For example, assuming you have an asp:ListBox with ID "taskList"
            taskList.Items.Add(newItem);

            // Clear the TextBox after adding the task
            TextBox5.Text = "";
        }
        protected void InitializeTaskLists()
        {
            // Add any initial tasks to the activeTaskList here if needed
            // For example:
            // activeTaskList.Items.Add(new ListItem("Task 1"));
            // activeTaskList.Items.Add(new ListItem("Task 2"));
            // ...
        }

        protected void taskList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle task completion
            // For example, you can remove the completed task from the list
            MoveCompletedTask(taskList, completedTaskList);
        }
        protected void completedTaskList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle moving completed task back to active list if needed
            MoveCompletedTask(completedTaskList, taskList);
        }

        protected void MoveCompletedTask(CheckBoxList sourceList, CheckBoxList destinationList)
        {
            ListItem selectedItem = null;
            foreach (ListItem item in sourceList.Items)
            {
                if (item.Selected)
                {
                    // Mark the task as completed with a crossed line
                    item.Attributes["style"] = "text-decoration: line-through;";


                    // Add the selected task to the completedTaskList
                    selectedItem = item;
                    break;
                }
            }

            if (selectedItem != null)
            {
                sourceList.Items.Remove(selectedItem);
                destinationList.Items.Add(selectedItem);
            }
        }
    }
}