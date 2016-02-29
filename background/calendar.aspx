<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calendar.aspx.cs" Inherits="background_calendar" %>
<%@ Register  Src="uc_top.ascx" TagName="UserContorl" TagPrefix="TOP" %>
<%@ Register  Src="uc_footer.ascx" TagName="UserContorl" TagPrefix="FOOTER" %>
<%@ Register  Src="uc_left.ascx" TagName="UserContorl" TagPrefix="LEFT" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <title>后台管理</title>
      <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="lib/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
     <TOP:UserContorl ID="top" runat="server"/>

  
  <LEFT:UserContorl ID="left" runat="server"/>
  <!--<![endif]-->
    
 
    


    
 
    

    
    <div class="content">
        
        <div class="header">
            <div class="stats">
    <p class="stat"><span class="number">10</span>Users</p>
    <p class="stat"><span class="number">19</span>Events</p>
    <p class="stat"><span class="number">12</span>Calendars</p>
</div>

            <h1 class="page-title">Calendar</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="index.html">Home</a> <span class="divider">/</span></li>
            <li class="active">Calendar</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    


<link rel='stylesheet' type='text/css' href='lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.min.js'></script>

<script type='text/javascript'>

	$(document).ready(function() {

		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		$('#calendar').fullCalendar({
            header: false,
		});
        $('#calendar').fullCalendar('next');

	});

</script>
<style type='text/css'>

	#calendar {
		width: 100%;
		margin: 0 auto;
		}

</style>



<div style="float:right; margin-top: 1em;">
    <a href="#" class="btn btn-primary">Add</a>
    <a href="#" class="btn btn-danger">Remove</a>
    <a href="#" class="btn btn-info">Info</a>
    <a href="#" class="btn btn-success">Success</a>
    <a href="#" class="btn btn-warning">Warning</a>
</div>
<h2>Upcoming Events</h2>
<div id='calendar'></div>


                    
                    <FOOTER:UserContorl ID="UserContorl1" runat="server"/>
                    
            </div>
        </div>
    </div>
    


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function () {
            $('.demo-cancel-click').click(function () { return false; });
        });
    </script>
</body>
</html>
