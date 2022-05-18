using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace DemoAssignment
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["SQL"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "Select firstname,Dob From Registration";

            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                lblName.Text = dr.GetString(0);

               lblDob.Text = dr.GetString(1);
               lblAge.Text = lblDob.Text;

            }

        }


     
       


        public void AgeCount()
        {
            DateTime fdate = new DateTime(1993, 6, 1);
            DateTime sdate = new DateTime(2022, 6, 11);
            string diff=(sdate-fdate).TotalDays.ToString();
            int totaldays= Convert.ToInt32(diff);
            int year=totaldays/365;
            int remainingdays = totaldays % 365;
            int month= remainingdays/30;
            remainingdays = remainingdays %30;

           lblcount.Text= remainingdays.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
    }
