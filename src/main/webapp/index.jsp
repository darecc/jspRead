<%@page import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDate, java.time.Period, java.time.LocalDateTime" %>
<html>
<head>
    <link rel="stylesheet" href="styl.css">
    <meta charset="UTF-8"/>
    <title>Moje dane</title>
</head>
<body>
<%
    session.setAttribute("name", "Dariusz");
%>
<h2 class="morskieOko">Instrukcja odwiedzania strony:</h2>
<ul>
    <li><a href="index.jsp">Wywołać index.jsp</a></li>
    <li><a href="session.jsp">Wywołać session.jsp</a></li>
    <li><a href="readFromFile.jsp">Wywołać readFromFile.jsp</a></li>
    <li><a href="session.jsp"> Wywołać session.jsp</a></li>
</ul>
<%@include file="header.jsp"%>
<%
    LocalDate data = LocalDate.now();
    LocalDateTime time = LocalDateTime.now();
    LocalDate poczatekRoku = LocalDate.of(2020,1,1);
    Period period = Period.between(poczatekRoku, data);
    String mojeDane = "Dariusz";
    int sekundy = time.getHour()*3600 + time.getMinute() * 60 + time.getSecond();
    // wyświetlenie danych:
    out.print("<p class=\"dziwny\">Dane: " + mojeDane + "</p>");
    out.print("<p class=\"morskieOko\">Liczba dni: " + period.getDays());
    out.print("<p>Liczba sekund: " + sekundy + "</p>");
    out.print(
            "<p>Czas: " +
                    time.getHour() + ":" +
                    time.getMinute() + ":" +
                    time.getSecond()
            +  "</p>");
%>
<p>Liczba dni (2 raz): <%= period.getDays() %></p>
<%@include file="headers.jsp"%>
<%@include file="include.jsp"%>
</body>
