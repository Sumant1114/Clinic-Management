using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicManagementsystem
{
    public partial class bill : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addNewDetails();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            getbillById();
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

                SqlCommand cmd = new SqlCommand("INSERT into bill_details_tbl(patient_name,date ,amount,mode) values(@patient_name,@date,@amount,@mode) ", con);

                
                cmd.Parameters.AddWithValue("@patient_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@amount", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@mode", TextBox3.Text.Trim());
              

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Bill details Added sucessfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getbillById()
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
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";


        }
    }
}