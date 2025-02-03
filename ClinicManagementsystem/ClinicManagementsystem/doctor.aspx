<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="ClinicManagementsystem.doctor" %>
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
            <div class="col-md-5">
                <br />
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Nurse Details</h4>
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
                            <div class="col-md-4">
                                <label>Nurse ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server"  CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Nurse Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nurse Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                                                <div class="row">
    <div class="col-md-4">
        <label>Contact Number </label>
        <div class="form-group">
            <div class="input-group">
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="number"></asp:TextBox>
               
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <label>Address</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Add"></asp:TextBox>
        </div>
    </div>
</div>
                         <div class="row">
                           
        <label>Education </label>
        <div class="form-group">
            <div class="input-group">
                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Education"></asp:TextBox>
               
            </div>
        </div>
    </div>
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" Height="52px" Width="100px" />
                               
                            </div>
                           
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" Height="52px" Width="89px" />
                               
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
                            <center>
                                    <h4>Nurse List</h4>
                                </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [nurse_profile_tbl]"></asp:SqlDataSource>
                        <div class="col">
                             <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nurse_id" DataSourceID="SqlDataSource1">
     <Columns>
         <asp:BoundField DataField="nurse_id" HeaderText="nurse_id" ReadOnly="True" SortExpression="nurse_id" />
         <asp:BoundField DataField="nurse_name" HeaderText="nurse_name" SortExpression="nurse_name" />
         <asp:BoundField DataField="contact_number" HeaderText="contact_number" SortExpression="contact_number" />
         <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
         <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
     
     </Columns>
  </asp:GridView>
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [nurse_profile_tbl]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        </div>
</asp:Content>
