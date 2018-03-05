using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EMS.Classes
{
    public class DataAccess
    {
        private string ConnectionString = @"Server=localhost; Database= student; Uid=root; password= root;";

        public int AddUser(Employees emp)
        {
            int rowsUpdated = 0;
            try
            {
                string query = "insert into student.employee (Name, CNIC, Address) Values ('" + emp.EmployeeName + "', '" + emp.EmployeeCnic + "', '" + emp.EmployeeAddress + "')";
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = ConnectionString;
                con.Open();

                MySqlCommand cmd = new MySqlCommand(query, con);

                rowsUpdated = cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return rowsUpdated;
        }

        public DataSet GetUsers()
        {
            try
            {
                string query = "select * from student.employee";

                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(query, ConnectionString);
                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;

            }

        }

        public DataSet SearchUser(string Name)
        {
            try
            {
                string query = "select *from employee where Name like '%" + Name + " %'; "; 
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(query, ConnectionString);
                da.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;



            }

        }

        public int Updateuser(string CNIC, string Name){
            int rowsupdated = 0 ;
        try{
            string query = "Update employee set Name = '" + Name + "' where CNIC = '" + CNIC + "'";
            MySqlConnection con = new MySqlConnection();
      
            con.ConnectionString = ConnectionString;
            con.Open() ;
          
            MySqlCommand cmd = new MySqlCommand(query,con);
            rowsupdated = cmd.ExecuteNonQuery();
            
        
        }
        catch (Exception ex){
        throw ex;
        }
        return rowsupdated;
}
    }
}
