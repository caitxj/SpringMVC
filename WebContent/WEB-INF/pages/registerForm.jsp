<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register Form</title>
</head>
<body>
<h1>Register</h1>
<h1>ei:${errorInfo}</h1>
<h4>
errors:<sf:errors path="*"/>
</h4>
<sf:form method="POST" commandName="spitter">
<sf:errors path="*"/><br/>
<sf:errors path="firstName"/>
First Name: <sf:input path="firstName" /><br/>
Last Name: <sf:input path="lastName" /><br/>
<sf:errors path="username"/>Username: <sf:input path="username" /><br/>
Password: <sf:password path="password" /><br/>
<input type="submit" value="Register" />
</sf:form>
<%-- <form  method="POST"> --%>
<!-- First Name: <input type="text" name="firstName" /><br/> -->
<!-- Last Name: <input type="text" name="lastName" /><br/> -->
<!-- Username: <input type="text" name="username" /><br/> -->
<!-- Password: <input type="password" name="password" /><br/> -->
<!-- <input type="submit" value="Register" /> -->
<%-- </form> --%>
</body>
</html>