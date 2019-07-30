<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="StudentsList.aspx.cs" Inherits="studentlist.StudentsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="for_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="for_links" runat="server">

    <style>

        .hvr-buzz:hover, .hvr-buzz:focus, .hvr-buzz:active {
    -webkit-animation-name: hvr-buzz;
    animation-name: hvr-buzz;
    -webkit-animation-duration: 0.15s;
    animation-duration: 0.15s;
    -webkit-animation-timing-function: linear;
    animation-timing-function: linear;
    -webkit-animation-iteration-count: infinite;
    animation-iteration-count: infinite;
}
.btn-success:hover, .btn-success:focus, .btn-success.focus, .btn-success:active, .btn-success.active, .open > .dropdown-toggle.btn-success {
    color: #fff;
    background-color: #449d44;
    border-color: #398439;
}

        .table thead > tr > th, .table tbody > tr > th, .table tfoot > tr > th, .table thead > tr > td, .table tbody > tr > td, .table tfoot > tr > td {
    padding: 8px;
    line-height: 1.428571429;
     vertical-align:middle!important;
    border-top: 1px solid #dddddd;
}
  
</style>
    <style>
          input[type=checkbox] {
        height: 0;
        width: 0;
        visibility: hidden;
    }

   #lbl {
        cursor: pointer;
        text-indent: -9999px;
        width: 20px;
        height: 20px;
        background: grey;
        display: block;
        border-radius: 50px;
        position: relative;
    }

        #lbl:after {
            content: '';
            position: absolute;
            top: 5px;
            left: 5px;
            width: 10px;
            height: 10px;
            background: #4d90fe00;
            border-radius: 90px;
            transition: 0.3s;
        }

    input:checked + #lbl {
        background: #bada55;
    }

        input:checked + #lbl:after {
            left: calc(100% - 5px);
            transform: translateX(-100%);
        }

    #lbl:active:after {
        width: 130px;
    }
    </style>
    <script type="text/javascript">
        function showModal() {
            $("#myModal1").modal('show');
        }

        $(function () {
            $("#Button1").click(function () {
                showModal();
            });
        });
    </script>
    <style>
                          .alert-info {
    color: #31708f;
    background-color: #2c7ca3!important;
    border-color: #bce8f1;
}.alert-danger {
    color: #a94442;
    background-color: #be2020!important;
    border-color: #ebccd1;
}.alert-warning {
    color: #8a6d3b;
    background-color: #a59333!important;
    border-color: #faebcc;
}
                            .minus{

                                margin :10px 1px 10px 1px;
                                padding:20px 1px 10px 1px;
                            }
                         
                        </style>
    <style>
        .modal-backdrop {
    
  
    z-index: 0;
    background-color: #000;
}
        
    
                                      .iconstyle
                                      {

                                          font-size: 15px; 
                                          color: #5e6a6f;
                                         
                                      }
                                    
                                      .input-group-addon{


      padding: 6px 12px; 
    font-size: 14px;
    font-weight: normal;
    line-height: 1;
    color: #555;
    text-align: center;
    background-color: #eee;
    border: 1px solid #ccc;
    border-radius: 1px;
    margin-left:10px!important;


                                      } 
        button, html input[type="button"], input[type="reset"], input[type="submit"] {
    -webkit-appearance: button;
    cursor: pointer;
}
        button, input, optgroup, select, textarea {
    margin: 0px 0px 0px 0px!important;
    color: inherit;
}
        input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}

                @media (min-width: 768px){
.modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
}}
                .close {
    float: right;
    font-size: 21px;
    font-weight: bold;
    line-height: 1;
    color: #000;
    text-shadow: 0 1px 0 #fff;
    filter: alpha(opacity=20);
    opacity: .2;
}
                .modal-title {
    margin: 0;
    line-height: 1.42857143;
}
                h4, .h4 {
    font-size: 18px;
}
                .modal-body {
    position: relative;
    padding: 15px;
}
                .panel-default {
    border-color: #ddd;
}
                .boxbordermodel {
    border: ridge;
    border-width: 1px;
    border-color: rgba(51, 51, 51, 0.90);
    padding: 30px;
    margin: 5px;
    background-color: white;
}
                .row {
    margin-right: -15px;
    margin-left: -15px;
}
                .panelmodel {
    top: 3px !important;
}
                .form-horizontal .form-group {
    margin-right: -15px;
    margin-left: -15px;
}
                .form-group {
    margin-bottom: 15px;
}
                @media (min-width: 1200px) {
                    .col-lg-6 {
                        width: 50%;
                    }
                }
                @media (min-width: 1200px) {
                    .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
                        float: left;
                    }
                }
        @media (min-width: 992px) {
            .col-md-6 {
                width: 50%;
            }

            .labalmodel {
                margin: 0 0 0 86px !important;
            }

            .label-default {
                background-color: #777;
            }

            .label {
                display: inline;
                padding: .2em .6em .3em;
                font-size: 75%;
                font-weight: bold;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: .25em;
            }

            .input-group {
                position: relative;
                display: table;
                border-collapse: separate;
                margin-left: 10px;
                margin-top: 10px;
            }

            .clearfix:after, .dl-horizontal dd:after, .container:after, .container-fluid:after, .row:after, .form-horizontal .form-group:after, .btn-toolbar:after, .btn-group-vertical > .btn-group:after, .nav:after, .navbar:after, .navbar-header:after, .navbar-collapse:after, .pager:after, .panel-body:after, .modal-header:after, .modal-footer:after {
                clear: both;
            }

            @media (min-width: 992px) {
                .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
                    float: left;
                }

                .headingmodel {
                    white-space: normal;
                    text-align: center;
                    font-weight: bold;
                }

                .modal-content {
                    position: relative;
                    background-color: #fff;
                    -webkit-background-clip: padding-box;
                    background-clip: padding-box;
                    border: 1px solid #999;
                    border: 1px solid rgba(0, 0, 0, .2);
                    border-radius: 6px;
                    outline: 0;
                    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
                    box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
                }

                .modal-header {
                    padding: 15px;
                    border-bottom: 1px solid #e5e5e5;
                }
            }
        }
            </style>
    <style>
