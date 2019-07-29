// Il nous fait une fonction pour récupérer le JSON des messages et les afficher correctement
function getMessages(){

    // 1/ Elle doit créer une requête AJAX pour se connecter au serveur et notamment au fichier handler.php
    var requeteAjax = new XMLHttpRequest();
    requeteAjax.open("GET", "handler.php");


    // 2/ Quand elle reçoit les données, il faut qu'elle les traite (en exploitant le JSON) et il faut qu'elle affiche ces données au format HTML.
    requeteAjax.onload = function(){

        // Attention, le résultat est bien du format JSON mais ça reste une chaine de caracteres inexploitable en JS. Je dois donc mettre JSON.parse() pour que ce soit exploitable en JS, la chaine de caractères va se transformer en tableau d'objets
        // responseText : voir ce que le serveur a répondu
        var result = JSON.parse(requeteAjax.responseText);
        // console.log(result);

        // Il va falloir maintenant afficher en HTML et transformer chacun de ces objets en éléments HTML et les intégrer dans ma div.
        // Le .reverse() inverse l'ordre d'apparition des messages pour que celui qui apparait tout en bas soit le message le plus récent comme dans tout bon chat !
        var html = result.reverse().map(function(message){
            return `
                <div class="message">
                    <span class="date">${message.created_at.substring(11, 16)}</span>
                    <span class="author">${message.author}</span> : 
                    <span class="content">${message.content}</span>
                </div>
            `
        }).join('');

        // NB :
        // Le substring permet de mettre la date au bon format.
        // Le .join('') permet d'avoir la div qui s'affiche au format que je veux. Car sans cela ça ne s'affiche pas correctement

        var messages = document.querySelector('.messages');

        messages.innerHTML = html;

        // Pour que ma barre de scroll soit toujours en bas dans l'affichage et qu'on ne soit pas obligé de la descendre manuellement pour voir les dernier messages du chat.
        messages.scrollTop = messages.scrollHeight;

    }

    // 3/ J'envoie la requête
    requeteAjax.send();
}


// Il nous faut une fonction pour envoyer le nouveau message au serveur et rafraichir les messages
function postMessage(event){

    // 1/ Elle doit stoper le submit du formulaire
    // .preventDefault arrête l'évènement qui se produit normalement
    event.preventDefault();

    // 2/ Elle doit récupérer les données du formulaire
    var author = document.querySelector('#author');
    var content = document.querySelector('#content');

    // 3/ Elle doit conditionner les données
    // Nouvel objet FormData
    var data = new FormData();
    // Je crée un ensemble de données
    data.append('author', author.value);
    data.append('content', content.value);

    // 4/ Elle doit configurer une requête AJAX en POST et envoyer les données
    const requeteAjax = new XMLHttpRequest();
    requeteAjax.open('POST', 'handler.php?task=write');

    // Quand c'est fini on veut réafficher les messages dans la div
    requeteAjax.onload = function(){
        // Pour vider le cadre du message lorsqu'un message est envoyé
        content.value = '';
        // Pour que le curseur de la souris soit positionné automatiquement dans le cadre d'écriture d'un message
        content.focus();
        getMessages();
    }

    // Pour finir on envoie les données qu'on a récolté dans le formulaire
    requeteAjax.send(data);
}
// Pour finir il faut lier cette fonction à la soumission du formulaire
document.querySelector('form').addEventListener('submit', postMessage);


// Pour que mon chat soit achevé il me faut créer maintenant un intervalle qui demande le rafraichissement des messages toutes les 3 secondes et qui donne l'illusion du temps réel !
var interval = window.setInterval(getMessages, 3000);

getMessages();