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