.divcenter {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
</style>
    <style>
#snackbar {
    visibility: hidden;
    min-width: 250px;
    margin-left: -125px;
    background-color:#ff6a00;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 17px;
    font-weight:bold;
}

        @media (min-width: 992px) {
            .modal-lg {
                width: 1300px;
            }
        }
#snackbar.show {
    visibility: visible;
    -webkit-animation: fadein 0.7s, fadeout 0.7s 2.7s;
    animation: fadein 0.7s, fadeout 0.7s 2.7s;
}

@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
</style>
    <style>

       .pagination {
  display: inline-block;
  width:100%;
  padding-left: 0;
  margin: 20px 0;
  border-radius: 4px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  margin-left: -1px;
  line-height: 1.42857143;
  color: #337ab7;
  text-decoration: none;
  background-color: #fff;
  border: 1px solid #ddd;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color:#ddd;
  cursor: default;
  background-color: #337ab7;
  border-color: #337ab7;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
  border-color: #ddd;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
}
.pager {
  padding-left: 0;
  margin: 20px 0;
  text-align: center;
  list-style: none;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
}
       .dropdown-menu-right {
    right: 60px!important;
    left: auto!important;
    top: auto!important;
}
                                                         .textfield {
                                                            margin:0px;
                                                            padding:1px;
                                                            
                                                         }
                                                         .textfield:hover
                                                         {


                                                             width:200px!important;
                                                             zoom:normal!important;
                                                             z-index:21212!important;
                                                             background-color:gainsboro!important;
                                                         }
                                                     </style>
    <style>
                                            .labalmodel {
                                                margin: 0 0 0 86px !important
                                            }

                                            .rowbordermodel {
                                                border-width: 1px;
                                                border: ridge;
                                                border-color: aliceblue;
                                                margin: 20px
                                            }

                                            .boxbordermodel {
                                                border: ridge;
                                                border-width: 1px;
                                                border-color: cadetblue;
                                                padding: 5px;
                                                margin: 5px;
                                            }


                                            .headingmodel {
                                                white-space: normal;
                                                text-align: center;
                                                font-weight: bold;
                                            }
                                        </style>
    <link href="assets/css/Hover.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="for_content" runat="server">

  <asp:ScriptManager runat="server" AjaxFrameworkMode="Enabled" EnablePageMethods="true" EnablePartialRendering="true" LoadScriptsBeforeUI="false" AsyncPostBackTimeout="222"></asp:ScriptManager>
 

  
 
