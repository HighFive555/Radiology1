using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace Radiology1
{
	public partial class Edit : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			String imagelink1;
			string mycon = "Data Source=MT;Initial Catalog=ERadiology;Integrated Security=True";
			string myquery = "Select * from Patient_Rad where Request_ID=" + Request.QueryString["Request_ID"];
			SqlConnection con = new SqlConnection(mycon);
			con.Open();
			SqlCommand cmd = new SqlCommand();
			cmd.CommandText= myquery;	
			cmd.Connection= con;	
			SqlDataAdapter da= new SqlDataAdapter();
			da.SelectCommand= cmd;
			DataSet ds = new DataSet();
			da.Fill(ds);

			if (ds.Tables[0].Rows.Count > 0)
			{
				TextBox1.Text = ds.Tables[0].Rows[0]["Request_ID"].ToString();
				TextBox2.Text = ds.Tables[0].Rows[0]["Patient_ID"].ToString();
				TextBox3.Text = ds.Tables[0].Rows[0]["Patient_Name"].ToString();
				TextBox12.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
				TextBox4.Text = ds.Tables[0].Rows[0]["Age"].ToString();
				TextBox6.Text = ds.Tables[0].Rows[0]["Dentist_Name"].ToString();
				TextBox7.Text = ds.Tables[0].Rows[0]["Modality"].ToString();
				TextBox8.Text = ds.Tables[0].Rows[0]["Region"].ToString();
				TextBox9.Text = ds.Tables[0].Rows[0]["status"].ToString();
				//TextBox15.Text = ds.Tables[0].Rows[0]["Comments"].ToString();
				

				imagelink1 = ds.Tables[0].Rows[0]["image"].ToString();
				Image3.ImageUrl = imagelink1 + "?n=" + DateTime.Now.Second.ToString();
			}

		}

		static string imagelink;

		private Boolean uploadimage()
		{
			Boolean imagesaved = false;
			if (FileUpload1.HasFile == true)
			{
				String contenttype = FileUpload1.PostedFile.ContentType;
				if (contenttype == "image/jpeg")
				{
					int filesize;
					filesize = FileUpload1.PostedFile.ContentLength;
					if (filesize <= 512000)
					{
						System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
						int height = img.Height;
						int width = img.Width;

						FileUpload1.SaveAs(Server.MapPath("~/Radiology_images/") + TextBox1.Text + ".jpg");
						Image3.ImageUrl = "~/Radiology_images/" + TextBox1.Text + ".jpg";
						imagelink = "Radiology_images/" + TextBox1.Text + ".jpg";
						imagesaved = true;

					}
					else
					{
						Label2.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
					}
				}
				else
				{
					Label2.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
				}
			}
			else
			{
				Label2.Text = "You have not selected any file - Browse and Select File First";
			}

			return imagesaved;

		}

		protected void Button8_Click(object sender, EventArgs e)
		{
			if (FileUpload1.HasFile == true)
			{
				if (uploadimage() == true)
				{
					String mycon = "Data Source=MT;Initial Catalog=ERadiology;Integrated Security=True";
					String updatedata = "Update Patient_Rad set Patient_ID='" + TextBox2.Text + "', Patient_Name='" + TextBox3.Text + "', Gender='" + TextBox12.Text + "', Age='" + TextBox4.Text + "', Dentist_Name='" + TextBox6.Text + "', Modality='" + TextBox7.Text + "', Region='" + TextBox8.Text + "', status='Done', Comments='" + TextBox15.Text + "',image='" + imagelink + "'  where Request_ID=" + TextBox1.Text;
					SqlConnection con = new SqlConnection(mycon);
					con.Open();
					SqlCommand cmd = new SqlCommand();
					cmd.CommandText = updatedata;
					cmd.Connection = con;
					cmd.ExecuteNonQuery();
					ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Request Sent SuccessFully');", true);
				}
			}
			else
			{
				String mycon = "Data Source=MT;Initial Catalog=ERadiology;Integrated Security=True";
				String updatedata = "Update Patient_Rad set Patient_ID='" + TextBox2.Text + "', Patient_Name='" + TextBox3.Text + "', Gender='" + TextBox12.Text + "', Age='" + TextBox4.Text + "', Dentist_Name='" + TextBox6.Text + "', Modality='" + TextBox7.Text + "', Region='" + TextBox8.Text + "', status='" + TextBox9.Text + "', Comments='" + TextBox15.Text + "',image='" + imagelink + "'  where Request_ID=" + TextBox1.Text;
				SqlConnection con = new SqlConnection(mycon);
				con.Open();
				SqlCommand cmd = new SqlCommand();
				cmd.CommandText = updatedata;
				cmd.Connection = con;
				cmd.ExecuteNonQuery();
				ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Request Sent SuccessFully');", true);
			}
		}



		protected void Button9_Click(object sender, EventArgs e)
		{

			Response.Redirect("Contact.aspx");
		}
	}
}