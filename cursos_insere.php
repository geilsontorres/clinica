<?php

    $nome = $_POST['nome'];
    $formacao = $_POST['formacao'];

    //echo $nome;


    // Salva no banco de dados
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "clinica_";

    $conn = new mysqli($servidor, $usuario, $senha, $banco);

    if ($conn->connect_error) {
        die("Erro: " . $conn->connect_error);
    } else {
        //echo "Conectado com o banco!";
    }

    $consulta = "INSERT INTO `auxiliares_cadastro` (`id`, `nome`, `formacao`) VALUES (NULL, '" . $nome . "', '" . $formacao . "');";
    $result = $conn->query($consulta);
    $conn->close();


    // Redireciona para INDEX
    header('Location: http://localhost/clinica/cursos.php');


?>