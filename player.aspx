<%@ Page Language="C#" AutoEventWireup="true" CodeFile="player.aspx.cs" Inherits="player" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title></title>
 <script src="Scripts/jquery-1.11.1.min.js"></script>
 <script src="Scripts/danmu/danmuplayer.js"></script>
 <link rel="stylesheet" href="Styles/danmu/danmuplayer.css">
  

<script src="Scripts/danmu/init.js"></script>
<script src="Scripts/danmu/execute.js"></script>


<style>
body
{

    background:url('Styles/player/bg_player.jpg') ;
  
    background-position:center;  
    background-size: 100%; 


    
}
img  
{
   position:absolute;
   left:0; 
   right:0;  bottom:0;  margin:auto;  width:100%; height:100%; z-index:-1;  
}

</style>
	
</head>
<body>
    <img src="Styles/player/bg_player.jpg" alt=""> 


    <div id="danmup" style="left:50%;position:absolute;margin-left:-400px;top:320px"></div>
	


    <a href="3dplayer.aspx?video_id=<%=video_id %>" style="color:white">点击进入3D炫酷播放模式</a>

 
 <script>
     $("#danmup").danmuplayer({
         src: "upload/video/<%=video_id %>.mp4", // 视频源
         height: 400, // 播放器的高度
         width: 800, // 播放器的宽度,最小宽度支持为720
         speed: 20000, // 弹幕速度，穿过视频的毫秒数
         danmuss: {}, // danmuss对象，运行时的弹幕内容
         default_font_color: "#FFFFFF", // 默认的弹幕颜色
         font_size_small: 16, // 小号弹幕的字体大小,注意此属性值只能是整数
         font_size_big: 28, // 大号弹幕的字体大小
         opacity: "5", // 默认弹幕的透明度
         top_botton_danmu_time: 6000, // 底部及顶部弹幕存留的世界
         url_to_get_danmu: "getDanmu.aspx?video_id=<%=video_id %>", // 用来接收弹幕信息的url
         // (稍后介绍)
         url_to_post_danmu: "setDanmu.aspx?video_id=<%=video_id %>" // 用来存储弹幕信息的url (稍后介绍)
     });
 
 
 
 </script>














 

   
  
</body>




</html>
