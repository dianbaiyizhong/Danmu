<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_left.ascx.cs" Inherits="background_uc_left" %>


    


     <div class="sidebar-nav">
        <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>主面板</a>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
            <li><a href="index.html">主页</a></li>
            <li class="active"><a href="index.aspx">用户管理</a></li>
           
          
            <li ><a href="calendar.aspx">年历</a></li>
            
        </ul>

        <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>用户功能</a>
        <ul id="accounts-menu" class="nav nav-list collapse">
            <li ><a href="../login.aspx">登陆</a></li>
       
          
        </ul>

        <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>错误页面 <i class="icon-chevron-up"></i></a>
        <ul id="error-menu" class="nav nav-list collapse">
           
            <li ><a href="404.aspx">404 页面</a></li>
           
        </ul>

     

    </div>

     <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function () {
            $('.demo-cancel-click').click(function () { return false; });
        });
    </script>
