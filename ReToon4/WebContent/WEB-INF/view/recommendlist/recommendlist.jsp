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
#box{
float: left;
width:200px;
height:225px;
text-align: center;
margin: 10px;
padding: 5px;
}
.olleh{
border:2px solid gold;
}
.nate{
border:2px solid red;
}
.daum{
border:2px solid blue;
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
					<li id="box" class="${toon.platform}"><a href="${toon.address}" target="_blank"><img src="${toon.image}" width=150 height=150></a><br><br>
		
						${toon.title}<br>
						${toon.storyWriter}/${toon.illustrator}
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>