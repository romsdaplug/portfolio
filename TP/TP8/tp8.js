function seconnecter() {
    var login = prompt("Donner votre nom d'utilisateur")
    var mdp = prompt("Donner votre mot de passe")
    if (login == "admin" && mdp == "admin") {
        document.write(`Bienvenue ${login}`);
    }
    else {
        alert("Accès refusé")
    }
}

function seconnecter2() {
    window.location.href='https://romsdaplug.github.io/portfolio/TP/TPConnexion/index.html'
}

function cdc() {
    var chaine = prompt("Donnez un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaîne contient " + chaine.length + " caractères" + "<br>");
    document.write("La première lettre est " + chaine.substring(0,1) + "<br>");
}

function switchh() {
    var color = prompt("Entrez une couleur");
    switch (color) {
        case "rouge":
            document.body.style.background = "red";
            break;
        case "ROUGE":
            document.body.style.background = "red";
            break;
	case "Rouge":
            document.body.style.background = "red";
            break;
        case "bleu":
            document.body.style.background = "blue";
            break;
	case "Bleu":
            document.body.style.background = "blue";
            break;
        case "BLEU":
            document.body.style.background = "blue";
            break;
        case "rose":
            document.body.style.background = "pink";
            break;
	case "Rose":
            document.body.style.background = "pink";
            break;
        case "ROSE":
            document.body.style.background = "pink";
            break;
        case "vert":
            document.body.style.background = "green";
            break;
	case "Vert":
            document.body.style.background = "green";
            break;
        case "VERT":
            document.body.style.background = "green";
            break;
    
        default:
            alert("Couleur non prise en charge, veuillez choisir parmis : Bleu, Rose, Rouge et Vert");
    }
}

function affichagetab() {
    document.write('<table border=2px width=30%>');
    for(var i = 0; i<=5; i++) {
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>');
    }
    document.write('</table>');
}

function affichagetab2() {
    var count = prompt("Entrez le nombre de lignes pour votre tableau");
    document.write('<table border=2px width=30%');
    for(var i = 1; i <= count; i++) {
        document.write(`<tr><td>${i}</td><td>*</td><td>*</td></tr>`);
    }
    document.write("</table>");
}
