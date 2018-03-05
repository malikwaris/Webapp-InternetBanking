using EMS.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS.Forms
{
    public partial class Update_Forms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string CNIC = TxtCNIC.Text;
                string username = TxtName.Text;

                if (!string.IsNullOrEmpty(username))
                {
                    DataAccess da = new DataAccess();
                    int rows = da.Updateuser(CNIC, username);
                    if
                        (rows > 0)
                    {
                        lblmessage.Text = "Name Updated";
                    } //         2nd if

                    else
                    {
                        lblmessage.Text = "Successfully Updated";
                 
   }// else
                }// if
            }//try   
            catch(Exception ex)
            {
                lblmessage.Text = ex.Message;
            }// catch
        }//Method
    
    }// Class End
        }//NameSpace
    