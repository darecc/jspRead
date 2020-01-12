<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = "";
    name = (String)session.getAttribute("name");
%>
<div style="vertical-align: top; background-color: antiquewhite;">
    <h2>Witaj: <%= name %> na mojej stronie</h2>
    <p>życzę miłej pracy</p>
</div>
</body>
</html>
