<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editUser.aspx.cs" Inherits="background_editUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register  Src="uc_top.ascx" TagName="UserContorl" TagPrefix="TOP" %>
<%@ Register  Src="uc_footer.ascx" TagName="UserContorl" TagPrefix="FOOTER" %>
<%@ Register  Src="uc_left.ascx" TagName="UserContorl" TagPrefix="LEFT" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

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
      <form id="form1" runat="server">

   <TOP:UserContorl ID="top" runat="server"/>

  
  <LEFT:UserContorl ID="left" runat="server"/>
    


  
      <div class="content">
        
        <div class="header">
            
            <h1 class="page-title">用户信息修改</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="index.html">主页</a> <span class="divider">/</span></li>
            <li><a href="users.html">用户管理</a> <span class="divider">/</span></li>
            <li class="active">用户信息修改</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
<asp:LinkButton ID="save" class="btn btn-primary" runat="server" 
        onclick="save_click"><i class="icon-save"></i>保存</asp:LinkButton>
  
  <asp:Button ID="bt_delete" runat="server" Text="删除" 
        class="btn" onclick="bt_delete_Click" />



  <div class="btn-group">
  </div>
    
   
    
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">修改信息</a></li>
      <li><a href="#profile" data-toggle="tab">修改密码</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
                 
       <label>用户ID</label>
        <asp:TextBox ID="tb_id" runat="server" class="input-xlarge"></asp:TextBox>

        <label>用户名</label>
        <asp:TextBox ID="tb_username" runat="server" class="input-xlarge"></asp:TextBox>
       
        <label>昵称</label>
       <asp:TextBox ID="tb_nickname" runat="server" class="input-xlarge"></asp:TextBox>
      
      </div>
      <div class="tab-pane fade" id="profile">
        <label>请输入密码</label>
        <asp:TextBox ID="tb_password" runat="server" type="password" class="input-xlarge"></asp:TextBox>
   
        <div>
           <asp:Button ID="submit" runat="server" class="btn btn-primary" Text="提交" 
                     onclick="submit_Click" />
         
        </div>
      </div>
  </div>

</div>

<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Delete Confirmation</h3>
  </div>
  <div class="modal-body">
    
    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
  </div>
</div>

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
      </form>
</body>
</html>
