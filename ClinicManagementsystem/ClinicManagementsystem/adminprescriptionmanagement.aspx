<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminprescriptionmanagement.aspx.cs" Inherits="ClinicManagementsystem.adminprescriptionmanagement" %>
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
           <br />
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Prescription Details</h4>
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

                  <div class="row">
                     <div class="col-md-9">
                        <label>Patient Name</label>
                        <div class="form-group">
                            <div class="input-group" aria-readonly="True">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Patient Name"></asp:TextBox>
                          
                     </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Date</label>
                        <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Area " TextMode="Date"></asp:TextBox>
                        </div>
                                            <div class="col-md-6">
                        <label>Blood Pressure </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="BP "></asp:TextBox>
                        </div>
                     </div>
                     </div>
                     <div class="col-md-4">
                                              <div class="col-md-9">
   <label>Spo2 </label>
   <div class="form-group">
      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Spo2 "></asp:TextBox>
   </div>
</div>
                        
                     </div>
                     
                  </div>
                   <div class="row">
                     <div class="col-12">
                        <label>Medicines</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Medicines " TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div> 
                      
              
                  <div class="row">
                     
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click"  />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [prescription_tbl]"></asp:SqlDataSource>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Prescription Details </h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="patient_name" HeaderText="Patient Name" SortExpression="patient_name" >
                               
                                <HeaderStyle Font-Bold="True" />
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                               
                                <asp:TemplateField>
                                    <ItemTemplate>

                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Patient_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                            </div> 


                                            <div class="row">
    <div class="col-lg-12">

        Date:-
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("date") %>'></asp:Label>
        &nbsp;|
        <label>
        BP&nbsp; :-&nbsp;
        </label>
        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("bp") %>'></asp:Label>
        &nbsp;|&nbsp;

    </div>
</div> 

                                            <div class="row">
    <div class="col-lg-12">

        <label>
        Spo2:-
        <asp:Label ID="Label4" runat="server" Text='<%# Eval("spo2") %>'></asp:Label>
        &nbsp;

    </div>
</div> 

                                            <div class="row">
    <div class="col-lg-12">

        <label>
        Medicines</label> :-
        <asp:Label ID="Label6" runat="server" Text='<%# Eval("medicines") %>'></asp:Label>
        &nbsp;

    </div>
</div> 
 </div>    
                                        

                                    </ItemTemplate>

                                </asp:TemplateField>
                               
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   
</asp:Content>
