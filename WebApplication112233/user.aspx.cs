using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication112233
{
    public partial class User : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-AHIL4K3\\SQLEXPRESS;Initial Catalog=Oruzarnica;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label3.Text = "Fields are mandatory!";
                return;
            }

            try
            {
                connection.Open();

                string Name = TextBox1.Text;
                int Price = int.Parse(TextBox2.Text);

                SqlParameter p1 = new SqlParameter();
                SqlParameter p2 = new SqlParameter();

                p1.Value = Name;
                p2.Value = Price;

                p1.ParameterName = "Name";
                p2.ParameterName = "Price";

                string upit = "INSERT INTO Ocene (naziv,prosecanBrojOcena) VALUES (@Name, @Price)";
                SqlCommand command = new SqlCommand(upit, connection);

                command.Parameters.Add(p1);
                command.Parameters.Add(p2);

                command.ExecuteNonQuery();

                Response.Redirect("~/Account/User.aspx", false);
            }
            catch (Exception ex)
            {
                Label3.Text = "Error.";
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}