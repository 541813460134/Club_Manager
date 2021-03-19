<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>社团成员信息管理</title>
    
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
	<link rel="Bookmark" href="favicon.ico" >
	<link rel="Shortcut Icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />


  </head>
  
<body>
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs">社团成员信息管理</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="#">软创</a> 	
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
				        </ul>
			        </li>
		        </ul>
	        </nav>
        </div>
    </div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
		<dl id="menu-member">
			<dt><i class="Hui-iconfont">&#xe60d;</i>人员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
				    <li><a href="${pageContext.request.contextPath}/servlet/FindBaseServlet?nianji=20" title="成员列表">20级</a></li>
					<li><a href="${pageContext.request.contextPath}/servlet/FindBaseServlet?nianji=19" title="成员列表">19级</a></li>
					<li><a href="${pageContext.request.contextPath}/servlet/FindBaseServlet?nianji=18" title="成员列表">18级</a></li>
					<li><a href="${pageContext.request.contextPath}/servlet/FindBaseServlet?nianji=17" title="成员列表">17级</a></li>
					<li><a href="${pageContext.request.contextPath}/servlet/FindBaseServlet?nianji=16" title="成员列表">16级</a></li>		
		        </ul>
	        </dd>
        </dl>
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span>${daohang}级<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
		<article class="cl pd-20">

			<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"> <a href="javascript:;" onclick="member_add('添加用户','member-add.jsp','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span> </div>
			<div class="mt-20">
				<table class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="" value=""></th>
							<th width="60">姓名</th>
							<th width="50">性别</th>
							<th width="100">学号</th>
							<th width="100">班级</th>
							<th width="100">手机</th>
							<th width="100">QQ</th>
							<th width="70">身份证</th>
							<th width="70">籍贯</th>		
							<th width="100">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach  items="${personbase}" var="p" >
					      <c:forEach  items="${personchat}" var="pc" >
					      <c:if test="${p.s_number==pc.s_number}">
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>	
							<td><u style="cursor:pointer" class="text-primary" onclick="member_show('${p.s_name}','${pageContext.request.contextPath }/servlet/FindPerson?s_number=${p.s_number}','10001','360','400')">${p.s_name}</u></td>
							<td>${p.s_sex}</td>
							<td>${p.s_number}</td>
							<td>${p.s_class}</td>
							<td>${pc.c_ph}</td>
							<td>${pc.c_qqn}</td>
							<td>${pc.c_id}</td>
							<td>${p.s_birthp}</td>
							<td class="td-manage"><a title="编辑" href="javascript:;" onclick="member_edit('编辑','${pageContext.request.contextPath }/servlet/FindPersonBynumServlet?s_number=${p.s_number}','4','','510')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,'1','${p.s_number}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>	
						  </c:if>	
						  </c:forEach>  
					</c:forEach>	
					</tbody>	
				</table>
			</div>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		]
	});
	$('.table-sort tbody').on( 'click', 'tr', function () {
		if ( $(this).hasClass('selected') ) {
			$(this).removeClass('selected');
		}
		else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
		}
	});
});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}


/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}

/*用户-删除*/
function member_del(obj,id,s_number){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
		location.href="${pageContext.request.contextPath }/servlet/DeletePersonServlet?number="+s_number;
	});
}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
