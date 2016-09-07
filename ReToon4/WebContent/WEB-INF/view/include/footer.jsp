<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- FOOTER -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3" style="float:right">
                <div class="col">
                   <h4>Contact us</h4>
                   <ul>
                        <li>서울특별시 </li>
                        <li>Phone: <%= application.getInitParameter("phone")%> </li>
                        <li>Email: <a href="mailto:${initParam.email}" title="Email Us">${initParam.email}</a></li>
                   </ul>
                 </div>
            </div>
            
            
        </div>
	</div>
</footer>
<%
	application.log(new java.util.Date().toString() + " : " + 
					request.getRemoteAddr() + " : " +
					request.getRequestURI());
%>