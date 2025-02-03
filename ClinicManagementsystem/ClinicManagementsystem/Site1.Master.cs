using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicManagementsystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                { 
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //sign up link button


                    LinkButton3.Visible = false; //logout link button
                    LinkButton7.Visible = false; //hello user link button

                    LinkButton6.Visible = true; //admin login button
                    LinkButton16.Visible = true; //doctor login button
                    LinkButton17.Visible = false; //admin prescription button
                    LinkButton8.Visible = false; //admin bill button
                    LinkButton5.Visible = false; //appointment managment button
                    LinkButton11.Visible = false; //bedbooking managment button
                    LinkButton9.Visible = false; //doctor details button
                    LinkButton13.Visible = false; //doctor profile button
                    LinkButton10.Visible = false; // patient managment button
                    LinkButton14.Visible = false; //view doctor's details link button
                    LinkButton18.Visible = false; //User prescription details
                    LinkButton20.Visible = false; //User bill details
                    LinkButton19.Visible = false; //user bedbooking details
                    LinkButton15.Visible = false; //online appointment for patient 
                    LinkButton4.Visible = false; //admin online appointment managment button 
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello" + Session["username"].ToString();

                    LinkButton6.Visible = true; //admin login button
                    LinkButton16.Visible = true; //doctor login button
                    LinkButton17.Visible = false; //admin prescription button
                    LinkButton8.Visible = false; //admin bill button
                  
                    LinkButton5.Visible = false; //appointment managment button
                    LinkButton11.Visible = false; //bedbooking managment button
                    LinkButton9.Visible = false; //doctor details button
                    LinkButton13.Visible = false; //doctor profile button
                    LinkButton10.Visible = false; // patient managment button
                    LinkButton14.Visible = true; //view doctor's details link button
                    LinkButton18.Visible = true; //User prescription details
                    LinkButton20.Visible = true; //User bill details
                    LinkButton19.Visible = true; //user bedbooking details
                    LinkButton15.Visible = true; //online appointment for patient 
                    LinkButton4.Visible = false; //admin online appointment managment button 
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; //admin login button
                    LinkButton16.Visible = true; //doctor login button
                    LinkButton17.Visible = false; //admin prescription button
                    LinkButton8.Visible = false; //admin bill button
                    LinkButton5.Visible = true; //appointment managment button
                    LinkButton11.Visible = true; //bedbooking managment button
                    LinkButton9.Visible = true; //doctor details button
                    LinkButton13.Visible = true; //doctor profile button
                    LinkButton10.Visible = true; // patient managment button
                    LinkButton14.Visible = false; //view doctor's details link button
                    LinkButton18.Visible = false; //User prescription details
                    LinkButton20.Visible = false; //User bill details
                    LinkButton19.Visible = false; //user bedbooking details
                    LinkButton15.Visible = false; //online appointment for patient 
                    LinkButton4.Visible = true; //admin online appointment managment button 
                }
                else if (Session["role"].Equals("Doctor"))
                {
                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello Doctor";

                    LinkButton6.Visible = true; //admin login button
                    LinkButton16.Visible = false; //doctor login button
                    LinkButton17.Visible = false; //admin prescription button
                    LinkButton8.Visible = false; //admin bill button
                    LinkButton5.Visible = true; //appointment managment button
                    LinkButton11.Visible = true; //bedbooking managment button
                    LinkButton9.Visible = true; //doctor details button
                    LinkButton13.Visible = true; //doctor profile button
                    LinkButton10.Visible = true; // patient managment button
                    LinkButton14.Visible = true; //view doctor's details link button
                    LinkButton18.Visible = true; //User prescription details
                    LinkButton20.Visible = true; //User bill details
                    LinkButton19.Visible = false; //user bedbooking details
                    LinkButton15.Visible = true; //online appointment for patient 
                    LinkButton4.Visible = true; //admin online appointment managment button 
                }
            }
            catch
            {

            }
        }

       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpatientmanagment.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("appointmentsection.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctordetails.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctor.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //sign up link button


            LinkButton3.Visible = false; //logout link button
            LinkButton7.Visible = false; //hello user link button

            LinkButton6.Visible = true; //admin login button
            LinkButton16.Visible = true; //doctor login button
            LinkButton17.Visible = false; //admin prescription button
            LinkButton8.Visible = false; //admin bill button
            LinkButton5.Visible = false; //appointment managment button
            LinkButton11.Visible = false; //bedbooking managment button
            LinkButton9.Visible = false; //doctor details button
            LinkButton13.Visible = false; //doctor profile button
            LinkButton10.Visible = false; // patient managment button
            LinkButton4.Visible = false; //admin online appointment managment button 
            LinkButton15.Visible = false; //online appointment for patient 
            LinkButton14.Visible = false; //view doctor's details link button
            LinkButton18.Visible = false; //User prescription details
            LinkButton20.Visible = false; //User bill details
            LinkButton19.Visible = false; //user bedbooking details

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewdoctordetails.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminappoitmentmanagment.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("OnlineAppointment.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctor_login.aspx");
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminprescriptionmanagement.aspx");
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_prescription.aspx");
        }

        protected void LinkButton19_Click(object sender, EventArgs e)
        {
            Response.Redirect("OnlineBedbooking.aspx");
        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_bill.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("bill.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_bedbooking.aspx");
        }
    }
}