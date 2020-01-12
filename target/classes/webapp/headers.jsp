<%@ page import="java.util.Enumeration" %>
<h2>Headers:</h2>
<%
    out.print("<table>");
    Enumeration hnames = request.getHeaderNames();
    while(hnames.hasMoreElements()) {
        String paramName = (String)hnames.nextElement();
        out.print ("<tr><td>" + paramName + "</td>" );
        String paramValue = request.getHeader(paramName);
        out.println("<td> " + paramValue + "</td></tr>");
    }
    out.print("</table>");
%>
