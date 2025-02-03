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
    public partial class doctordetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            
            
        }

        //add click button
        protected void Button1_Click(object sender, EventArgs e)
        {

            if(CheckDoctorIdExists())
            {
                Response.Write("<script>alert('Doctor ID allready Exist, Try with another ID.');</script>");
            }
            else
            {
                addNewDetails();
            }
        }

        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (CheckDoctorIdExists())
            {
                updateDoctor();

            }
            else
            {
                Response.Write("<script>alert('Doctor with this ID doesn't Exist. Try Another ID.');</script>");
            }
        }

        //delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {

            deleteDetailsByID();
        }


        //go click button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getDoctorByID();
        }

        //user defind function
        void updateDoctor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" UPDATE doctor_details_tbl SET doctor_name = @doctor_name, language = @language, availability = @availability, area = @area, experties = @experties, education = @education, experience = @experience, linked_hospital = @linked_hospital WHERE doctor_id = '" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@doctor_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@availability", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@area", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@experties", ListBox1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@education", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@experience", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@linked_hospital", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Doctor details Updated sucessfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void deleteDetailsByID()
        {
            if (CheckDoctorIdExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from doctor_details_tbl WHERE doctor_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert(' Details Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Doctor ID');</script>");
            }
        }

        void getDoctorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from doctor_details_tbl WHERE doctor_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["doctor_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["availability"].ToString();
                   
                    TextBox4.Text = dt.Rows[0]["education"].ToString().Trim();
                    TextBox5.Text = dt.Rows[0]["experience"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["linked_hospital"].ToString();
                   

                    DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                   

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for (int i = 0; i < genre.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;

                            }
                        }
                    }

                   

                }
                else
                {
                    Response.Write("<script>alert('Invalid Doctor ID');</script>");
                }

            }
            catch (Exception ex)
            {

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

                SqlCommand cmd = new SqlCommand("SELECT * from doctor_details_tbl where doctor_id='" + TextBox1.Text.Trim() + "';", con);
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
        
        void addNewDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT into doctor_details_tbl(doctor_id,doctor_name,language ,availability,area,experties,education,experience,linked_hospital) values(@doctor_id,@doctor_name,@language,@availability,@area,@experties,@education,@experience,@linked_hospital) ", con);

                cmd.Parameters.AddWithValue("@doctor_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@doctor_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@availability", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@area", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@experties", ListBox1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@education", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@experience", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@linked_hospital", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Doctor details Added sucessfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            ListBox1.Text = "";
            DropDownList1.Text = "";
           
        }

    }
}