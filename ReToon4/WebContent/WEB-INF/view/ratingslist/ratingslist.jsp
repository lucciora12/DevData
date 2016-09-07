<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />
<style>
#box {
	float: left;
	width: 270px;
	height: 275px;
	text-align: center;
	margin: 10px;
	padding: 5px;
}

.olleh {
	border: 2px solid gold;
}

.nate {
	border: 2px solid red;
}

.daum {
	border: 2px solid blue;
}

.btn span.glyphicon {
	opacity: 0;
}

.btn.active span.glyphicon {
	opacity: 1;
}
</style>
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
	<div class="container">
		<div class="pg-opt">
			<div class="row">
				<div class="col-md-6 pc">
					<h2>
						<fmt:message key="RECOMMEND" />
					</h2>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><fmt:message key="RECOMMEND" /></li>
					</ol>
				</div>
			</div>
		</div>

		<div class="content">
			<ul>
				<c:forEach var="toon" items="${toonList}">
					<li id="box" class="${toon.platform}"><a
						href="${toon.address}" target="_blank"><img
							src="${toon.image}" width=150 height=150></a><p>
							<form action=" " method="">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary"> <input type="radio"
								value=1 name="options" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label> <label class="btn btn-info"> <input type="radio" value=2
								name="options" id="option2" autocomplete="off" checked>
								<span class="glyphicon glyphicon-ok"></span>
							</label> <label class="btn btn-success active"> <input
								type="radio" value=3 name="options" id="option2"
								autocomplete="off"> <span class="glyphicon glyphicon-ok"></span>
							</label> <label class="btn btn-warning"> <input type="radio"
								value=4 name="options" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label> <label class="btn btn-danger"> <input type="radio"
								value=5 name="options" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div><p> 
						<input type="submit" value="입력"></form><br> 
						${toon.title}<br>
						${toon.storyWriter}/${toon.illustrator}
				</c:forEach>

				</li>

			</ul>
		</div>
	</div>
</body>
</html>