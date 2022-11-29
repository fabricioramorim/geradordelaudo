<?php
require_once('src/conn.php');

$id = $_POST['laudo_id']; 
$nome = $_POST['laudo_nome']; 
$marca = $_POST['laudo_marca']; 
$lote = $_POST['laudo_lote'];
$registro = $_POST['laudo_registro'];
$validade = $_POST['laudo_validade'];
$material = $_POST['laudo_material'];
 
/* INSERÇÃO AO DB*/

$sql = "INSERT INTO laudo_testes (
 laudo_nome,
 laudo_marca,
 laudo_lote,
 laudo_registro,
 laudo_validade, 
 laudo_material 

 ) VALUES (?,?,?,?,?,?)";
$stmt= $conn->prepare($sql);
$stmt->bind_param("ssssss", 
$nome, 
$marca, 
$lote,
$registro,
$validade,
$material

);

$stmt->execute();

echo "
<script> 
    window.location.replace('laudocfg.php');
</script>";