<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc_top.ascx.cs" Inherits="background_uc_top" %>
  



          <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                   
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i><asp:Label ID="lable_adminname" runat="server" Text="Label"></asp:Label>
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                       
                            <li class="divider"></li>
                            <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                            <li class="divider visible-phone"></li>
                            <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <a class="brand" href="index.html"><span class="first">啪啪啪</span> <span class="second">弹幕网</span></a>
        </div>
    </div>

     <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function () {
            $('.demo-cancel-click').click(function () { return false; });
        });
    </script>