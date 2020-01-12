<%@ page import="java.util.Enumeration" %><%--
Wyświetlanie danych sesyjnych
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dane sesyjne</title>
</head>
<body>
<%
    Enumeration<String> dane = session.getAttributeNames();
    while(dane.hasMoreElements()) {
        String name = dane.nextElement();
        Object value = session.getAttribute(name);
        out.print("<p>" + name + " : " + value + "</p>");
    }
%>
</body>
</html>
