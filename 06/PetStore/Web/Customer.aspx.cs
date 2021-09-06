using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;
using System.Data;
using System.Configuration;

namespace Customer
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Constring = ConfigurationManager.ConnectionStrings["CustomerConnect"].ConnectionString;
            SqlCommand command;
            SqlConnection connection;
            SqlParameter parameter;

            
            using (connection = new SqlConnection(Constring))
            {
                using (command = new SqlCommand("SP_CustomerInsert", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    parameter = command.Parameters.AddWithValue("@Name", txtName);
                    parameter = command.Parameters.AddWithValue("@ZipCode", txtZip);
                    parameter = command.Parameters.AddWithValue("@Email", txtEmail);

                    parameter = command.Parameters.AddWithValue("@Username", txtUsername);
                    parameter = command.Parameters.AddWithValue("@Password", txtPassword);
                    connection.Open();
                        
                }
            }
            connection.Close();           

        }
    }
}