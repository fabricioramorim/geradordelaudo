<?php
	$servidor = "localhost";
	$usuario = "vacivi36_sistema";
	$senha = "@f8WBMe5=]^8";
	$dbname = "vacivi36_laudo";
	
	//Criar a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
	
	if(!$conn){
		die("Falha na conexao: " . mysqli_connect_error());
	}else{
		//echo "Conexao realizada com sucesso";
	}	
	
?>