<asp:UpdatePanel ID="UpdatePanelgridview" class="panel-default"  runat="server"  ViewStateMode="Enabled" EnableViewState="true" ChildrenAsTriggers="true"  UpdateMode="Conditional" RenderMode="Inline" ValidateRequestMode="Disabled" >
        <ContentTemplate>

 <asp:Panel runat="server"  ViewStateMode="Enabled" >
    
     <div class="wrapper">
    <h2>Student</h2>
    <br>
    <a href="AddNewStudent.aspx" class="hvr-buzz  btn btn-success" style="color:#fff; ">
        Create New Student
    </a>
    <br>
    <br>
    


</div>


     <div class="row ">
           <div class="col-sm-3 " style="float:right!important;">


                                                            <div class="form-group-sm">
        			       
                                                  
					<div class="input-group">
 <span class="input-group-addon ">
                   Search:

               </span>
              
           <asp:TextBox ID="TextBoxsearch"   ViewStateMode="Enabled" EnableViewState="true"  CssClass="form-control" OnTextChanged="TextBoxsearch_TextChanged" AutoPostBack="true" runat="server"></asp:TextBox>



						 
					</div>
                                     
            
  
   				</div>



                                                        </div>
           <div class="  col-sm-2  " style="float:left!important;">


                                                            <div class="form-group-sm">
        			       
                                                  
					<div class="input-group">

              
    
           <asp:DropDownList ID="ddlPageSize"  CssClass="dropdown dropdown-menu-left form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PageSize_Changed">
            <asp:ListItem Text="10" Value="10" />
            <asp:ListItem Text="5" Value="5" />
            <asp:ListItem Text="50" Value="50" />
        </asp:DropDownList>
 <span class="input-group-addon ">
                   Entries

               </span>

						 
					</div>
                                     
            
  
   				</div>



                                                        </div>
        </div>
     <br />
   <asp:Panel ID="PanelStudents" runat="server"  ViewStateMode="Enabled" ScrollBars="Auto">
         
                      
                <asp:GridView ID="GridViewStudents" CssClass="table table-hover table-responsive-xl" runat="server" CurrentSortField="surname " 
