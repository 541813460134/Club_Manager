<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>社团信息管理</title>
	<link rel="stylesheet" href="static/h-ui.admin/css/reset.css" />
	<link rel="stylesheet" href="static/h-ui.admin/css/login.css" />
        <script type="text/javascript" src="static/h-ui.admin/js/jquery.min.js"></script>
        <script type="text/javascript" src="static/h-ui.admin/js/login.js"></script>
</head>
<body>
<div class="page">
	<div class="loginwarrp">
		<div class="logo">管理员登陆</div>
        <div class="login_form">
				<form id="Login" name="Login" method="post"  action="${pageContext.request.contextPath}/servlet/LoginServlet">
				<li class="login-item">
					<span>账　号：</span>
					<input type="text" id="s_number" name="s_number" class="login_input" >
                                        <span id="count-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" id="s_password" name="s_password" class="login_input" >
                                        <span id="password-msg" class="error"></span>
				</li>
				<li class="login-sub">
					<input type="submit" name="Submit" value="登录" />
                                        <input type="reset" name="Reset" value="重置" />
				</li>                      
           </form>
		</div>
	</div>
</div>
<script type="text/javascript">
		window.onload = function() {
			var config = {
				vx : 4,
				vy : 4,
				height : 2,
				width : 2,
				count : 100,
				color : "121, 162, 185",
				stroke : "100, 200, 180",
				dist : 6000,
				e_dist : 20000,
				max_conn : 10
			}
			CanvasParticle(config);
		}
	</script>
	<script type="text/javascript" src="static/h-ui.admin/js/canvas-particle.js"></script>
</body>
</html>