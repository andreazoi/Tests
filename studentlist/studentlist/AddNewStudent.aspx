<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="AddNewStudent.aspx.cs" Inherits="studentlist.AddNewStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="for_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="for_links" runat="server">
      <style>
          .aspNetDisabled {
    background-color: white!important; 
    color: white!important;
}
    input[type=checkbox] {
        height: 20px;
        width: 20px;
        visibility: visible!important;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="for_content" runat="server">

    
    <div class="wrapper">
<div class="container col-md-8 col-md-offset-2">

    <h2>Create Student Name</h2>
<div class="form-horizontal">
            <hr/>
   
            <div class="form-group">


                <div class="row">
                  <div class="  col-md-6">
                <div class="row">
                 
                <label class="control-label col-md-4"><b>student Code</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
			<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxstudentCode"   ViewStateMode="Enabled" placeholder="like ST001" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorstudentCode" runat="server"
                             ErrorMessage="studentCode  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxstudentCode" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="studentCode  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>
                      </div> 
                 



                    </div>
                <%-- code for text box for uname--%>
                



                <div class="row">
                  <div class="  col-md-6">
                <div class="row">
                 
                <label class="control-label col-md-4"><b>Name</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
			<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxStudent"   ViewStateMode="Enabled" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudent" runat="server"
                             ErrorMessage="Student  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxStudent" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="Student  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>
                      </div> 
                 <div class="  col-md-6">
                <div class="row">
                 
                <label class="control-label col-md-4"><b>surname</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
			<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxsurname"   ViewStateMode="Enabled" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorsurname" runat="server"
                             ErrorMessage="TextBoxsurname  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxsurname" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="surname  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>
                      </div>
                    </div>


              
             
                <div class="row">
                  <div class="  col-md-6">
                <div class="row">
                 
                <label class="control-label col-md-4"><b>Email</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
			<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxuemail"   ViewStateMode="Enabled" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatoruemail" runat="server"
                             ErrorMessage="uemail  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxuemail" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="uemail  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>
                      </div> 
                 <div class="  col-md-6 ">
             <div class="row">
                 
                <label class="control-label col-md-4"><b>Phone</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
				<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxphone"   ViewStateMode="Enabled" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorphone" runat="server"
                             ErrorMessage="phone  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxphone" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="phone  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>

               </div>
                    </div>
               
                <%-- code for text box for Userspecialty--%>

                 <div class="row">
                  <div class="  col-md-6">
                <div class="row">
                 
                <label class="control-label col-md-4"><b>specialty</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
			<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxUserspecialty"   ViewStateMode="Enabled" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserspecialty" runat="server"
                             ErrorMessage="User specialty  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxUserspecialty" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="User specialty  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>
                      </div> 
                 <div class="  col-md-6 ">
             
                    
                <div class="row">
                 
                <label class="control-label col-md-4"><b>Registration Year</b></label>
                        
                 <div class="col-md-8">
                    <div class="form-group-sm">
        			           
            
                                                  
			<div class="input-group">

                        <span class="input-group-addon "><span class="fas  fa-pencil-alt  iconstyle"></span></span>
           
                      <asp:TextBox ID="TextBoxregistrationYear"   ViewStateMode="Enabled" TextMode="Date" EnableViewState="true"  CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                                     
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorregistrationYear" runat="server"
                             ErrorMessage="registrationYear  is required" ForeColor="Red" InitialValue="-1"  ValidationGroup="ship"
                            ControlToValidate="TextBoxregistrationYear" Display="Dynamic" CssClass="alert-warning" SetFocusOnError="True" ToolTip="registration Year  is required"></asp:RequiredFieldValidator>

                                     
                  

  </div>
   				</div>
                </div>
                      
               </div>
                    </div>
                
               
             
                
                   </div>
            

            

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    
                    <asp:Button ID="Button1" class="btn btn-default" OnClick="Button1_submit" runat="server" Text="submit" />
                   
                </div>
                <asp:Label ID="Labelmassage" runat="server"  ForeColor="Green" Font-Bold="true"></asp:Label>
            </div>
        </div>
    
    <div>
        <a href="StudentsList.aspx">Back to List</a>
    </div>
</div>

	</div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="for_jscript" runat="server">
</asp:Content>
