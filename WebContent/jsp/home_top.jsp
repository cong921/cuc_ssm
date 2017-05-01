<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



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
						<li><a href="${pageContext.request.contextPath }/tologin">登录</a></li>
						<li><a data-toggle="modal" data-target="#myModal">注册</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.username }<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">修改密码</a></li>
								<li><a href="${pageContext.request.contextPath }/exit">退出登录</a></li>
							</ul></li>
					</ul>
				</div>

			</nav>

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
										<input type="text" class="form-control" id="inputEmail3" name="userName" placeholder="" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-3 control-label">密码</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" id="password_id" name="password" placeholder="" value="" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-3 control-label">重复密码</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" id="repassword" placeholder="" value="" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-3 control-label">姓名</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" id="inputPassword3" placeholder="" value="" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-3 control-label">性别</label>
									<div class="col-sm-9">
										<div class="raw">
											<label for="inputEmail3" class="col-sm-1 control-label">男</label>
											<div class="col-xs-8 col-sm-3 col-sm-offset-1  ">
												<input type="radio" class="form-control" value="1" id="man_id" checked="checked" name="sex">
											</div>
											<label for="inputEmail3" class="col-sm-1 control-label">女</label>
											<div class="col-xs-8 col-sm-3 col-sm-offset-1  ">
												<input type="radio" class="form-control" value="0" id="woman_id" checked="checked" name="sex">
											</div>
										</div>

									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-3 control-label">年龄</label>
									<div class="col-sm-9">
										<input type="password" class="form-control" id="inputPassword3" name="age" placeholder="" value="" />
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
