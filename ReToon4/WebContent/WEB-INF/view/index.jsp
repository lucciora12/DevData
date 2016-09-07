<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />
<style>
#rightfooter {
	text-align: right;
}

#box {
	text-align: center;
	border: 1px solid blue;
}

#redbox {
	border: 1px solid red;
	float: left;
	width: 200px;
	height: 150px;
}
</style>
<script src="/WEB-INF/view/main/login2.js"></script>
<link rel="stylesheet" type="text/css"
	href="/WEB-INF/view/main/login2.css">
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
	<div class="container">
		<div class="pg-opt">
			<div class="row">
				<div class="col-md-6 pc">
					<h2>
						<fmt:message key="HOME" />
					</h2>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><fmt:message key="HOME" /></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="com-md-12">
				<div class="notification"></div>
				<div class="well welcome-text">
					<div id="hello">
						웹툰 추천 사이트 RETOON에 오신걸 환영합니다 ♪<br> 사용자 맞춤 웹툰 추천을 위해 로그인을 해주시길
						바랍니다 ^^<br> 아직 등록을 안 했다면 회원 가입을 하실 수 있습니다 <br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="well login-box">
					<form action="">
						<legend>Login</legend>
						<div class="form-group">
							<label for="user-email">E-mail</label> <input value=''
								id="username-email" placeholder="이메일 주소를 입력해주세요" type="text"
								class="form-control" />
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input id="password"
								value='' placeholder="비밀번호를 입력해주세요" type="text"
								class="form-control" />
						</div>
						<div class="form-group text-center">
							<button class="btn btn-danger btn-cancel-action">Cancel</button>
							<input type="submit" class="btn btn-success btn-login-submit"
								value="Login" />
						</div>
					</form>
				</div>
			</div>
		</div>dd
	</div>
</body>
</html>