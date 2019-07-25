<%@page import="com.mycrud.dao.UserDao"%>
<jsp:useBean id="u" class="com.mycrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.update(u);
if(i>0){
response.sendRedirect("viewusers.jsp");
}
else {
	System.out.println("Erorr! Something Went Wrong");
	response.sendRedirect("viewusers.jsp");
}
%>