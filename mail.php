<?php     
$to_email = 'webmaster@vacivitta.com.br';
$subject = 'Testando PHP Mail';
$message = 'Este e-mail é enviado usando a função de e-mail do PHP';
$headers = 'De: fabricio.amorim@vacivitta.com.br ';
mail ($to_email, $subject, $message, $headers);
?>