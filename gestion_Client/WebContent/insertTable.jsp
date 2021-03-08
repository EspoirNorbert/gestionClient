<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="models.Client"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertion des donnees en BD</title>
</head>
<body>
  <%
  Client client = new Client();
  client.setNom(request.getParameter("nom"));
  client.setPrenom(request.getParameter("prenom"));
  client.setAdresse(request.getParameter("adresse"));
  client.setChiffreAffaire(Double.parseDouble(request.getParameter("chiffreAffaire")));
  client.setType(request.getParameter("type"));
  client.setActivite(request.getParameter("activitePrincipale"));
  
  try{
  Class.forName("com.mysql.cj.jdbc.Driver");
  
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_projet1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
  
  String requette = "insert into client (nomC,prenomC,adresseC,chiffreAffaire,typeC,activiteC) values('" + client.getNom()+ " ', '"
				       + client.getPrenom() + "', '"
				      +  client.getAdresse() + "', ' "
				      +  client.getChiffreAffaire() + "', '"
				      +  client.getType()+ "', ' "
		              +  client.getActivite() + "')";
  Statement st = con.createStatement();
  int i = st.executeUpdate(requette);
  out.print("Insertion reussit");
   %>
  <a href="affiche.jsp">Voir la liste des clients</a>
  <%
  }catch(Exception e){
	  out.print(e.getMessage());
	  e.printStackTrace();
  }
  %>
  
</body>
</html>