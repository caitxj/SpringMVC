<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t"  %>
<%@ page session="false" %>
<html>
<head>
<title>Spittr</title>
</head>
<body>
	<div id="header">
			<t:insertAttribute name="header" />
	</div>
	<div id="footer">
			<t:insertAttribute name="footer" />
	</div>
</body>
</html>