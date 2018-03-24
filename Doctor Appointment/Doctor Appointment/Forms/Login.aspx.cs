using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment.Forms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string ConnectionString = @"server=localhost; Database= doctorappontment; uid = root; pass= root";
            string Name = txtName.Text;
            string Password = txtPass.Text;
            
           string query = "Select * from doctorappointment where = '"+Name+"','"+Password+"'"; 
            try
            {
                MySqlConnection conn = new MySqlConnection();
                conn.ConnectionString = ConnectionString;

                conn.Open();

                MySqlCommand command = new MySqlCommand(query, conn);
                MySqlDataReader reader = new MySqlDataReader();

                while (reader.Read())
                {
                    string name = reader.GetString(1);
                    string password = reader.GetString(2);
                    if (name == name && password == password)
                    {
                        Response.Redirect("Doctor Appointment.aspx");
                    }
                        
                }
                    
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}