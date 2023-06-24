using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Radiology1
{
	public partial class Contact : Page
	{
		SqlConnection con = new SqlConnection("Data Source=WIN-P4GJ9G661KP;Initial Catalog=Radiology2;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			

		}

		

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
			String Request_ID = GridView1.SelectedRow.Cells[0].Text;

			Response.Redirect("Edit.aspx?Request_ID= " + Request_ID);

        }
    }
}