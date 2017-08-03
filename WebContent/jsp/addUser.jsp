<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-responsive.min.css">
<script src="js/jquery.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/login.js"></script>
<title>云课堂</title>
</head>
<body>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-2" style="margin-top: 100px">
			<div class="panel-group" id="panel-241717">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-241717" href="#panel-element-636296">后台管理</a>
					</div>
					<div id="panel-element-636296" class="panel-collapse collapse">
						<div class="panel-body">用户管理</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-241717" href="#panel-element-898159">用户中心</a>
					</div>
					<div id="panel-element-898159" class="panel-collapse collapse">
						<div class="panel-body">我的课程</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#" style="margin-left: 100px">云课堂</a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active" style="margin-left: 50px"><a href="#">课程</a></li>
						<li><a href="#">广场</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right" style="margin-right: 200px; padding-right: 200px">
						<li><a class="warnning"">欢迎您,</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.username }<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<!-- <li><a href="#">修改密码</a></li> -->
								<li><a href="${pageContext.request.contextPath }/exit">退出登录</a></li>
							</ul></li>
					</ul>
				</div>

			</nav>

	<div class="container-fluid" style="margin-top: 100px">
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal" role="form" style="width: 50%; margin-left: 5%;">

					<!-- <input type="hidden" class="form-control" name="id" id="username_id" placeholder="" /> -->
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="userName" id="username_id" placeholder="" />
						</div>
					</div><span id="user_info"  style="display: none;margin-left: 120px;color: red">用户名已存在</span>
					<div class="form-group">

						<label for="inputPassword3" class="col-sm-2 control-label"> 密码 </label>
						<div class="col-sm-10">
							<input type="password" class="form-control" name="password" id="password_id" />
						</div>
					</div>
					<div class="form-group">

						<label for="inputPassword3" class="col-sm-2 control-label"> 确认密码 </label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="repassword" />
						</div>
					</div>
					<div class="form-group">

						<label for="inputEmail3" class="col-sm-2 control-label"> 电子邮件 </label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" name="email" />
						</div>
					</div>
					<div class="form-group">

						<label for="inputEmail3" class="col-sm-2 control-label"> 年龄 </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="age" id="age_id" />
						</div>
					</div>
				</form>
				<!-- <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 
							<label>
								<input type="checkbox" /> 同意用户协议
							</label>
						</div>
					</div>
				</div> -->
				<div class="">
					<div class="col-sm-offset-2 col-sm-10">

						<button id="registBtn" class="btn btn-success">添加用户</button>
						
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@include file="./home_bottom.jsp"%>
	<script type="text/javascript">
								var path = "${pageContext.request.contextPath}";//$("#user_info").show();
								$("#username_id").blur(function(){
									$.ajax({
										url : path+"/userExist",
										type : "POST",
										dataType : "json",
										data : JSON.stringify({"userName":$("#username_id").val(),
											}),
										contentType: "application/json; charset=utf-8",
										/* beforeSend:function(){
											$("#enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-dengluzhong.png");
											//$(".loading").css("display","block");
										}, */
										success : function(data, textStatus) {
											if(data.flag){
												$("#user_info").show();
												$("#username_id").focus();
											}else{
												$("#user_info").hide();
											}
												
										}
										/* complete:function(){
										$(".enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-denglu.png");
										//$(".loading").css("display","none");
									} */
									});
								});
						</script>
</body>
</html>