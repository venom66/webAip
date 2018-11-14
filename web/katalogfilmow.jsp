<%-- 
    Document   : katalogfilmow
    Created on : 2018-11-13, 14:59:17
    Author     : BartD
--%>


<%@page import="java.lang.String"%>
<%@page import="testDB.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Katalog filmów to: </h1>
        
        <% 
            testBD myBD = new testBD();
            out.print(myBD.show());
            
            out.print(myBD.main());
            
        
        
        
        %>
        
    
</html>
