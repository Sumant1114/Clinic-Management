using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicManagementsystem
{
    public partial class OnlineAppointment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
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

                SqlCommand cmd = new SqlCommand("INSERT INTO onlineappointment(full_name,doctor_name,appointment_date,appointment_time,status)  values(@full_name,@doctor_name,@appointment_date,@appointment_time,@status) ", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@appointment_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@appointment_time", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "pending");


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Appointment Booked Successfully.Will contact Soon. ');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


        }
        //status button
        protected void Button3_Click(object sender, EventArgs e)
        {
            getPrescriptionById();
        }

        //user-define function
        void getPrescriptionById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * from onlineappointment where appointment_date='" + TextBox4.Text.Trim() + "' AND full_name='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox7.Text = dr.GetValue(4).ToString();

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

    }

}