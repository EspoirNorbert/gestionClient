<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="models.Client"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listes des clients</title>
</head>
<body>
   <div>
   <h2>Liste des clients</h2>
	<table border="1" >
		<tr>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Adresse</th>
			<th>ChiffreAffaire</th>
			<th>Type client</th>
			<th>Activite principale</th>
		
		</tr>
		<% 
       try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_projet1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
	   String requette = "select * from client";
	   Statement st = con.createStatement();
	   ResultSet rs = st.executeQuery(requette);
	   while(rs.next()){
	  %>
		<tr>
			<td><%=  rs.getString("nomC") %></td>
			<td><%=  rs.getString("prenomC") %></td>
			<td><%=  rs.getString("adresseC") %></td>
			<td><%=  rs.getString("chiffreAffaire") %></td>
			<td><%=  rs.getString("typeC") %></td>
			<td><%=  rs.getString("activiteC") %></td>
		<tr>
	  <%
	   }
	   con.close();
	   }catch(Exception e){
	 	  out.print(e.getMessage());
	 	  e.printStackTrace();
	   }
      %>
	</table>
	   </div>
</body>
</html>