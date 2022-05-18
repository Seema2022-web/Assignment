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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["SQL"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "Select firstname,password From Registration";
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                txtUserName.Text = dr.GetString(0);
                txtPassword.Text = dr.GetString(1);
                Response.Redirect("WelcomePage.aspx");

            }
            else
            {
                LblMessage.Text = "Sorry Try Again";
            }

            
            
            con.Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
        }

     
     
    }
}