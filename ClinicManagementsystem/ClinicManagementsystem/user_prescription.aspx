<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_prescription.aspx.cs" Inherits="ClinicManagementsystem.user_prescription" %>
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
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date " TextMode="Date" ></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="Button2_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                     </div>
                        </div>
                     </div>
                  </div>
                  
                   <div class="row">
                     <div class="col-12">
                        <label>Medicines</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Medicines " TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         
      </div>
            </div>
        </div>
</asp:Content>
