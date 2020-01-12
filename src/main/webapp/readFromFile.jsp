<%@ page import="dc.Citizen" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.io.*" %>
<%--Testowanie czytania z pliku --%>
<%@ page language="java" pageEncoding="utf-8" %>
<%
    List<Citizen> citizens = new ArrayList<>();
    FileReader re = null;
    BufferedReader bu = null;
    try {
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        URL url = classLoader.getResource("");
        File file = new File(url.getPath() + "/dane.txt");
        // bu = new BufferedReader(new FileReader(file));
        bu = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF8"));
        String linia = "";
        while ((linia = bu.readLine()) != null) {
            String[] fragments = linia.split(",");
            Citizen m = new Citizen(fragments[0], fragments[1], fragments[2]);
            citizens.add(m);
        }
    }
    catch (IOException ioe) {
        out.print("Błąd: " + ioe.getMessage());
    }
    finally {
        bu.close();
    }
    session.setAttribute("lista", citizens);
%>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Czytanie z pliku</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
<%@include file="header.jsp"%>
<h2>Lista mieszkańców:</h2>
<table style="border: 1px solid;">
    <thead><tr><th>Name</th><th>City</th><th>Country</th></tr></thead>
    <%
        for(Citizen miesz : citizens) {
            int los = (int)(Math.random()*3);
            String styl = "background-color:olive;";
            switch(los) {
                case 0:
                    styl = "background-color:yellow;";
                    break;
                case 1:
                    styl = "background-color:lightgreen;";
                    break;
                default:
                    styl = "background-color:lightblue;";
                    break;
            }
            out.print("<tr style =\"" + styl + "\">");
            out.print("<td>" + miesz.getName() + "</td>");
            out.print("<td>" + miesz.getCity() + "</td>");
            out.print("<td>" + miesz.getCountry() + "</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>

