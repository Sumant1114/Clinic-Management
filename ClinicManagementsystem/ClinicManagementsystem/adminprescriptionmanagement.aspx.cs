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
    public partial class adminprescriptionmanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            GridView1.DataBind();
        }

        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                addNewDetails();
            
        }

        //Go button
        protected void Button2_Click(object sender, EventArgs e)
        {
            getPrescriptionById();
        }

        //user-defined functions

        void addNewDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT into prescription_tbl(patient_name,date ,bp,spo2,medicines) values(@patient_name,@date,@bp,@spo2,@medicines) ", con);

               
                cmd.Parameters.AddWithValue("@patient_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@bp", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@spo2", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@medicines", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Prescription details Added sucessfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getPrescriptionById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * from user_signup_tbl where Patient_id='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();

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

        void clearForm()
        {
           
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
           

        }

    }
}
