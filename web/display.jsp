<%-- 
    Document   : display
    Created on : 2018-11-13, 11:11:06
    Author     : BartD
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>wyniki</title>
    </head>
    <body>
        <h1>Wyniki wyszukiwania: </h1>
        
        <%
            String poleId = request.getParameter("id");
            String poleTytyl = request.getParameter("tytul");
            String poleKat = request.getParameter("kat");
            String poleRok = request.getParameter("rok");
            String poleOpis = request.getParameter("op");
            String poleCena = request.getParameter("price");
        
        %>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>id: </td>
                    <td> <%= poleId %> </td>
                </tr>
                <tr>
                    <td>tytul</td>
                    <td><%= poleTytyl %></td>
                </tr>
                <tr>
                    <td>Kategoria: </td>
                    <td><%= poleKat %></td>
                </tr>
                <tr>
                    <td>Rok: </td>
                    <td><%= poleRok %></td>
                </tr>
                <tr>
                    <td>Opis: </td>
                    <td><%= poleOpis %></td>
                </tr>
                <tr>
                    <td>Cena: </td>
                    <td><%= poleCena %></td>
                </tr>
            </tbody>
        </table>
                
                
                

        
    </body>
</html>
