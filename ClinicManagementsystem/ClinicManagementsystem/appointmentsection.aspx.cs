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
    public partial class appointmentsection : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           GridView1.DataBind();
        }

        //confirm button
        protected void Button2_Click(object sender, EventArgs e)
        {
            addNewAppointment();
        }


        //user-defined function 
        void addNewAppointment()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO manualappoitment_tbl(full_name,doctor_name,appoitment_date,appoitment_time,status)  values(@full_name,@doctor_name,@appoitment_date,@appoitment_time,@status) ", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@appoitment_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@appoitment_time", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "Confirmed");


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Appointment Booked Successfully.Will contact Soon. ');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }

    }
}