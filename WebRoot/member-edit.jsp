<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />
  <style type="text/css">
	.pp{
	font-size: 20px;
	color:	#1E90FF;
    }
    .hr1{
    height:1px;border:none;border-top:1px solid #1E90FF;" />
    }
    </style>

</head>
<script type="text/javascript">
	//设置类别的默认值
	

	
</script>

<body>
	<article class="cl pd-20">
	<form enctype="multipart/form-data"
		action="${pageContext.request.contextPath}/servlet/UpdatePersonServlet"
		method="post" class="form form-horizontal" id="form-member-add">
		
		<div class="row cl">
          <div class="col-sm-offset-1 col-sm-10 col-lg-offset-2 col-lg-8 "><p class="pp">基本信息</p><hr class="hr1"></div>
        </div>
        
		<div class="row cl">
			<label class="form-label col-sm-3  col-lg-3"><span
				class="c-red">*</span>姓名：</label>
			<div class="formControls col-sm-3  col-lg-2">
				<input type="text" class="input-text" id="username" name="s_name"
					value="${bm.s_name}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>学号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" id="s_number" name="s_number"
					value="${bm.s_number}">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label  col-sm-3 col-lg-3"><span
				class="c-red">*</span>性别：</label>
			<div class="formControls  col-sm-3 col-lg-2 skin-minimal">
				<div class="radio-box">
					<input name="s_sex" type="radio" value="0" id="sex-1" <c:if test='${sex== 0}'>checked</c:if> >
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input name="s_sex" type="radio" value="1" id="sex-2" <c:if test='${sex== 1}'>checked</c:if>> <label
						for="sex-2">女</label>
				</div>
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>年龄：</label>
			<div class="formControls col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_age"
					value="${bm.s_age}">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>专业：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_prof"
					value="${bm.s_prof}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>班级：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_class"
					value="${bm.s_class}">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">职务：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_job"
					value="${ot.o_job}">
			</div>
			<label class="form-label col-sm-3 col-lg-3">政治面貌：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_ps" value="${ot.o_ps}">
			</div>	
		</div>
		
		<div class="row cl">	
			<label class="form-label  col-sm-3 col-lg-3"><span
				class="c-red">*</span>民族：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_nation"
					value="${bm.s_nation}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>身份证号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_id" value="${cm.c_id}">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>体重：</label>
			<div class="formControls col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_w" value="${bm.s_w}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>身高：</label>
			<div class="formControls col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_h" value="${bm.s_h}">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">衣服尺码：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_size"
					value="${bm.s_size}">
			</div>
			<label class="form-label col-sm-3 col-lg-3">鞋码：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_shoe"
					value="${bm.s_shoe}">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>籍贯：</label>
			<div class="formControls col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="s_birthp"
					value="${bm.s_birthp}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>发展方向：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_fzfx"
					value="${ot.o_fzfx}">
			</div>		
		</div>
		
		<div class="row cl">
          <div class="col-sm-offset-1 col-sm-10 col-lg-offset-2 col-lg-8 "><p class="pp">联系方式</p><hr class="hr1"></div>
        </div>	

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>QQ号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_qqn"
					value="${cm.c_qqn}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>微信号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_email"
					value="${cm.c_email}">
			</div>
		</div>
			
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>手机号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" value="${cm.c_ph}"
					placeholder="" id="mobile" name="c_ph" value="${cm.c_ph}">
			</div>
			<label class="form-label col-sm-3 col-lg-3"><span
				class="c-red">*</span>邮箱：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" id="email" placeholder="@"
					name="c_yx" value="${cm.c_yx}">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">github：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_gh" value="${cm.c_gh}">
			</div>
			<label class="form-label col-sm-3 col-lg-3">博客：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_bk" value="${cm.c_bk}">
			</div>
		</div>
			
		<div class="row cl">
          <div class="col-sm-offset-1 col-sm-10 col-lg-offset-2 col-lg-8 "><p class="pp">其它信息</p><hr class="hr1"></div>
        </div>	

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">门禁卡编号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_acard"
					value="${cm.c_acard}">
			</div>
			<label class="form-label col-sm-3 col-lg-3">ip号：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="c_ip" value="${cm.c_ip}">
			</div>
		</div>
		
		<div class="row cl">		
			<label class="form-label col-sm-3 col-lg-3">信仰：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_faith"
					value="${ot.o_faith}">
			</div>
		</div>
	
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">是否毕业：</label>
			<div class="formControls col-sm-8 col-lg-7 skin-minimal">
				<div class="radio-box">
					<input name="o_isg" type="radio" value="0" id="isg-1" <c:if test='${isg== 0}'>checked</c:if>>
					<label>是</label>
				</div>
				<div class="radio-box">
					<input name="o_isg" type="radio" value="1" id="isg-2" <c:if test='${isg== 1}'>checked</c:if>> <label>否</label>
				</div>
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">就职单位：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_unit"
					value="${ot.o_unit}">
			</div>
			<label class="form-label col-sm-3 col-lg-3">就职职务：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_jzzw"
					value="${ot.o_jzzw}">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">就职地点：</label>
			<div class="formControls  col-sm-3 col-lg-2">
				<input type="text" class="input-text" name="o_loc"
					value="${ot.o_loc}">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">证书上传：</label>
			<div class="formControls col-sm-7 col-lg-9">
				<span class="btn-upload form-group"> <input
					class="input-text upload-url" type="text" name="uploadfile"
					id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
					<a href="javascript:void();"
					class="btn btn-primary radius upload-btn"><i
						class="Hui-iconfont">&#xe642;</i> 浏览文件</a> <input type="file" multiple
					name="photo" class="input-file">
				</span>
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">爱好：</label>
			<div class="formControls  col-sm-9 col-lg-7">
				<input type="text" class="input-text" name="o_hobby"
					value="${ot.o_hobby}">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">特长：</label>
			<div class="formControls  col-sm-9 col-lg-7">
				<input type="text" class="input-text" name="o_special"
					value="${ot.o_special}">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3">个人事迹：</label>
			<div class="formControls col-sm-9 col-lg-7">
				<input type="text" class="input-text" name="o_grsj"
					value="${ot.o_grsj}">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-sm-3 col-lg-3 ">自我评价：</label>
			<div class="formControls col-sm-9 col-lg-7 ">
				<textarea name="o_self" cols="" rows="" class="textarea"
					placeholder="说点什么...最少输入10个字符" onKeyUp="textarealength(this,100)">${ot.o_self}</textarea>
				<p class="textarea-numberbar">
					<em class="textarea-length">0</em>/100
				</p>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit"
					value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	 </form>
	</article>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
	<script type="text/javascript"
		src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
	<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-member-add").validate({
		rules:{
			username:{
				required:true,
				minlength:2,
				maxlength:16
			},
			s_number:{
				required:true,
				minlength:6,
				maxlength:16
			},
			c_ph:{
				required:true,
				minlength:11,
				maxlength:11
			},
			c_id:{
				required:true,
				minlength:18,
				maxlength:18
			},
			c_yx:{
				required:true,
				email:true,
			},
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.msg('修改成功!',{icon:1,time:1000});
			parent.layer.close(index);
		}
	});
});
</script>
	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>