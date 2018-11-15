<%-- 
    Document   : katalogfilmow4
    Created on : 2018-11-15, 14:56:28
    Author     : BartD
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Katalog</h1>
        <%
        String USERNAME = "root";
        String PASSWORD = "";
        String CONN_STRING = "jdbc:mysql://localhost:3306/filmy";
    
        Connection conn = null;
        
        conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
        if(!conn.isClosed())
        {
        out.println("Connected!!!!");
        } else out.println ("Connection DEAD");
        
       Statement st = conn.createStatement();
       ResultSet rs = st.executeQuery("Select * From sklep");
       
       while(rs.next())
        {
            out.println("</br>");
            out.println(rs.getString(1));
            out.println("</br>");
            out.println(rs.getString(2));
            out.println("</br>");
            out.println(rs.getString(3));
            out.println("</br>");
            out.println(rs.getString(4));
            out.println("</br>");
            out.println(rs.getString(5));
            out.println("</br>");
            out.println("--------------------------");
            out.println("</br>");
        
        }
       
       conn.close();

        %> 
        
        
    </body>
</html>
