<%@page import="com.mycrud.dao.UserDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="u" class="com.mycrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%--
<%
int i=UserDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
--%>
<c:set var = "i" scope = "request" value = "${UserDao.save(u)}" />
<c:if test="${i>0}">
	<c:redirect url = "adduser-success.jsp" />
</c:if>
<c:if test="${i>0}">
	<c:redirect url = "adduser-error.jsp" />
</c:if>
