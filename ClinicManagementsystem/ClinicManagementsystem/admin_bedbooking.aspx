<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_bedbooking.aspx.cs" Inherits="ClinicManagementsystem.admin_bedbooking" %>
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

                 <div class="container-fluid" style="    background: #f2f5f7;">
   <div class="row">
      <div class="col-md-5">
          <br />
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
                     <center>
                        <h4>Bed Booking Details</h4>
                     </center>
                  </div>
               </div>
               <div class="row">
                  <div class="col">
                     <center>
                         <img  width="100px" src="imgs/appointment.png" />
                        
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
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Patient Name" ReadOnly="false"></asp:TextBox>
                         <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="Button4_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                     </div>
                  </div>
                  <div class="col-md-5">
                     <label> Status</label>
                     <div class="form-group">
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder=" Status" ReadOnly="True" ></asp:TextBox>

                           <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="Button1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton3" runat="server" OnClick="Button3_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                           <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton5" runat="server" OnClick="Button5_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                  </div>
               </div>
               
               <div class="row">
                  <div class="col-md-6">
    <label> Date</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" Date" ReadOnly="True" TextMode="Date"></asp:TextBox>
                     </div>
                  </div>
                  <div class="col-md-6">
    <label> Time</label>
                     <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder=" Time" ReadOnly="True" TextMode="Time"></asp:TextBox>
                     </div>
                  </div>
                  
               </div>
               
               <div class="row">
                  <div class="col-8 mx-auto">
                     <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete Patient Permanently" OnClick="Button2_Click" />
                  </div>
               </div>
            </div>
         </div>
         <a href="homepage.aspx" style="color:black"><< Back to Home</a><br>
         <br>
      </div>
      <div class="col-md-7">
          <br />
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col">
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [online_bedbooking_tbl]"></asp:SqlDataSource>
                  </div>
               </div>
                <div class="row">
    <div class="col">
       <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="patient_id" DataSourceID="SqlDataSource1">
    <Columns>
       
        <asp:BoundField DataField="full_name" HeaderText="Patient name"  ReadOnly="True" SortExpression ="full_name" />
        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
        <asp:BoundField DataField="date" HeaderText="date"  ReadOnly="True" SortExpression="date" />
        <asp:BoundField DataField="time" HeaderText="time"   ReadOnly="True" SortExpression="time" />
        <asp:BoundField DataField="select_type" HeaderText="Type"  ReadOnly="True" SortExpression="select_type" />
       
    </Columns>
 </asp:GridView>
    <%--</div>--%>
 </div>
            </div>
         </div>
      </div>
   </div>
</div>
         
</asp:Content>
