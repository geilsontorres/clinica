<?php

$nome = $_POST['nome'];
$atuacao = $_POST['atuacao'];
$horario = $_POST['horario'];
$formacao = $_POST['mestre_em'];

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

$consulta = "INSERT INTO `destistas` (`id`, `atuacao`, `horario`, `nome`, `mestre_em`) VALUES (NULL, '".$atuacao."', '".$horario."', '".$nome."', '".$formacao."');";


$result = $conn->query($consulta);
$conn->close();


// Redireciona para INDEX
header('Location: http://localhost/clinica/alunos.php');


?>