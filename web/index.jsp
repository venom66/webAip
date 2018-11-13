<%-- 
    Document   : index
    Created on : 2018-11-07, 12:50:55
    Author     : BartD
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Wypożyczalnia filmów PISTOL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="style.css" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" 
	rel="stylesheet" type='text/css'> 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
        
    </head>
    <%
        Date date = new Date();
        %>
    
    <body>
        
        <nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> 
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<div class="serce">
			
                                <p><%=date%> </p>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#"> Home </a></li>
					<li><a href="#omnie"> O mnie  </a></li>
					<li><a href="katalogfilmow.jsp"> Katalog filmow </a></li>
					<li><a href="#kontakt"> Kontakt </a></li>
				</ul>
					
					
			
			</div>
		</div>
	
</nav>
        
    <center>
        <div> <h1> Witaj w sklepie z filmami </h1> </div>
        
    </center>
    <div><h2> Wyszykaj film:  </h2> </div>
    
    
    
    <form name="myForm" action="display.jsp" method="POST">
        
        <table border="1">
           
            <tbody>
                <tr>
                    <td>Id: </td>
                    <td><input type="text" name="id" value="" size="30" /></td>
                </tr>
                <tr>
                    <td>Tytuł: </td>
                    <td><input type="text" name="tytul" value="" size="30" /></td>
                </tr>
                <tr>
                    <td>Kategoria: </td>
                    <td><select name="kat">
                            <option>dramat</option>
                            <option>obyczajowy</option>
                            <option>komedia</option>
                            <option>akcja</option>
                            <option>horror</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Rok: </td>
                    <td><input type="text" name="rok" value="RRRR" size="30" /></td>
                </tr>
                <tr>
                    <td>Opis: </td>
                    <td><input type="text" name="op" value="" size="30" /></td>
                </tr>
                <tr>
                    <td>Cena: </td>
                    <td><input type="text" name="prise" value="" size="30" /></td>
                </tr>
            </tbody>
        </table>
        
        <input type="reset" value="Clear" name="clear" />

        <input type="submit" value="Submit" name="submit" />
    </form>
        
    </body>
</html>

