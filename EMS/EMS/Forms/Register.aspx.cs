using EMS.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS.Forms
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                Employees emp = new Employees();

                emp.EmployeeName = txtName.Text;
                emp.EmployeeCnic = txtCNIC.Text;
                emp.EmployeeAddress = txtAddress.Text;

                DataAccess da = new DataAccess();
                int rows = da.AddUser(emp);

                if (rows > 0)
                {
                    lblMessage.Text = "Successfully Added!";
                }
            }
            catch(Exception ex){
                lblMessage.Text = ex.Message;
            }
        }
    }
}