<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/login.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<title>云课堂</title>
</head>
<body style="margin: 50px">
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
							<!-- <li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">One more separated link</a>
								</li>
							</ul>
						</li> -->
						</ul>
						<!-- 	<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control">
						</div> 
						<button type="submit" class="btn btn-default">
							Submit
						</button>
					</form> -->
						<ul class="nav navbar-nav navbar-right" style="margin-right: 200px; padding-right: 200px">
							<!-- <li><a href="#">登录</a></li> -->
							<li><a data-toggle="modal" data-target="#myModal">还没有账号？去注册</a></li>
							<!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">用户名<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#">修改密码</a></li>
									<li><a href="#">退出登录</a></li>
									<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								</ul></li> -->
						</ul>
					</div>

				</nav>
	<div class="container" style="margin-top: 80px">
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
						<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/login" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label"></label>
								<div class="col-sm-9">
									<input type="username" class="form-control" id="inputEmail3" name="username" placeholder="用户名" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label"></label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密码" value="" />
								</div>
							</div>
							<div class="col-sm-offset-4"><font color="red" style="text-align: right"><c:out value="${error }"/>
						</font></div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<!-- <div class="checkbox">
									 <label><input type="checkbox" />Remember me</label>
								</div> -->
								</div>
							</div>



						<!-- 按钮触发模态框 -->
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input id="enter" type="submit" class="btn btn-primary btn-lg col-sm-offset-5" value="登录" />
								<!-- <button class="btn btn-primary btn-lg col-sm-offset-3" data-toggle="modal" data-target="#myModal">注册</button> -->
							</div>
						</div>

						</form>

						

						<!-- 模态框（Modal） -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel">用户注册</h4>
									</div>
									<div class="modal-body" style="margin: 50px">
										<form class="form-horizontal" role="form" id="regist_id">
											<div class="form-group">
												<label for="inputEmail3" class="col-sm-3 control-label">用户名</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="userName" id="username_id" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="inputEmail3" class="col-sm-3 control-label">邮件</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="email" id="email"  onkeyup="(function() {var ea = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;(ea.test(this.value)) ? (this.v =this.value) : this.v = '';}).call(this)"
						onblur="this.value=this.v;" placeholder="" />
												</div>
											</div>
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-3 control-label">密码</label>
												<div class="col-sm-9">
													<input type="password" class="form-control" id="password_id" name="password" placeholder="" value="" />
												</div>
											</div>
											<div class="form-group" >
												<label for="inputPassword3" class="col-sm-3 control-label">重复密码</label>
												<div class="col-sm-9">
													<input type="password" class="form-control" id="repassword"  placeholder="" value="" />
												</div>
											</div>
											<!-- <div class="form-group">
												<label for="inputPassword3" class="col-sm-3 control-label">姓名</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="name_id" placeholder="" value="" />
												</div>
											</div> -->
											<!-- <div class="form-group" >
												<label for="inputPassword3" class="col-sm-3 control-label" id="sex">性别</label>
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
											</div> -->
											<div class="form-group">
												<label for="inputPassword3" class="col-sm-3 control-label" >年龄</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="age_id" name="age" placeholder="" value="" />
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
										<button type="button" class="btn btn-primary" id="registBtn">注册</button>
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
		var path="${pageContext.request.contextPath}";
	</script>
</body>
</html>