<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/user/login.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body style="margin: 50px">
	<div class="container">
		<div class="row clearfix">
			<div class="col-sm-offset-3 col-md-7 column">
				<div class="carousel slide" id="carousel-926840">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-926840" class="active"></li>
						<li data-slide-to="1" data-target="#carousel-926840"></li>
						<li data-slide-to="2" data-target="#carousel-926840"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="Images/1.jpg" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="Images/2.jpg" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="Images/3.png" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-926840" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-926840" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
				<div class="row clearfix">
					<div class="img-rounded">
						<hr>
					</div>
					<div class="col-md-7 column">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label"></label>
								<div class="col-sm-9">
									<input type="username" class="form-control" id="inputEmail3" placeholder="用户名" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label"></label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="inputPassword3" placeholder="密码" value="" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<!-- <div class="checkbox">
									 <label><input type="checkbox" />Remember me</label>
								</div> -->
								</div>
							</div>





						</form>

						<!-- 按钮触发模态框 -->
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input id="enter" type="button" class="btn btn-primary btn-lg col-sm-offset-2" value="登录" />
								<button class="btn btn-primary btn-lg col-sm-offset-3" data-toggle="modal" data-target="#myModal">注册</button>
							</div>
						</div>

						<!-- 模态框（Modal） -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">用户注册</h4>
									</div>
									<div class="modal-body" style="margin: 50px">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="inputEmail3" class="col-sm-3 control-label">用户名</label>
												<div class="col-sm-9">
													<input type="username" class="form-control" id="inputEmail3" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-3 control-label">密码</label>
												<div class="col-sm-9">
													<input type="password" class="form-control" id="inputPassword3" placeholder="" value="" />
												</div>
											</div>
											<div class="form-group" >
												<label for="inputPassword3" class="col-sm-3 control-label">重复密码</label>
												<div class="col-sm-9">
													<input type="password" class="form-control" id="inputPassword3" placeholder="" value="" />
												</div>
											</div>
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-3 control-label">姓名</label>
												<div class="col-sm-9">
													<input type="password" class="form-control" id="inputPassword3" placeholder="" value="" />
												</div>
											</div>
											<div class="form-group" >
												<label for="inputPassword3" class="col-sm-3 control-label">性别</label>
												<div class="col-sm-9">
													<div class="raw">
														<label for="inputEmail3" class="col-sm-1 control-label">男</label>
														<div class="col-xs-8 col-sm-3 col-sm-offset-1  " >
															 <input type="radio" class="form-control" value="1" id="man_id" checked="checked" name="sex">
														</div>
														<label for="inputEmail3" class="col-sm-1 control-label">女</label>
														<div class="col-xs-8 col-sm-3 col-sm-offset-1  " >
															 <input type="radio" class="form-control" value="0" id="woman_id" checked="checked" name="sex">
														</div>
													</div>

												</div>
											</div>
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-3 control-label">年龄</label>
												<div class="col-sm-9">
													<input type="password" class="form-control" id="inputPassword3" placeholder="" value="" />
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-2 col-sm-10">
													<!-- <div class="checkbox">
									 <label><input type="checkbox" />Remember me</label>
								</div> -->
												</div>
											</div>





										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
										<button type="button" class="btn btn-primary">注册</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal -->
						</div>
					</div>
					<div class="col-md-4 column"></div>
				</div>


			</div>
		</div>
	</div>


	<script type="text/javascript">
		$("#enter").click(function() {
			var username = $("#inputEmail3").val();
			var password = $("#inputPassword3").val();
			var drag_text = $(".drag_text").text();
			var ip = $("#ip").val();
			if (username == null || username == "") {
				alert("用户名不能为空");
				return;
			}
			if (password == null || password == "") {
				alert("密码不能为空");
				return;
			}

			$.ajax({
				url : "${pageContext.request.contextPath}/login",
				type : "POST",
				dataType : "json",
				data : {
					"username" : username,
					"password" : password
				},
				/* beforeSend:function(){
					$("#enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-dengluzhong.png");
					//$(".loading").css("display","block");
				}, */
				success : function(data, textStatus) {
					if (!data.flag) {
						alert("用户名或密码错误");

					} else {
						window.location.href = "http://www.baidu.com";//${pageContext.request.contextPath}/
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("服务器异常");
				},
			/* complete:function(){
				$(".enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-denglu.png");
				//$(".loading").css("display","none");
			} */
			})
		})
	</script>
</body>
</html>