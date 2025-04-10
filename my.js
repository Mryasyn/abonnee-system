function retablir1(){
    cin = document.getElementById("cin");
    nom = document.getElementById("nom");
    prenom = document.getElementById("pr");
    dn = document.getElementById("dn");
    r1 = document.getElementById("r1");
    r2 = document.getElementById("r2");
    s1 = document.getElementById("s1");
    s2 = document.getElementById("s2");

    if (cin.value !== "" || nom.value !== "" || prenom.value !== "" || dn.value !== "" || r1.checked || r2.checked || s1.checked || s2.checked ){
        alert("Toutes les informations seront supprimées");
        cin.value = "";
        nom.value = "";
        prenom.value = "";
        dn.value = "";
        r1.checked = false;
        r2.checked = false;
        s1.checked = false;
        s2.checked = false;
    }
    else{
        alert("Entrez vos informations");
    }
    return false;
}

function chiffres(ch){
    i = 0;
    while(i < ch.length && "0"<=ch[i] && ch[i]<="9"){
        i++;
    }
    return i == ch.length;
}


function valid1(){
    cin = document.getElementById("cin").value;
    nom = document.getElementById("nom").value;
    prenom = document.getElementById("pr").value;
    dn = document.getElementById("dn");
    r1 = document.getElementById("r1");
    r2 = document.getElementById("r2");
    s1 = document.getElementById("s1");
    s2 = document.getElementById("s2");

    if (!chiffres(cin) || cin.length !== 8){
        alert("Doit être composé de huit chiffres");
        return false;
    }
    else if(nom == "" || prenom == ""){
        alert("Entrez votre nom et prénom");
        return false;
    }
    else if((r1.checked == false && r2.checked == false) || (s1.checked == false && s2.checked == false)){
        alert("Une valeur doit etre selectionnée");
        return false;
    }
    else if(dn.value == ""){
        alert("Entrez votre date de naissance");
        return false;
    }
    alert("Informations valides !");
    return true;
}

function retablir3(){
    cin = document.getElementById("cin");

    if (cin.value !== ""){
        cin.value = "";
    }
    else{
        alert("Entrez vos informations");
    }
    return false;
}

function supp(){
    cin = document.getElementById("cin").value;

    if (!chiffres(cin) || cin.length !== 8){
        alert("Doit être composé de huit chiffres");
        return false;
    }
    return true;
}


