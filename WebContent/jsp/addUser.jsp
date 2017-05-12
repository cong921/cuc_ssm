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
	<%@include file="./home_top_only.jsp"%>

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
							<input type="email" class="form-control" id="inputEmail3" />
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
												
										},
										error : function(XMLHttpRequest, textStatus, errorThrown) {
											alert("服务器异常");
										},
										/* complete:function(){
										$(".enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-denglu.png");
										//$(".loading").css("display","none");
									} */
									});
								});
						</script>
</body>
</html>