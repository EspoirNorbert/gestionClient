<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulaire ajout client</title>
</head>
<body>
	<form action="insertTable.jsp">
		<h2>Ajout d'un client</h2>
		<div>
			<label>Nom</label> 
			<input type="text" name="nom" required placeholder="Entrer le nom">
		</div>
		<div>
			<label>Prenom</label> <input type="text" name="prenom" required placeholder="Entrer le prenom">
		</div>
		<div>
			<label>Adresse</label> <input type="text" name="adresse" placeholder="Entrer votre adresse">
		</div>
		<div>
			<label>Chiffre d'affaire</label> <input type="number" name="chiffreAffaire" placeholder="chiffre d'affaire">
		</div>
		<div>
			<label>Type client</label> <input type="text" name="type" placeholder="type de client">
		</div>
		<div>
			<label>Activité principale</label> <input type="text" name="activitePrincipale">
		</div>
		<div>
			<input type="submit" value="Valider" name="valider">
			 <input type="reset" value="Annuler" name="annuler">
		</div>
	</form>
</body>
</html>