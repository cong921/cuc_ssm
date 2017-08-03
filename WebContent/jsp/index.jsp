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
<script src="${pageContext.request.contextPath }/js/update_password.js"></script>
<title>云课堂</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<%@include file="./menu_left.jsp"%>
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
							<!-- <li><a href="${pageContext.request.contextPath }/tologin">登录</a></li>
							<li><a data-toggle="modal" data-target="#myModal">注册</a></li>  -->
							<li><a class="warnning">欢迎您,</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" id="current_user">${sessionScope.username }<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#" data-target="#myModal" data-toggle="modal">修改密码</a></li>
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

				<%@include file="./user_model.jsp"%>



				<div class="page-header" style="margin-top: 100px">
					<h1>用户列表</h1>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>用户名</th>
							<th>邮件</th>
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
					<div class="col-md-3"></div>
					<div class="col-md-5">
						<ul class="pagination pagination-lg">


							<li><a href="#" id="first_page">首页</a></li>
							<li><a href="#" id="last_page">上一页</a></li>
							<li><a href="#" id="page_status"></a></li>

							<!-- 	<li class="active"><a href="#">1</a></li>
							<li><a href="#">1/2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li> -->
							<li><a href="#" id="next_page">下一页</a></li>
							<li><a href="#" id="tail_page">尾页</a></li>
						</ul>
						<script type="text/javascript">
							/* $(function(){
								$active=$("li.active a").innerHTML;
								var $last=$("#last_page");
								if($active==1)
									$last.parent().hide();
								$last.click(function(){
									if($last.parent().siblings("a").innerHtml==1) alert(1);
								});
							}); */
						</script>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- 信息删除确认 -->
	<div class="modal fade" id="delcfmModel">
		<div class="modal-dialog">
			<div class="modal-content message_align">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">提示信息</h4>
				</div>
				<div class="modal-body">
					<p>您确认要删除吗？</p>
				</div>
				<div class="modal-footer">
					<input type="hidden" id="url" />
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<a onclick="urlSubmit()" class="btn btn-success" data-dismiss="modal">确定</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<script type="text/javascript">
		var pages = 0;//总页数
		var currentPage = 1;//当前页
		var rows = 10;//每页显示条数
		var total = 0;
		$("#first_page").click(function() {
			if (currentPage == 1)
				return;
			currentPage = 1;
			setVal(currentPage);
		});
		$("#tail_page").click(function() {
			if (currentPage == pages)
				return;
			currentPage = pages;
			setVal(currentPage);
		});
		$("#last_page").click(
				function() {
					/* if($("ul.pagination  li.active").children("a")[0].innerHTML=="1")
						return; */
					$("ul.pagination  li.active").removeClass("active").prev()
							.addClass("active");
					if (currentPage == 1)
						return;
					currentPage--;
					setVal(currentPage);
				});
		$("#next_page").click(
				function() {
					/* if($("ul.pagination  li.active").next().children("a")[0].innerHTML=="下一页")
						return; */
					$("ul.pagination  li.active").removeClass("active").next()
							.addClass("active");
					if (currentPage == pages)
						return;
					currentPage++;
					setVal(currentPage);
				});
		/* $("div ul.pagination li:gt(0):lt(5)").click(function(){
			$("ul.pagination  li.active").removeClass("active");
			$(this).addClass("active");
		}); */
		function delcfm(url) {
			$('#url').val(url);//给会话中的隐藏属性URL赋值  
			$('#delcfmModel').modal();
		};
		function urlSubmit() {
			var url = $.trim($("#url").val());//获取会话中的隐藏属性URL  
			window.location.href = "${pageContext.request.contextPath}/deleteUserById/"
					+ url;
		};
		$(function() {
			$("#deleteBtn").click(function() {
				/* delcfm(url); */
				alert(data.list[i].id);
			});

			setVal(currentPage);
		});
		function setVal(currentPage) {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/findAllUser/"
								+ currentPage,
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
							pages = data.pages;
							$("#page_status")[0].innerHTML = currentPage + "/"
									+ pages;
							/* if (!data.flag) {
								alert("用户名或密码错误");

							} else {
								window.location.href = "http://www.baidu.com";//${pageContext.request.contextPath}/
							} */
							$("table tbody tr").remove();
							for (var i = 0; i < data.list.length; i++) {
								if (i % 4 == 0) {
									$("table tbody")
											.append(
													'<tr class="danger" ><td>'
															+ data.list[i].userName
															+ '</td><td>'
															+ data.list[i].email
															+ '</td><td>'
															+ data.list[i].age
															+ "</td><td>"
															+ "<input type='button' class='btn btn-primary' value='修改' onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data.list[i].id+"' >"
															+ "</td><td>"
															+ "<input type='button' id='deleteBtn' class='btn btn-danger' value='删除' onclick='delcfm("
															+ data.list[i].id
															+ ")'  >"
															+ "</td><td>"

															+ '</tr>');
								} else if (i % 4 == 1) {
									$("table tbody")
											.append(
													'<tr class="active" ><td>'
															+ data.list[i].userName
															+ '</td><td>'
															+ data.list[i].email
															+ '</td><td>'
															+ data.list[i].age
															+ "</td><td>"
															+ "<input type='button' class='btn btn-primary' value='修改'  onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data.list[i].id+"' >"
															+ "</td><td>"
															//+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data.list[i].id+"' >"+"</td><td>"
															+ "<input type='button' id='deleteBtn' class='btn btn-danger' value='删除' onclick='delcfm("
															+ data.list[i].id
															+ ")'  >"
															+ "</td><td>"
															+ '</tr>');

								} else if (i % 4 == 2) {
									$("table tbody")
											.append(
													'<tr class="success" ><td>'
															+ data.list[i].userName
															+ '</td><td>'
															+ data.list[i].email
															+ '</td><td>'
															+ data.list[i].age
															+ "</td><td>"
															+ "<input type='button' class='btn btn-primary' value='修改' onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data.list[i].id+"' >"
															+ "</td><td>"
															//+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data.list[i].id+"' >"+"</td><td>"
															+ "<input type='button' id='deleteBtn' class='btn btn-danger' value='删除' onclick='delcfm("
															+ data.list[i].id
															+ ")'  >"
															+ "</td><td>"
															+ '</tr>');

								} else {
									$("table tbody")
											.append(
													'<tr class="warnning" ><td>'
															+ data.list[i].userName
															+ '</td><td>'
															+ data.list[i].email
															+ '</td><td>'
															+ data.list[i].age
															+ "</td><td>"
															+ "<input type='button' class='btn btn-primary' value='修改'  onclick=window.location.href='${pageContext.request.contextPath}/toedit/"+data.list[i].id+"' >"
															+ "</td><td>"
															//+ "<input type='button' class='btn btn-danger' value='删除' onclick=window.location.href='${pageContext.request.contextPath}/deleteUserById/"+data.list[i].id+"'  >"+"</td><td>"
															+ "<input type='button' id='deleteBtn' class='btn btn-danger' value='删除' onclick='delcfm("
															+ data.list[i].id
															+ ")'  >"
															+ "</td><td>"
															+ '</tr>');

								}
							}
							$("table tbody")
									.append(
											'<tr class="success"    ><td colspan="6">'
													+ "<input type='button' class='btn btn-success' value='新增用户' onclick=window.location.href='${pageContext.request.contextPath}/addUser' >"
													+ "</td>" + '</tr>');

						},
						error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							alert("服务器异常");
						},
					/* complete:function(){
						$(".enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-denglu.png");
						//$(".loading").css("display","none");
					} */
					})

		};
	</script>
</body>
</html>