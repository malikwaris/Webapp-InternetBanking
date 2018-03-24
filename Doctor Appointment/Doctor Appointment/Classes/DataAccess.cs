using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Doctor_Appointment.Classes
{
    public class DataAccess
    {
        private string ConnectionString = @"server=localhost; Database= doctor's appointment; uid=root; password=root";

        public int addPatient(Patient_Information PI)
        {
            //Patient_Information PI = new Patient_Information();
            int rowsupdated = 0;
            Random random = new Random ();
            PI.TokenNo = random.Next(0,500);

            string query =  "insert into patient_info (AppointmentNo, Name, FatherName, Age, Gender, Address)values('"+PI.TokenNo+"', '"+PI.PatientName+"', '"+PI.FatherName+"', '"+PI.Age+"', '"+PI.Gender+"', '"+PI.Address+"') ";
            try
            {
                MySqlConnection conn = new MySqlConnection();
                conn.ConnectionString = ConnectionString;

                conn.Open();

                MySqlCommand command = new MySqlCommand();
                command.CommandText = query;
                command.Connection = conn;

               rowsupdated= command.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return rowsupdated;
        }

        
    }
}
   

   