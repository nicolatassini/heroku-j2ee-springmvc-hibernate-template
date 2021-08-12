<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<%@ include file="header.jsp" %>
	${controllerMessage}<br/>
<br/>
<br/>
<a href="person/list">Go to the person list</a>
</body>
</html>
