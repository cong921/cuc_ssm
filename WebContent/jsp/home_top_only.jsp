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
			
