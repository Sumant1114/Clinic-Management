<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="appointmentsection.aspx.cs" Inherits="ClinicManagementsystem.appointmentsection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
             <script type="text/javascript">
$(document).ready(function () 
{
    $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    //$('.table1').DataTable();
});
             </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div style="    background: #f2f5f7;">
      <div class="container" >
   <div class="row">
      <div class="col-md-5 ">
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
                         <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Appointment Time" TextMode="Time" ></asp:TextBox>
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
             <div class="col-md-7">
         <br />
        <div class="card">
           <div class="card-body">
              <div class="row">
                 <div class="col">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [manualappoitment_tbl]"></asp:SqlDataSource>
                 </div>
              </div>
               <div class="row">
   <div class="col">
      <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="full_name" DataSourceID="SqlDataSource1">
          <Columns>
               <asp:BoundField DataField="full_name" HeaderText="full_name"   ReadOnly="True" SortExpression="full_name" />
               <asp:BoundField DataField="doctor_name" HeaderText="doctor_name"  ReadOnly="True" SortExpression="doctor_name" />
 
           
              <asp:BoundField DataField="appoitment_date" HeaderText="appointment_date"  ReadOnly="True" SortExpression="appoitment_date" />
              <asp:BoundField DataField="appoitment_time" HeaderText="appointment_time"  ReadOnly="True" SortExpression="appoitment_time" />
               <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
          </Columns>
       </asp:GridView>
   <%--</div>--%>
</div>
           </div>
        </div>
     </div>
  </div>
  
</div>
        </div>
                  
               

</asp:Content>
