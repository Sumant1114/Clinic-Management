<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ClinicManagementsystem.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div style="    background: #f2f5f7;">
        <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/signup.png" width="150px" />
                                </center>

                            </div>

                        </div>
                        <div class="row">
                                 <div class="col">
                                             <center>
                                                    <h3> User login</h3>
                                              </center>
                                 </div>
                        </div>
                        <div class="row">
                             <div class="col">
                                 <center>
                                       <hr />
                                  </center>
                            </div>
                        </div>

                          <div class="row">
                                 <div class="col">
                                     <label>Patient Id</label>
                                      <div class="form-group">
                                         
                                          <asp:TextBox cssclass="form-control" id="TextBox1" runat="server" placeholder="Patient ID"> </asp:TextBox>
         
                                       </div>
                                     <br />
                                       <label>Password</label>
                                       <div class="form-group">
       
                                         <asp:TextBox cssclass="form-control" id="TextBox2" runat="server" placeholder="Password" TextMode="Password"> </asp:TextBox>
           
                                       </div>
                                     <br />
                                      <div class="form-group" style=" display: grid;">
                                          <asp:Button cssclass="btn btn-success .btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
   
                                     </div>
                                     <br />
                                      <div class="form-group" >
                                        
                                         <a href="usersignup.aspx" style=" display: grid;"> <input class="btn btn-secondary btn-block btn-lg"  id="Button2"  type="button" value="Sign Up" /></a>
                                    </div>

                                 </div>
                            </div>


                    </div>

                </div>

                <a href="homepage.aspx"><< Back to Home </a> <br /><br />
            </div>

        </div>

    </div>
        </div>
</asp:Content>
