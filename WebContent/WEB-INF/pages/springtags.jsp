<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>spring jsp tags</title>
</head>
<body>
<h1>Jsp tags</h1>
url:<s:url value="/xxx/www/eee"/>
escapBody:<s:escapeBody>&lt;h1&gt;Hello&lt;/h1&gt;</s:escapeBody>
message(i18n):<s:message code="hello.text"/>
<sf:form method="POST" commandName="spitter">
<%-- <sf:input path="ss"/> --%>
First Name: <sf:input path="firstName" /><br/>
Last Name: <sf:input path="lastName" /><br/>
<%-- Email: <sf:input path="email" /><br/> --%>
Username: <sf:input path="username" /><br/>
Password: <sf:password path="password" /><br/>
<input type="submit" value="Register" />
</sf:form>
</body>
</html>