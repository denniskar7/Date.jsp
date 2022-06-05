<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Echoing HTML Request Parameters</title>
</head>
     
<body>
  Today's date: <%= (new java.util.Date()).toLocaleString()%>
  
  <h2>Choose name of Student from our team:</h2>
  <form method="get">
    <input type="checkbox" name="author" value="DENIS KARPUNOV ">DENIS
    <input type="checkbox" name="author" value="HILA MATOK ">HILA
    <input type="checkbox" name="author" value="TOMER COHEN">TOMER
    <input type="submit" value="Query">
  </form>
  
  <% 
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected student(s):</h3>
    <ul>
      <%
      for (String author : authors) { 
      %>
        <li><%= author %></li>
      <%
      }
      %>
    </ul>
  <%
  }
