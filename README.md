# GERADOR DE LAUDO COVID-19

Sistema desmenbrado e configurado para funcionar como ferramenta para emissão de laudos da Covid-19 em Inglês e Português.

<br>
Bibliotecas utilizadas:

- Bootstrap
- MPDF
- Chart.js
- Composer
- Datatables
- JQuery
- PHP Mailer
- Google Translate PHP

<br>
Requerimentos: 

PHP 7.2 ou superior
MySQL 5.2

<br>
Comunicação com o DB:

Alterar no arquivo /src/conn.php com as informações do banco.

![WhatsApp Image 2022-11-29 at 16 40 53](https://user-images.githubusercontent.com/38993485/204631941-a889d3c9-f8fe-4311-a81d-3927ec767f23.jpeg)

<br>
Descrição dos arquivos e pastas:
<br><br>
<strong>css/</strong> - pasta contendo todos os arquivos de estilização finais. <br>
<strong>images/</strong> - pasta contendo todas as imagens utilizadas no sistema. <br>
<strong>js/</strong> - pasta contendo arquivos de bibliotecas de estilização e validação de dados. <br>
<strong>mailer/</strong> - pasta contendo arquivos de configuração da biblioteca de envio de e-mails. <br>
<strong>scss/</strong> - pasta contendo estilização completa do Bootstrap. <br>
<strong>src/</strong> - pasta contendo arquivos de configuração e conexão com o banco de dados. <br>
<strong>translate/</strong> - pasta contendo arquivos da biblioteca de tradução. <br>
<strong>vendor/</strong> - composer. <br>
<strong>db_export.sql</strong> - exportação do banco de dados. <br>
<strong>home.html</strong> - dashboard. <br>
<strong>index.html</strong> - tela de login. <br>
<strong>laudocfg.php</strong> - tela de input dos testes disponíveis para emissão. <br>
<strong>ldo.php</strong> - tela de emissão do laudo. <br>
<strong>mail.php</strong> - arquivo de envio de e-mail. *inativado* <br>
<strong>valid.php</strong> - arquivo de autenticação do login e redirecionamento de telas. 

