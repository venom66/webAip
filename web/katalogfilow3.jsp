<%-- 
    Document   : katalogfilow3
    Created on : 2018-11-15, 10:42:23
    Author     : BartD
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connection with mysql database</title>
</head> 
<body>
<h1>Connection status</h1>
<% 
try {
    
    Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver"); 
            connection = DriverManager.getConnection("jdbc:mysql//localhost:3306/filmy", "root", "");
            if(!connection.isClosed())
                 out.println("Successfully connected to " + "MySQL server using TCP/IP...");
            connection.close();
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex);
}
%>

</body> 
</html>