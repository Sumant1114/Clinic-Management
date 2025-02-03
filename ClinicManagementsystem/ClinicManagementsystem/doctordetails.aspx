<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="doctordetails.aspx.cs" Inherits="ClinicManagementsystem.doctordetails" %>
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
        <br />
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Doctor Details</h4>
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
                     <div class="col-md-3">
                        <label>Doctor ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Doctor ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="Button4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Doctor Name</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Doctor Name"></asp:TextBox>
                          
                     </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="English" Value="English" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="Marathi" Value="Marathi" />
                          
                           </asp:DropDownList>
                        </div>
                                            <div class="col-md-6">
                        <label>Area </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Area "></asp:TextBox>
                        </div>
                     </div>
                     </div>
                     <div class="col-md-4">
                                              <div class="col-md-9">
   <label>Availability </label>
   <div class="form-group">
      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Availability "></asp:TextBox>
   </div>
</div>
                        
                     </div>
                     <div class="col-md-4">
                        <label>Experties</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Cardiologist " Value="Cardiologist " />
                              <asp:ListItem Text="Dermatologist " Value="Dermatologist " />
                              <asp:ListItem Text="Endocrinologist  " Value="Endocrinologist  " />
                              <asp:ListItem Text="Gastroenterologist  " Value="Gastroenterologist " />
                              <asp:ListItem Text="Gynecologist/Obstetrician (OB-GYN)" Value="Gynecologist/Obstetrician (OB-GYN)" />
                              <asp:ListItem Text="Hematologist  " Value="Hematologist  " />
                              <asp:ListItem Text="Neurologist " Value="Neurologist " />
                              <asp:ListItem Text="Ophthalmologist " Value="Ophthalmologist " />
                              <asp:ListItem Text="Orthopedic Surgeon" Value="Orthopedic Surgeon" />
                              <asp:ListItem Text="Otolaryngologist (ENT)" Value="Otolaryngologist (ENT)" />
                              <asp:ListItem Text="Pediatrician " Value="Pediatrician " />
                              <asp:ListItem Text="Psychiatrist " Value="Psychiatrist " />
                              <asp:ListItem Text="Pulmonologist  " Value="Pulmonologist  " />
                              <asp:ListItem Text="Rheumatologist " Value="Rheumatologist " />
                              <asp:ListItem Text="Urologist  " Value="Urologist  " />
                             
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-12">
                        <label>Education</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Education " TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div> 
 <div class="row">
   <div class="col-12">
      <label>Experience</label>
      <div class="form-group">
         <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Experience " TextMode="MultiLine" Rows="2"></asp:TextBox>
      </div>
   </div>
</div>                      
                  <div class="row">
                     <div class="col-12">
                        <label>Linked Hospital</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Linked Hospital" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        <br />
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [doctor_details_tbl]"></asp:SqlDataSource>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Doctor Details List</h4>
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
                                <asp:BoundField DataField="doctor_id" HeaderText="ID" SortExpression="doctor_id" >
                               
                                <HeaderStyle Font-Bold="True" />
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                               
                                <asp:TemplateField>
                                    <ItemTemplate>

                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("doctor_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                            </div> 


                                            <div class="row">
    <div class="col-lg-12">

        Area:-
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("area") %>'></asp:Label>
        &nbsp;|
        <label>
        Availability&nbsp; :-&nbsp;
        </label>
        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("availability") %>'></asp:Label>
        &nbsp;|&nbsp;

    </div>
</div> 

                                            <div class="row">
    <div class="col-lg-12">

        <label>
        Language:-
        <asp:Label ID="Label4" runat="server" Text='<%# Eval("language") %>'></asp:Label>
        &nbsp;|&nbsp; Experties:-
        <asp:Label ID="Label5" runat="server" Text='<%# Eval("experties") %>'></asp:Label>
        </label>

    </div>
</div> 

                                            <div class="row">
    <div class="col-lg-12">

        <label>
        Education</label> :-
        <asp:Label ID="Label6" runat="server" Text='<%# Eval("education") %>'></asp:Label>
        &nbsp;|&nbsp;
        <label>
        Linked Hospital:-
        <asp:Label ID="Label7" runat="server" Text='<%# Eval("linked_hospital") %>'></asp:Label>
        </label>

    </div>
</div> 
                                                                                        <div class="row">
                                                <div class="col-lg-12">
                                                   
                                                    <label>
                                                    Experience:-
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("experience") %>'></asp:Label>
                                                    </label>
                                                   
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
   </div>
        </div>
</asp:Content>
