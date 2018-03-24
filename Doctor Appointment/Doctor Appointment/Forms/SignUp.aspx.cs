using Doctor_Appointment.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment.Forms
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Patient_Information Pi = new Patient_Information();

            try
            {
                Pi.PatientName = txtName.Text;
                Pi.FatherName = txtFName.Text;
                Pi.Age = txtAge.Text;
                Pi.Address = txtAddress.Text;
                string gender = string.Empty;
                if(RadioButton1.Checked){
                    gender = "Male";

                }
                else
                {
                    gender = "Female";
                }
                Pi.Gender = gender;

                DataAccess da = new DataAccess();
                DataSet ds = new DataSet();    
           
            int rows = da.addPatient(Pi);
            
            if (rows > 0)
                {
                    Label1.Text = "Patient Added!";
                }
                else
                {
                    Label1.Text = "Not Added!";
                }
            }
            catch (Exception ex){
                Label1.Text = ex.Message;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void txtAddress_TextChanged(object sender, EventArgs e)
        {

        }
    }
}