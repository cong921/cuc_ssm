<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-responsive.min.css">
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/scripts.js"></script>
<title>云课堂</title>
</head>
<body>
	<%@include file="./home_top.jsp"%>
	
	<div class="container-fluid" style="margin-top: 100px">
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" role="form" style="width:50%;margin-left:5%;">
			
						
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">id</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="id" readonly="true" value="${user[0].id }" id="user_id" placeholder="" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="userName" value="${user[0].userName }" id="username" placeholder="" />
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						密码
					</label>
					<div class="col-sm-9">
						<input type="password" class="form-control" i name="password" id="password" value="${user[0].password }" />
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputEmail3" class="col-sm-2 control-label">
						电子邮件
					</label>
					<div class="col-sm-9">
						<input type="email" class="form-control" id="inputEmail3" />
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputEmail3" class="col-sm-2 control-label">
						年龄
					</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="age" id="age" value="${user[0].age }" />
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
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 
						<button id="edit_id" type="button" class="btn btn-default">
							确认修改
						</button>
						<script type="text/javascript">
							$(function(){
								$("#edit_id").click(function(){
									var id=$("#user_id").val();
									var username=$("#username").val();
									var password=$("#password").val();
									var age=$("#age").val();
									if((username&&password&&age)==""){
										alert("数据填写不完整"); 	
									}else{

										$.ajax({
											url : path+"/updateUser",
											type : "POST",
											dataType : "json",
											 
											data : JSON.stringify({"id":id,
												"userName":username,
												"password":password,
												"age":age}),
												contentType: "application/json; charset=utf-8",
											/* beforeSend:function(){
												$("#enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-dengluzhong.png");
												//$(".loading").css("display","block");
											}, */
											success : function(data, textStatus) {
													window.location.href = path+"/index";//${pageContext.request.contextPath}/
											},
											error : function(XMLHttpRequest, textStatus, errorThrown) {
												alert("服务器异常");
											},
										/* complete:function(){
											$(".enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-denglu.png");
											//$(".loading").css("display","none");
										} */
										})
									}
								});
							});
							
						</script>
					</div>
				</div>
			
		<%@include file="./home_bottom.jsp"%>
		<script type="text/javascript">
				var path="${pageContext.request.contextPath}";
		</script>
</body>
</html>