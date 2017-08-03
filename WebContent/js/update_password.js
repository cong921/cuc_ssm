$(function() {
	$warnning = $("#warnning1");
	$warnning2 = $("#warnning2");
	$warnning.hide();
	$warnning2.hide();
	$("#repassword").blur(function() {
		var password = $("#newpassword").val();
		var repassword = $("#repassword").val();
		if (password != repassword) {
			$warnning2.show();
			return;
		} else {
			$warnning2.hide();
		}
	});
	$("#newpassword").blur(function() {
		var flag = $("#newpassword").val().length < 6;
		if (flag) {
			$warnning.show();
			return;
		}else{
			$warnning.hide();
		}
	});
	$("#registBtn")
			.click(
					function() {
						var password = $("#password_id").val();
						var repassword = $("#repassword").val();
						var newpassword = $("#newpassword").val();
						var username=$.trim($("#current_user")[0].firstChild.data);
						if (username == null || $.trim(username) == "") {
							alert("您还没有登录无法修改");
							return;
						}
						if (password == null || password == "") {
							alert("密码不能为空");
							return;
						}
						if (repassword == null || repassword == "") {
							alert("重复密码不能为空");
							return;
						}
						if (newpassword != repassword) {
							alert("两次输入的密码不一致，请重新输入")
						}
						$.getJSON(path+"/updatePassword",{username:username,password:password,newpassword:newpassword},
									function(data,response,request){
							alert(data.flag)
						});

					});
});