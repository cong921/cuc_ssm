<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-responsive.min.css">
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar navbar-default avbar-fixed-top">
					<div class="navbar-inner">
						<div class="container-fluid">
							<a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</a> 
							<a href="#" class="brand">网站名</a>
							<div class="nav-collapse collapse navbar-responsive-collapse">
								<ul class="nav">
									<li class="active"><a href="#">主页1</a></li>
									<li><a href="#">链接1</a></li>
									<li><a href="#">链接1</a></li>
									<li class="dropdown">
										<a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单1<strong class="caret"></strong></a>
										<ul class="dropdown-menu">
											<li><a href="#">下拉导航1</a></li>
											<li><a href="#">下拉导航2</a></li>
											<li><a href="#">其他</a></li>
											<li class="divider"></li>
											<li class="nav-header">标签</li>
											<li><a href="#">链接1</a></li>
											<li><a href="#">链接2</a></li>
										</ul></li>
								</ul>
								<ul class="nav pull-right">
									<li><a href="#">右边链接1</a></li>
									<li class="divider-vertical"></li>
									<li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单1<strong class="caret"></strong></a>
										<ul class="dropdown-menu">
											<li><a href="#">下拉导航1</a></li>
											<li><a href="#">下拉导航2</a></li>
											<li><a href="#">其他</a></li>
											<li class="divider"></li>
											<li><a href="#">链接3</a></li>
										</ul></li>
								</ul>
							</div>

						</div>
					</div>

				</div>
				<div class="row-fluid">
					<div class="span2">
						<div class="accordion" id="accordion-569515">
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-569515" href="#accordion-element-325834">选项卡 #1</a>
								</div>
								<div id="accordion-element-325834" class="accordion-body in collapse">
									<div class="accordion-inner">功能块...</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-569515" href="#accordion-element-971638">选项卡 #2</a>
								</div>
								<div id="accordion-element-971638" class="accordion-body collapse">
									<div class="accordion-inner">功能块...</div>
								</div>
							</div>
						</div>
					</div>
					<div class="span10">
						<h3 class="text-center">用户列表</h3>
						<div class="row-fluid">
							<div class="span6"></div>
							<div class="span2">
								<div class="btn-group">
									<button class="btn">Action</button>
									<button data-toggle="dropdown" class="btn dropdown-toggle">
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">操作</a></li>
										<li><a href="#">设置栏目</a></li>
										<li><a href="#">更多设置</a></li>
										<li class="divider"></li>
										<li class="dropdown-submenu"><a tabindex="-1" href="#">更多选项</a>
											<ul class="dropdown-menu">
												<li><a href="#">操作</a></li>
												<li><a href="#">设置栏目</a></li>
												<li><a href="#">更多设置</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
							<div class="span4">
								<form class="form-search">
									<input class="input-medium search-query" type="text" />
									<button type="submit" class="btn">查找</button>
								</form>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th>编号</th>
									<th>产品</th>
									<th>交付时间</th>
									<th>状态</th>
									<th>修改</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>TB - Monthly</td>
									<td>01/04/2012</td>
									<td>Default</td>
									<td>Default</td>
									<td>Default</td>
								</tr>
								<tr class="success">
									<td>1</td>
									<td>TB - Monthly</td>
									<td>01/04/2012</td>
									<td>Approved</td>
									<td>Default</td>
									<td>Default</td>
								</tr>
								<tr class="error">
									<td>2</td>
									<td>TB - Monthly</td>
									<td>02/04/2012</td>
									<td>Declined</td>
									<td>Default</td>
									<td>Default</td>
								</tr>
								<tr class="warning">
									<td>3</td>
									<td>TB - Monthly</td>
									<td>03/04/2012</td>
									<td>Pending</td>
									<td>Default</td>
									<td>Default</td>
								</tr>
								<tr class="info">
									<td>4</td>
									<td>TB - Monthly</td>
									<td>04/04/2012</td>
									<td>Call in to confirm</td>
									<td>
										<button class="table-success">删除</button>
									</td>
									<td>
										<button class="table-success">删除</button>
									</td>
								</tr>
							</tbody>
						</table>
						<button class="btn btn-large btn-success btn-block" type="button">新增用户</button>
						<div class="pagination pagination-centered">
							<ul>
								<li><a href="#">上一页</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">下一页</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>