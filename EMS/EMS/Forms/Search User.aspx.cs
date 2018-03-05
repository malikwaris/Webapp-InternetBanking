using EMS.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS.Forms
{
    public partial class Search_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            try {
            string Name= TextBox1.Text; 
            if (!string.IsNullOrEmpty(Name)) {
                DataAccess da = new DataAccess();
                DataSet ds = da.SearchUser(Name);
                Gvsearch.DataSource = ds.Tables[0];
                Gvsearch.DataBind (); 
            }
            else{
                lbltxt.Text = "Please enter the name";
            }
            }
            catch (Exception ex){
                lbltxt.Text = ex.Message;

            }
            }
        }
    }
