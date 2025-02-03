using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ClinicManagementsystem
{
    public partial class adminappoitmentmanagment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            getPatientById();
        }

        //active button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            updatePatientStatusById("confirmed");
        }

        //pending button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            updatePatientStatusById("pending");
        }

        //deactive button click
        protected void Button5_Click(object sender, EventArgs e)
        {
            updatePatientStatusById("deactive");
        }

        //Delete_appoitment
        protected void Button2_Click(object sender, EventArgs e)
        {
            deletePatient();
        }


        //user defined function


        void getPatientById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * from onlineappointment where full_name='" + TextBox8.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        TextBox7.Text = dr.GetValue(4).ToString();
                      
                        TextBox3.Text = dr.GetValue(1).ToString();
                        TextBox9.Text = dr.GetValue(2).ToString();
                        TextBox10.Text = dr.GetValue(3).ToString();
                        

                    }

                }
                else
                {
                    Response.Write("<script>('Invalid Credentials');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>('" + ex.Message + "');</script>");
            }
        }

        void updatePatientStatusById(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE onlineappointment SET status='" + status + "' WHERE full_name='" + TextBox8.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Appointment status updated');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>('" + ex.Message + "');</script>");
            }
        }

        void deletePatient()
        {
            if (TextBox8.Text.Trim().Equals(""))
            {

                Response.Write("<script>alert('Patient ID cannot be blank');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand(" DELETE from onlineappointment WHERE full_name = '" + TextBox8.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Appointment Deleted sucessfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }




        }
        void clearForm()
        {
           
            TextBox3.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
          
        }

       
    }
}