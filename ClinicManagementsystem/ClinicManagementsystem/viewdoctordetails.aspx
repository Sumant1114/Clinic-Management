<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewdoctordetails.aspx.cs" Inherits="ClinicManagementsystem.viewdoctordetails" %>
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
    <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <center>
                        <h3>
                        Doctor Detail List</h3>
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <div class="container"> 
                            <div class="col-md-7">
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicdbconnectionString %>" SelectCommand="SELECT * FROM [doctor_details_tbl]"></asp:SqlDataSource>
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <center>
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
                             </center>
                     </div>
                  </div>
               </div>
            </div>
         </div>
                        </div>
                </div>
                <center>
                    <a href="homepage.aspx">
                        << Back to Home</a><span class="clearfix"></span>
                            <br />
                            <center>
            </div>
        </div>
        </div>
</asp:Content>
