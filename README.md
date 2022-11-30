# GERADOR DE LAUDO COVID-19

Sistema desmenbrado e configurado para funcionar como ferramenta para emissão de laudos da Covid-19 em Inglês e Português.

## Bibliotecas utilizadas:

- Bootstrap
- MPDF
- Chart.js
- Composer
- Datatables
- JQuery
- PHP Mailer
- Google Translate PHP

## Requerimentos: 

PHP 7.2 ou superior
MySQL 5.2

## Comunicação com o DB:

Alterar no arquivo /src/conn.php com as informações do banco.

![WhatsApp Image 2022-11-29 at 16 40 53](https://user-images.githubusercontent.com/38993485/204631941-a889d3c9-f8fe-4311-a81d-3927ec767f23.jpeg)

## Descrição dos arquivos e pastas:
`css/` - pasta contendo todos os arquivos de estilização finais. <br>
`images/` - pasta contendo todas as imagens utilizadas no sistema. <br>
`js/` - pasta contendo arquivos de bibliotecas de estilização e validação de dados. <br>
`mailer/` - pasta contendo arquivos de configuração da biblioteca de envio de e-mails. <br>
`scss/` - pasta contendo estilização completa do Bootstrap. <br>
`src/` - pasta contendo arquivos de configuração e conexão com o banco de dados. <br>
`translate/` - pasta contendo arquivos da biblioteca de tradução. <br>
`vendor/` - composer. <br>
`db_export.sql` - exportação do banco de dados. <br>
`home.html` - dashboard. <br>
`index.html` - tela de login. <br>
`laudocfg.php` - tela de input dos testes disponíveis para emissão. <br>
`ldo.php` - tela de emissão do laudo. <br>
`mail.php` - arquivo de envio de e-mail. *inativado* <br>
`valid.php` - arquivo de autenticação do login e redirecionamento de telas. 

