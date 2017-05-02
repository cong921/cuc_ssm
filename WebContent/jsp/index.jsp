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
	<script src="${pageContext.request.contextPath }/js/login.js"></script>
<title>云课堂</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2" style="margin-top: 100px">
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
			<div class="span10">
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
									<!-- <li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li> -->
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
											<input type="text" class="form-control" id="username_id" name="userName" placeholder="" />
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


								<script type="text/javascript">
									var path="${pageContext.request.contextPath}";
								</script>


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



				<div class="page-header" style="margin-top: 100px">
					<h1>用户列表</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>用户名</th>
							<th>密码</th>
							<th>年龄</th>
							<th>修改</th>
							<th>删除</th>
						</tr>
					</thead>
					<tbody>
						<!-- <tr>
							<td>1</td>
							<td>TB - Monthly</td>
							<td>01/04/2012</td>
							<td>Default</td>
						</tr>
						<tr class="active">
							<td>1</td>
							<td>TB - Monthly</td>
							<td>01/04/2012</td>
							<td>Approved</td>
						</tr>
						<tr class="success">
							<td>2</td>
							<td>TB - Monthly</td>
							<td>02/04/2012</td>
							<td>Declined</td>
						</tr>
						<tr class="warning">
							<td>3</td>
							<td>TB - Monthly</td>
							<td>03/04/2012</td>
							<td>Pending</td>
						</tr>
						<tr class="danger">
							<td>4</td>
							<td>TB - Monthly</td>
							<td>04/04/2012</td>
							<td>Call in to confirm</td>
						</tr> -->
					</tbody>
				</table>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<ul class="pagination pagination-lg">
							<li ><a href="#" id="last_page">上一页</a></li>
							<li class="active"><a href="#" >1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" id="next_page">下一页</a></li>
						</ul>
						<script type="text/javascript">
							$(function(){
								$active=$("li.active a").innerHTML;
								var $last=$("#last_page");
								if($active==1)
									$last.parent().hide();
								$last.click(function(){
									if($last.parent().siblings("a").innerHtml==1) alert(1);
								});
							});
							
						</script>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		$(function() {
			$.ajax({
				url : "${pageContext.request.contextPath}/findAllUser",
				type : "GET",
				dataType : "json",
				/* data : {
					"username" : username,
					"password" : password
				}, */
				/* beforeSend:function(){
					$("#enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-dengluzhong.png");
					//$(".loading").css("display","block");
				}, */
				success : function(data, textStatus) {
					/* if (!data.flag) {
						alert("用户名或密码错误");

					} else {
						window.location.href = "http://www.baidu.com";//${pageContext.request.contextPath}/
					} */
					for (var i = 0; i < data.length; i++) {
						if (i % 4 == 0) {
							$("table tbody").append(
									'<tr class="danger" ><td>'
											+ data[i].userName + '</td><td>'
											+ data[i].password + '</td><td>'
											+ data[i].age+"</td><td>"
											+ "<input type='button' class='btn btn-primary' value='修改' onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data[i].id+"' >"+"</td><td>"
											+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data[i].id+"' >"+"</td><td>"
											
											+ '</tr>');
						} else if (i % 4 == 1) {
							$("table tbody").append(
									'<tr class="active" ><td>'
											+ data[i].userName + '</td><td>'
											+ data[i].password + '</td><td>'
											+ data[i].age+"</td><td>"
											+ "<input type='button' class='btn btn-primary' value='修改'  onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data[i].id+"' >"+"</td><td>"
											+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data[i].id+"' >"+"</td><td>"
											+ '</tr>');

						} else if (i % 4 == 2) {
							$("table tbody").append(
									'<tr class="success" ><td>'
											+ data[i].userName + '</td><td>'
											+ data[i].password + '</td><td>'
											+ data[i].age+"</td><td>"
											+ "<input type='button' class='btn btn-primary' value='修改' onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data[i].id+"' >"+"</td><td>"
											+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data[i].id+"' >"+"</td><td>"
											+ '</tr>');

						} else {
							$("table tbody").append(
									'<tr class="warnning" ><td>'
											+ data[i].userName + '</td><td>'
											+ data[i].password + '</td><td>'
											+ data[i].age+"</td><td>"
											+ "<input type='button' class='btn btn-primary' value='修改'  onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data[i].id+"' >"+"</td><td>"
											+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data[i].id+"'  >"+"</td><td>"
											+ '</tr>');

						}
					}
					$("table tbody").append(
							'<tr class="success"    ><td colspan="6">'
									+ "<input type='button' class='btn btn-success' value='新增用户' onclick=window.location.href='${pageContext.request.contextPath}/addUser' >"+"</td>"
									+ '</tr>');

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