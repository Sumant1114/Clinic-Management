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
    public partial class doctor : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getDoctorByID();
        }

        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckDoctorIdExists())
            {
                Response.Write("<script>alert('nurse with this ID is allready Exist. Try Another ID.');</script>");

            }
            else
            {
                addNewDoctor();
            }
        }

       
        //delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckDoctorIdExists())
            {
                deleteDoctor();


            }
            else
            {
                Response.Write("<script>alert('Nurse with this ID doesn't Exist. Try Another ID.');</script>");
            }
        }



        //user defined function

        void getDoctorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from nurse_profile_tbl where nurse_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0]["contact_number"].ToString();

                    TextBox4.Text = dt.Rows[0]["address"].ToString().Trim();
                    TextBox5.Text = dt.Rows[0]["education"].ToString().Trim();
                   

                }
                else
                {
                    Response.Write("<script>alert('Invalid Nurse ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void deleteDoctor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" DELETE from nurse_profile_tbl WHERE nurse_id = '" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Nurse details Delete sucessfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

       

        void addNewDoctor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT into nurse_profile_tbl(nurse_id,nurse_name,contact_number,address,education) values(@nurse_id,@nurse_name,@contact_number,@address,@education) ", con);

                cmd.Parameters.AddWithValue("@nurse_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@nurse_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_number", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@education", TextBox5.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Nurse details Add sucessfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        bool CheckDoctorIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from nurse_profile_tbl where nurse_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

            return false;
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";


        }


    }
}
