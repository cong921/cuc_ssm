$(function(){
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
			url : path+"/login",
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
					window.location.href = path+"/index";//${pageContext.request.contextPath}/
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
	$("#registBtn").click(function() {
		var username = $("#username_id").val();
		var password = $("#password_id").val();
		var age=$("#age_id").val();
		if (username == null || username == "") {
			alert("用户名不能为空");
			return;
		}
		if (password == null || password == "") {
			alert("密码不能为空");
			return;
		}
		
		$.ajax({
			url : path+"/saveUser",
			type : "POST",
			dataType : "json",
			data : {"userName":username,
				"password":password,
				"age":age},
			"contentType": "application/json; charset=utf-8",
			/* beforeSend:function(){
				$("#enter").css("background","url(${pageContext.request.contextPath}/imgtwo/login/denglu-dengluzhong.png");
				//$(".loading").css("display","block");
			}, */
			success : function(data, textStatus) {
				if (!data.flag) {
					alert("注册成功！");
					
				} else {
					window.location.href = path+"/index";//${pageContext.request.contextPath}/
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
});