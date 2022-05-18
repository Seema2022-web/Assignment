using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DemoAssignment
{
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["SQL"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "Insert into Registration(firstname,lastname,Dob,email_id,password,conformpass) Values(@firstname,@lastname,@Dob,@email_id,@password,@conformpass)";
            cmd.Parameters.AddWithValue("@firstname", txtfName.Text);
            cmd.Parameters.AddWithValue("@lastname", txtLastName.Text);
            cmd.Parameters.AddWithValue("@Dob", TxtDate.Text);
            cmd.Parameters.AddWithValue("@email_id", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", Txtpass.Text);
            cmd.Parameters.AddWithValue("@conformpass", txtConfirmPass.Text);
            cmd.Connection = con;
            int n = cmd.ExecuteNonQuery();
            if (n > 0)
            {
                lblmsg.Text = ("Register Successfully");
               
            }
           
            con.Close();

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            txtfName.Text = "";
            txtLastName.Text = "";
            TxtDate.Text = "";
            txtEmail.Text = "";
            Txtpass.Text = "";
            txtConfirmPass.Text = "";
        }
        

    
     

       
        
    }
}