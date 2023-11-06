function seconnecter(){
	var login = prompt("Donner votre nom d'utilisateur")
	var password = prompt("Entrez votre mot de passe")
	if( login == "admin" && password == "admin"){
		document.write("Bienvenue : " + login);
	}
	else
	{
		alert("Accès refusé")
	}
}


function seconnecter2(){
	window.location.href = "https://romsdaplug.github.io/portfolio/TP/TPConnexion/index.html";
}

function cdc(){
	var chaine = prompt("Donnez un mot");
	document.write(chaine.toUpperCase()+"<br>");
	document.write(chaine.toLowerCase()+"<br>");
	document.write("La chaîne contient  " + chaine.length + " caractères  <br>");
	document.write("La première lettre est  " + chaine.substr(0,1) + " <br>");
}
