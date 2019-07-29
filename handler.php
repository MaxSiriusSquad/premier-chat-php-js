<?php

// Inclusion du fichier s'occupant de la connexion à la DB (TODO)
require __DIR__ . '/inc/db.php'; 

    // On doit analyser la demande faite via l'URL (GET) afin de déterminer si on souhaite réucpérer les messages ou en écrire un
        // Tache par défaut
        $task = "list";
        // Si dans mon tableau GET j'ai une clé qui s'appelle task
        if(array_key_exists("task", $_GET)){

            // Alors j'affiche bonjour
            // NB : donner une task en parametre en GET on tappe dans l'URL : http://localhost/Entrainements-persos/Exo-chat-Lior-Chamla/handler.php?task=test
            // Ici il va s'afficher "Bonjour"
            // echo "Bonjour";

            // Autre exemple : Qu'est ce qu'il se trouve en tableau GET à la clé task => affiche "test"
            // echo $_GET['task'];

            $task = $_GET['task'];
        }

        if($task == "write") {
            postMessage();
        } else {
            getMessages();
        }



    // Si on veut récupérer, il faut envoyer du JSON
    function getMessages(){
        global $pdo;
        // 1/ Je fais une requête de ma BDD pour récupérer les 20 derniers messages

        // Requête SQL pour avoir tous les messages par ordre décroissant concernant sa date de création (le plus vieux en premier) avec une limite de 20 messages
        $sql = "
            SELECT *
            FROM `messages`
            ORDER BY created_at DESC
            LIMIT 20
            ";
        $pdoStatement = $pdo->query($sql);

        // 2/ Je traite les résultats
        $messagesList = $pdoStatement->fetchAll(PDO::FETCH_ASSOC);

        // 3/ J'affiche les données sous forme de JSON (avec AJAX la meilleure façon de traiter les données c'est le format JSON)
        echo json_encode($messagesList);

    }



    // Si on veut écrire au contraire, il faut analyser les paramètres envoyés en POST et les sauver dans la BDD
    function postMessage(){
        global $pdo;
        // 1/ Analyser les paramètres passés en POST (autor, content)

        if (!array_key_exists('author', $_POST) || !array_key_exists('content', $_POST)){

            echo json_encode(["status" => "error", "message" => "One field or many have not been sent"]);
            return;
        }

        $author = $_POST['author'];
        $content = $_POST['content'];

        // 2/ Créer une requête qui permettra d'insérer ces données
        $sql = "
        INSERT INTO `messages`
        SET
            author = :author,
            content = :content,
            created_at = CURRENT_TIMESTAMP
        ";

        $pdoStatement = $pdo->prepare($sql);

        $pdoStatement->execute([
            "author" => $author,
            "content" => $content
        ]);

        // 3/ Donner un statut de succes ou d'erreur au format JSON
        echo json_encode(["status" => "success"]);
    }