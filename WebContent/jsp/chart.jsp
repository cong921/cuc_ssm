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
<%-- <script src="${pageContext.request.contextPath }/js/login.js"></script> --%>
<script src="${pageContext.request.contextPath }/js/update_password.js"></script>
<script src="${pageContext.request.contextPath }/js/echarts.js"></script>

<title>云课堂</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
		<%@include file="./menu_left.jsp" %>
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
						</ul>
						<ul class="nav navbar-nav navbar-right" style="margin-right: 200px; padding-right: 200px">
							<!-- <li><a href="${pageContext.request.contextPath }/tologin">登录</a></li>
							<li><a data-toggle="modal" data-target="#myModal">注册</a></li>  -->
							<li><a class="warnning">欢迎您， </a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" id="current_user">${sessionScope.username }<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="#" data-target="#myModal" data-toggle="modal">修改密码</a></li>
									<li><a href="${pageContext.request.contextPath }/exit">退出登录</a></li>
								</ul></li>
						</ul>
					</div>

				</nav>


				<%@include file="./user_model.jsp" %>

				<div class="page-header" style="margin-top: 100px">
					<h1>图表数据</h1>
				</div>
				<div  id="main" style="width: 1000px;height:600px; "></div>
			</div>
		</div>
	</div>
<script type="text/javascript">
			var path="${pageContext.request.contextPath}";
	</script>
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
  
  function getLocalTime(nS) {     
	   return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:\d{1,2}$/,' ');     
	}   
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '动态数据+时间坐标轴'
            },
            tooltip: {},
            legend: {
                data:['价格']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '价格',
                type: 'line',
                data: []
            }],
            dataZoom: [
                       {   // 这个dataZoom组件，默认控制x轴。
                           type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                           start: 10,      // 左边在 50% 的位置。
                           end: 60         // 右边在 60% 的位置。
                       },{   // 这个dataZoom组件，也控制x轴。
                           type: 'inside', // 这个 dataZoom 组件是 inside 型 dataZoom 组件
                           start: 10,      // 左边在 10% 的位置。
                           end: 60         // 右边在 60% 的位置。
                       },
                       {
                           type: 'slider',
                           yAxisIndex: 0,
                           start: 95,
                           end: 100
                       },
                       {
                           type: 'inside',
                           yAxisIndex: 0,
                           start: 95,
                           end: 100
                       }
                   ],
                   
        };
        myChart.showLoading();
        // 异步加载数据
        $.get(path+'/exchange/data').done(function (response) {
        	var arrayX =new Array();
        	var arrayY =new Array();
        	for ( var i in response) {
				arrayX.push(getLocalTime(response[i].date));
				//arrayX.push(response[i].date);
				arrayY.push(response[i].price);
			}
        	 myChart.hideLoading();
            // 填入数据
            myChart.setOption({
                xAxis: {
                    data: arrayX
                },
                series: [{
                    // 根据名字对应到相应的系列
                    name: '价格',
                    data: arrayY
                }]
            });
        });
        /* $.ajax({
			url :path+"/exchange/data",
			type : "GET",
			dataType : "json",
			 
			
			success : function(response, textStatus) {
				
				
				
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert("服务器异常");
			},
		}) */
   

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        myChart.on('click', function (params) {
        	console.log(params)
            window.open('https://www.baidu.com/s?wd=' + encodeURIComponent(params.name));
        });
    </script>
    	
</body>
</html>