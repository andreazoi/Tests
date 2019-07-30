<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" MaintainScrollPositionOnPostback="true"   AutoEventWireup="true" CodeBehind="Admin_Dashbord.aspx.cs" Inherits="studentlist.Admin_Dashbord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="for_title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="for_links" runat="server">
  
     <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <link href="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <link href="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--js-->
    <script src="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/js/jquery-2.1.1.min.js"></script>
    <!--icons-css-->
    <link href="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/css/font-awesome.css" rel="stylesheet"/>
    <!--Hoverable Buttons-->
    <link href="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/css/hover.css" rel="stylesheet"/>
    <!--Google Fonts-->
    <link href="http://fonts.googleapis.com/css?family=Carrois+Gothic" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Work+Sans:400,500,600" rel="stylesheet" type="text/css"/>
    <!--static chart-->
    <script src="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/js/Chart.min.js"></script>
    <!--//charts-->
    <!-- geo chart -->
    <script src="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/js/modernizr.min.js" type="text/javascript"></script>
    <!---Google Font Railway-->
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"/>
    <!--geo chart-->
    <!--skycons-icons-->
    <script src="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/js/skycons.js"></script>
    <!--//skycons-icons-->
    <!--JQuery Data Tables Styles -->
    <link href="http://cms.zaksmobiles.co.uk/Areas/Admin/StyleScriptImageFontLayout/jQueryDataTable/jQuerydataTable.css" rel="stylesheet"/>

    <!--
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
    -->
    <!--Bootstrap Toggle box-->
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet"/>
     <link href="assets/css/fontawesome-all.min.css" rel="stylesheet" />
    <link href="assets/css/fontawesome-all.min.css" rel="stylesheet" />
    <style>

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="for_content" runat="server">




   <div class="row">
                    



<div class="container-fluid">


    <div class="market-updates">
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-2">
                <div class="col-md-8 market-update-left">
                    <h3>83</h3>
                    <h4>Registered User</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-file-text-o" style="color:#FC8213;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-3">
                <div class="col-md-8 market-update-left">
                    <h3>135</h3>
                    <h4>Daily Visitors</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-eye" style="color:#337AB7;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-1">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Best Clients</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-black-tie fa-500px" style="font-size:80px;color:#fff;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
   
    <br>

    <div class="market-updates">
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-2">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Away Clients</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-bicycle" style="font-size:80px;color:#fff;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-3">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Top Sold Products</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-product-hunt" style="font-size:80px;color:#fff;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-1">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Lowest Sold Products</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-level-down" style="font-size:80px;color:#fff;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
   
    <br>

    <div class="market-updates">
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-2">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Area of Lowest Sale</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-hand-o-down " style="font-size:80px;color:#fff;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-3">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Area of Highest Sale</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-hand-o-up" style="font-size:80px;color:#fff;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-1">
                <div class="col-md-8 market-update-left">
                    <h3>10</h3>
                    <h4>Top Viewed Products</h4>
                    <p>Other hand, we denounce</p>
                </div>
                <div class="col-md-4 market-update-right">
                    <i class="fa fa-eye clr-block-3" style="color:#68AE00;"> </i>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>

</div>
<br>
<!--Pie Chart-->

<div class="chart-first-line">
    <div class="col-md-6 chart-blo-1">
        <div class="dygno">
            <h2>Doughnut</h2>

            <canvas id="doughnut" height="300" width="470" style="width: 470px; height: 300px;"></canvas>
            
        </div>
    </div>

    <div class="col-md-6 chart-blo-1">
        <div class="line-chart">
            <h3>Line Chart</h3>
            <canvas id="line" height="300" width="460" style="width: 460px; height: 300px;"> </canvas>
            
        </div>
    </div>

    <div class="clearfix"></div>
</div>
<!--Pie Chart End-->
                </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="for_jscript" runat="server">
    <script>
                var doughnutData = [
                    {
                        value: 30,
                        color: "#337AB7"
                    },
                    {
                        value: 50,
                        color: "#929292"
                    },
                    {
                        value: 100,
                        color: "#FC8213"
                    },
                    {
                        value: 40,
                        color: "#68AE00"
                    },
                ];
                new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);
            </script>
    <script>
                var lineChartData = {
                    labels: ["", "", "", "", "", "", ""],
                    datasets: [
                        {
                            fillColor: "rgba(252, 130, 19, 0.74)",
                            strokeColor: "#FC8213",
                            pointColor: "#FC8213",
                            pointStrokeColor: "#fff",
                            data: [65, 59, 90, 81, 56, 55, 40]
                        },
                        {
                            fillColor: "rgba(51, 122, 183, 0.71)",
                            strokeColor: "#337AB7",
                            pointColor: "#337AB7",
                            pointStrokeColor: "#fff",
                            data: [28, 48, 40, 19, 96, 27, 100]
                        }
                    ]

                };
                new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);

            </script>
</asp:Content>
