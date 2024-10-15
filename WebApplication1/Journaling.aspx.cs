using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Journaling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load recent entries
                LoadEntries();
            }
        }

        protected void btnSaveEntry_Click(object sender, EventArgs e)
        {
            // Get the content of the new entry
            string entryContent = txtEntry.Text;

            // Save the entry to the database or any storage mechanism
            // You can implement this part based on your database structure and ORM framework

            // For demonstration, let's just add the entry to a list
            List<Entry> entries = GetEntriesFromDatabase();
            entries.Insert(0, new Entry { Date = DateTime.Now, Content = entryContent });

            // Update the UI
            rptEntries.DataSource = entries;
            rptEntries.DataBind();

            // Clear the entry textbox
            txtEntry.Text = "";
        }
        
        private List<Entry> GetEntriesFromDatabase()
        {
            // Retrieve entries from the database
            // You can replace this with actual database retrieval logic using ADO.NET, Entity Framework, etc.
            // For demonstration, let's return a hardcoded list of entries
            List<Entry> entries = new List<Entry>
            {
                new Entry { Date = DateTime.Now.AddDays(-2), Content = "This is entry 1." },
                new Entry { Date = DateTime.Now.AddDays(-1), Content = "This is entry 2." },
                new Entry { Date = DateTime.Now, Content = "This is entry 3." }
            };
            return entries;
        }

        private void LoadEntries()
        {
            // Load recent entries from the database
            List<Entry> entries = GetEntriesFromDatabase();

            // Bind entries to the repeater
            rptEntries.DataSource = entries;
            rptEntries.DataBind();
        }
    

    public class Entry
    {
        public DateTime Date { get; set; }
        public string Content { get; set; }
    }

    }

}
