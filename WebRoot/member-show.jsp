<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
	<link href="static/h-ui.admin/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
	<link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
	

  </head>
  
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
  <img class="avatar size-XL l" src="static/h-ui/images/ucnter/noavatar_small.gif">
  <dl style="margin-left:80px; color:#fff">
    <dt><span class="f-18">${bm.s_name}</span></dt>
    <dd class="pt-10 f-12" style="margin-left:0">这家伙很懒，什么也没有留下</dd>
  </dl>
</div>
<div class="pd-20">
  <table class="table">
    <tbody>
      <tr>
        <th class="text-r" width="80">性别：</th>
        <td>${bm.s_sex}</td>
      </tr>
      <tr>
        <th class="text-r">手机：</th>
        <td>${cm.c_ph}</td>
      </tr>
      <tr>
        <th class="text-r">身份证：</th>
        <td>${cm.c_id}</td>
      </tr>
      <tr>
        <th class="text-r">邮箱：</th>
        <td>${cm.c_yx}</td>
      </tr>   
      <tr>
        <th class="text-r">发展方向：</th>
        <td>${ot.o_fzfx}</td>
      </tr>
      
      <tr>
        <th class="text-r">籍贯：</th>
        <td>${bm.s_birthp}</td>
      </tr>
    </tbody>
  </table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

</body>
</html>
