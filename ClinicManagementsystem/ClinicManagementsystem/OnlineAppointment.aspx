<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OnlineAppointment.aspx.cs" Inherits="ClinicManagementsystem.OnlineAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div style="    background: #f2f5f7;">
      <div class="container" >
   <div class="row">
      <div class="col-md-6 ">
          <br />
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <h4>Appointment</h4>
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                        <img width="100px" src="imgs/appointment.png" />
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <hr>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-6">
                      
                      <label>Patient Name</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Patient Name"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <label>Doctor Name</label>
                     <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Doctor Name" ReadOnly="false"></asp:TextBox>
                          
                        </div>
                     </div>
                  </div>
               </div>
              
               <div class="row">
                  <div class="col-md-6">
                     <label> Date</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Appointment Date" TextMode="Date"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <label> Time</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Appointment Time" TextMode="Time"></asp:TextBox>
                         <br />
                     </div>
                  </div>
               </div>

               <div class="row">
                  <div class="col">
                     <center><asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Confirm" OnClick="Button2_Click" /></center>
                  </div>
                  
               </div>
            </div>
         </div>
         <a href="homepage.aspx"><< Back to Home</a><br>
         <br>
      </div>
        <br />
  
         <div class="col-md-6 ">
              <br />
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4> Check Status </h4>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/doctor plus.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <br />

                  <div class="row">
                     <div class="col-md-6">
                        <label>Patient Name</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date </label>
                        <div class="form-group">
                            <div class="input-group" >
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date " TextMode="Date" ></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="Button3_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                     </div>
                        </div>
                     </div>
                  </div>
                  
                   <div class="row">
                     <div class="col-12">
                        <label>Status</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Status " TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
           
         </div>
         
      </div>
         
   
</div>
        </div>
</asp:Content>

