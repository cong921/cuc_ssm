<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">修改密码</h4>
							</div>
							<div class="modal-body" style="margin: 50px">
								<form class="form-horizontal" role="form">
									<div class="form-group">	
										<label for="inputPassword3" class="col-sm-3 control-label">原来的密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="password_id" name="password" placeholder="" value="" />
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-3 control-label">新密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="newpassword"  placeholder="" value="" />
										</div>
										
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-3 control-label">重复密码</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="repassword" placeholder="" value="" />
										</div>
										<div class="col-sm-9" id="warnning1">
											<h5 style="color:red">密码至少为6位</h5>
										</div>
										<div class="col-sm-9" id="warnning2">
											<h5 style="color:red">两次输入的密码不一致</h5>
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
								<button type="button" class="btn btn-primary" id="registBtn">确定</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>