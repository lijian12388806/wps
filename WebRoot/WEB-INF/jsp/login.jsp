<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta http-equiv="Cache-Control" content="no-store" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0" />
		<title><s:text name="common.title" />
		</title>
		<!-- The styles -->
		<link id="bs-css" href="css/bs/bootstrap-cerulean.css"
			rel="stylesheet">
		<link href="css/bs/bootstrap-responsive.css" rel="stylesheet">
		<link href="css/bs/charisma-app.css" rel="stylesheet">
		<link href="css/register.css" rel="stylesheet">
		<script src="dwz/js/jquery-1.7.1.js" type="text/javascript"></script>
		<style type="text/css">
.sidebar-nav {
	padding: 9px 0;
}
</style>
		<script type="text/javascript">
	document.onkeydown = function() {
		if (event.keyCode == 13) {
			document.loginform.submit();
		}
	}
	//-->
</script>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="row-fluid">
					<div class="span12 center login-header">
						<h2>
						</h2>
					</div>
				</div>
				<div class="row-fluid">
					<div class="well span5 center login-box">
						<div class="alert alert-info"
							style="font: 24px 'microsoft yahei';">
							<s:text name="common.subtitle" />
						</div>
						<form class="form-horizontal" action="login.action" method="post"
							id="loginform" name="loginform">
							<div class="input-prepend" title="Username" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i> </span>
								<input autofocus class="input-large span10"
									name="userinfoForm.username" id="username" type="text" value="" />
							</div>
							<div class="clearfix"></div>
							<div class="input-prepend" title="Password" data-rel="tooltip">
								<span class="add-on"><i class="icon-lock"></i> </span>
								<input class="input-large span10" name="userinfoForm.userpwd"
									id="userpwd" type="password" value="" />
							</div>
							<div class="clearfix"></div>
							<div class="clearfix"></div>
							<p class="center span5">
								<button type="submit" class="btn btn-primary">
									<s:text name="common.login" />
								</button>
							</p>
							<div class="control-group" align="center">
								<div class="controls">
									<label class="checkbox inline">
										<em><span style="color: red;">${msg}</span> </em>
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
