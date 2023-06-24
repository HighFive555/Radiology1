using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Radiology1
{
	public partial class About : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			

		}
		static string imagelink;



		protected void Button9_Click(object sender, EventArgs e)
		{
			String imagelink1;
			String mycon = "Data Source=MT;Initial Catalog=ERadiology;Integrated Security=True";
			String myquery = "Select * from Patient_Rad where Request_ID=" + TextBox1.Text;
			SqlConnection con = new SqlConnection(mycon);
			SqlCommand cmd = new SqlCommand();
			cmd.CommandText = myquery;
			cmd.Connection = con;
			SqlDataAdapter da = new SqlDataAdapter();
			da.SelectCommand = cmd;
			DataSet ds = new DataSet();
			da.Fill(ds);
			if (ds.Tables[0].Rows.Count > 0)
			{


				TextBox2.Text = ds.Tables[0].Rows[0]["Patient_ID"].ToString();
				TextBox3.Text = ds.Tables[0].Rows[0]["Patient_Name"].ToString();
				TextBox12.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
				TextBox4.Text = ds.Tables[0].Rows[0]["Age"].ToString();
				TextBox6.Text = ds.Tables[0].Rows[0]["Dentist_Name"].ToString();
				TextBox7.Text = ds.Tables[0].Rows[0]["Modality"].ToString();
				TextBox8.Text = ds.Tables[0].Rows[0]["Region"].ToString();
				TextBox9.Text = ds.Tables[0].Rows[0]["status"].ToString();
				TextBox13.Text = ds.Tables[0].Rows[0]["Comments"].ToString();
				imagelink1 = ds.Tables[0].Rows[0]["image"].ToString();
				Image3.ImageUrl = imagelink1 + "?n=" + DateTime.Now.Second.ToString();

			}

			con.Close();



		}
	}
}