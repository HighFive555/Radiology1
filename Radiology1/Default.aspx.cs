using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Radiology1
{
	public partial class _Default : Page
	{
		SqlConnection con = new SqlConnection("Data Source=WIN-P4GJ9G661KP;Initial Catalog=Radiology2;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			

		}
		
	
	}
}