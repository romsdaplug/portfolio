function calcul_moyenne(){

    var n1 = prompt("Donner la première note : ");
    var n2 = prompt("Donner la deuxième note : ");
    var n3 = prompt("Donner la troisième note : ");

    var somme = Number(n1)+Number(n2)+Number(n3)

    document.write("Voici la somme: "+somme+ "<br>");

    var moyenne=somme/3;

    document.write("Voici la moyenne: "+moyenne+"<br>");

    if (moyenne<10){
        document.write("Vous êtes redoublant")
    }
    else{
        document.write("Vous êtes admis")};
}

function test_age(){

    var age=prompt("Quel âge avez vous ?");

    if (age<18) {
        document.write("Vous êtes mineur");
        document.bgColor = "red"
      } else {
        document.write("Vous êtes majeur");
        document.bgColor = "green";
      }}


function simple_affichage(){

    var nom=prompt("Quel est votre nom ?");

    var prenom=prompt("Quel est votre prénom ?");

    document.write("<div style='margin:auto; width:300px; border: 2px solid blue;'>")
    document.write("Bonjour "+ nom + " " + prenom)
    document.write("</div>")
}

function test_couleur() {

    var col=prompt("Choisissez une couleur parmis les suivantes : Rouge, Vert, Bleu, Gris, Rose");

    if (col=="Rouge" || col=="rouge"){
        document.body.style.background = "red";}
    else if (col=="Vert" || col=="vert"){
        document.body.style.background = "green";}
    else if (col=="Bleu" || col=="bleu"){
        document.body.style.background = "blue";}
    else if (col=="Gris" || col=="gris"){
        document.body.style.background = "grey";}
    else if (col=="Rose" || col=="rose"){
        document.body.style.background = "pink";}
    else {document.write("Couleur non prise en charge..")};}