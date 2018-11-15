<%-- 
    Document   : katalog
    Created on : 2018-11-13, 13:02:59
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
        <title>Katalog filmów w sklepie</title>
    </head>
    <body>
        <h1>Filmy w katalogu</h1>
        <%!
        public class Filmy
            {
                String URL = "jdbc:mysql//localhost:3306/filmy";
                String USERNAME = "root";
                String PASSWORD = "";

                Connection connection = null;
                PreparedStatement selectFilmy = null;
                ResultSet resultSet = null;

                public Filmy() {
                    
                    try{
                    
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    selectFilmy = connection.prepareStatement(
                    "Select * FROM sklep");

                    }catch (SQLException e){
                        e.printStackTrace();
                    }
                }

                public ResultSet getFilmy(){
                
                try{
                    resultSet = selectFilmy.executeQuery();

                }catch (SQLException e){   
                e.printStackTrace();
                            
                }
                return resultSet;
              
}  
}
            %>
            
            <%
                Filmy filmy1 = new Filmy();
                ResultSet resultset = filmy1.getFilmy();
            %>
            
    </body>
</html>