CurrentSortDirection="ASC" onsorting="GridView1_Sorting"
                                        AllowPaging="false" Width="100%" AllowSorting="true"  OnRowCommand="GridViewStudents_RowCommand" OnRowCreated="GridView1_RowCreated"
                                        AutoGenerateColumns="False" CellPadding="4" GridLines="None" HeaderStyle-Wrap="false" AlternatingRowStyle-Wrap="false" RowStyle-Wrap="false"
                                        HorizontalAlign="Center" DataKeyNames="studentCode"  EmptyDataText="No Records" EmptyDataRowStyle-HorizontalAlign="Center" EmptyDataRowStyle-VerticalAlign="Middle" EditRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="#ff0000"
                                        PageSize="10" OnPageIndexChanging="GridViewStudents_PageIndexChanging"
                                        PagerStyle-HorizontalAlign="Right" 
                                        PagerStyle-VerticalAlign="Bottom" PagerStyle-Width="10">
                                       

                                        <Columns>
                                            <%--  for  RowNumber--%>
                                            <asp:TemplateField HeaderText="Sr#" InsertVisible="False" Visible="true" ShowHeader="true">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' Width="10px" runat="server" /></td>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                              <%--  for  name--%>
                                            <asp:TemplateField HeaderText="studentCode" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="studentCode">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelstudentCode" runat="server" Text='<%# Eval("studentCode") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>


                                          
                                           
                                            <%--  for  imgUrl--%>
                                            <%--<asp:TemplateField HeaderText="imgUrl" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="imgUrl">
                                                <ItemTemplate>
                                                    <asp:Image ID="imageProduct" runat="server" ImageAlign="Middle" ImageUrl='<%# Eval("imgUrl") %>' Width="100px" Height="50px" CssClass="img-thumbnail"
                                                         AlternateText="Image Not Found"  Visible="true">
                                                    </asp:Image>

                                                </ItemTemplate>

                                            </asp:TemplateField>--%>

                                       
                                              <%--  for  name--%>
                                            <asp:TemplateField HeaderText="Name" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="name">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="Labelname" runat="server" Text='<%# Eval("name") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>



                                           <%--  for  surname--%>
                                            <asp:TemplateField HeaderText="sur name" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="surname">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="Labelsurname" runat="server" Text='<%# Eval("surname") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            
                                             <%--  for  email--%>
                                            <asp:TemplateField HeaderText="Email" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="email">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="Labelemail" runat="server" Text='<%# Eval("email") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            
                                             <%--  for  phone_number--%>
                                            <asp:TemplateField HeaderText="Phone number" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="phone_number">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="Labelphone_number" runat="server" Text='<%# Eval("phone_number") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>



                                            <%--  for  registrationYear--%>
                                            <asp:TemplateField HeaderText="registrationYear" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="registrationYear">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelregistrationYear" runat="server" Text='<%# Eval("registrationYear") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            
                                            <%--  for  specialty--%>
                                            <asp:TemplateField HeaderText="specialty" InsertVisible="False" Visible="true" ShowHeader="true"
                                                SortExpression="specialty">
                                                
                                                <ItemTemplate>
                                                    <asp:Label ID="Labelspecialty" runat="server" Text='<%# Eval("specialty") %>' Visible="true">
                                                    </asp:Label>

                                                </ItemTemplate>

                                            </asp:TemplateField>

                                       
                                         
                                           
                                          
                                            <asp:TemplateField AccessibleHeaderText="Action" ConvertEmptyStringToNull="False" HeaderText="Action" InsertVisible="False">
                                                <ItemTemplate>

                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-info dropdown-toggle btn-xs" data-toggle="dropdown" aria-expanded="false">
                                                            Actions<span class="caret"></span><span class="sr-only">Toggle Dropdown
                                                            </span>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                             <li>
                                                                <span class="btn  form-group-lg">
                                                                    <i class="fa fa-eye ">

                                                                        <asp:LinkButton ID="LinkButtonsdetails"  ClientIDMode="Static"  CommandArgument='<%# Eval("studentCode") %>' CommandName="edit" Text="edit" class="label alert-info"   runat="server"></asp:LinkButton>
                                                                    </i>

                                                                </span>

                                                               </li>
                                                        </ul>
                                                    </div>
                                                </ItemTemplate>
                                                

                                            </asp:TemplateField>
                                        </Columns>
                                       
                                        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                       
                                        <PagerStyle    />
                                       
                                        <FooterStyle BackColor="#5D7B9D"   />
                                        <SelectedRowStyle BackColor="#0099cc" />
                                        <SortedAscendingCellStyle BackColor="AliceBlue"  />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="Window" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                                          <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#563a00"
                                            Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="White"
                                            Font-Bold="True" ForeColor="Black" />
                                        
                                        <AlternatingRowStyle />

                                        <RowStyle />
                                        <SelectedRowStyle BackColor="#563a00" ForeColor="White" Font-Bold="true" />
                                           </asp:GridView>
          
                
             
             </asp:Panel>

     <div class="row">
         <div  class="col-md-9 col-xs-8 col-sm-8 col-lg-10">
             <div class="pagination">


<asp:Repeater ID="rptPager" runat="server">
        <ItemTemplate>

     <asp:LinkButton ID="lnkPage"  runat="server" Text = '<%#Eval("Text") %>' CommandArgument = '<%# Eval("Value") %>' Enabled = '<%# Eval("Enabled") %>' OnClick = "Page_Changed"></asp:LinkButton>
      



            </ItemTemplate>
        </asp:Repeater>

          
             </div>  





      </div>
      <div class="col-md-3 col-xs-4 col-sm-4 col-lg-2 " style=" margin-top:20px;">Page <asp:Label ID="LabelpageCurrent"  Visible="true" Font-Bold="true" ForeColor="#666666"  runat="server"></asp:Label>  of <asp:Label ID="Pagetotal" Visible="true" Font-Bold="true"  ForeColor="#666666" runat="server"></asp:Label> (<asp:Label ID="Labeltptalrows" Visible="true" Font-Bold="true" ForeColor="#666666" runat="server"></asp:Label> --items)

           </div>

    

        </div>
                    

     </asp:Panel>
</ContentTemplate></asp:UpdatePanel>
 



</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="for_jscript" runat="server">
</asp:Content>
