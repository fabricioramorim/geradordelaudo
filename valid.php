<?php

use Stichoza\GoogleTranslate\GoogleTranslate;
use Mpdf\Mpdf;

require_once('src/conn.php');
require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/translate/vendor/autoload.php';

$tr = new GoogleTranslate(); // Translates to 'en' from auto-detected language by default
$tr->setSource('pt'); // Translate from Portuguese
$tr->setSource(); // Detect language automatically
$tr->setTarget('en'); // Translate to English

$cpf = $_POST['cpf'];
$nome = $_POST['nome'];
$email = $_POST['email'];
$nascimento = $_POST['nascimento'];
$material = $_POST['material'];
$datacoleta = $_POST['datacoleta'];
$horacoleta = $_POST['horacoleta'];
$resultado = $_POST['resultado'];
$marca = $_POST['marca'];
$lote = $_POST['lote'];
$registro = $_POST['registro'];
$validade = $_POST['validade'];

/* INSERÇÃO AO DB*/

$sql = "INSERT INTO clientes (
 nome,
 cpf,
 dtnasc,
 material,
 dtcoleta, 
 horacoleta, 
 resultado,
 marca,
 lote,
 validade,
 registro,
 email
 
 ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param(
    "ssssssssssss",
    $nome,
    $cpf,
    $nascimento,
    $material,
    $datacoleta,
    $horacoleta,
    $resultado,
    $marca,
    $lote,
    $validade,
    $registro,
    $email
);
$stmt->execute();

/* VERIFICA O CHECKBOX */

$_POST['ingles'] = (isset($_POST['ingles'])) ? true : null;
$check = $_POST['ingles'];

/* IMPORTA MPDF */

$mpdf = new Mpdf();
$mpdf->showImageErrors = true;

/* DATAS */

$Year = date("Y");

$datavalidade = $validade;
$datavalidade = date("d/m/Y", strtotime($datavalidade));

$datacoleta = date("d/m/Y", strtotime($datacoleta));

$horacoleta = date("H:i:s", strtotime($horacoleta));

/* CONVERTE O RESULTADO */

if ($resultado == 0) {
    $result = "Não Detectado Antígeno viral de SARS-CoV-2";
} elseif ($resultado == 1) {
    $result = "Detectado Antígeno viral de SARS-CoV-2";
}

/* MASCARA DO CPF */

function formata_cpf_cnpj($cpf_cnpj)
{


    $cpf_cnpj = preg_replace("/[^0-9]/", "", $cpf_cnpj);
    $tipo_dado = NULL;
    if (strlen($cpf_cnpj) == 11) {
        $tipo_dado = "cpf";
    }
    if (strlen($cpf_cnpj) == 14) {
        $tipo_dado = "cnpj";
    }
    switch ($tipo_dado) {
        default:
            $cpf_cnpj_formatado = "Não foi possível definir tipo de dado";
            break;

        case "cpf":
            $bloco_1 = substr($cpf_cnpj, 0, 3);
            $bloco_2 = substr($cpf_cnpj, 3, 3);
            $bloco_3 = substr($cpf_cnpj, 6, 3);
            $dig_verificador = substr($cpf_cnpj, -2);
            $cpf_cnpj_formatado = $bloco_1 . "." . $bloco_2 . "." . $bloco_3 . "-" . $dig_verificador;
            break;
    }
    return $cpf_cnpj_formatado;
}

$docFormatado = formata_cpf_cnpj($cpf);

/* VALIDAÇÃO E-MAIL OU LAUDO */

function get_post_action($name)
{
    $params = func_get_args();

    foreach ($params as $name) {
        if (isset($_POST[$name])) {
            return $name;
        }
    }
}


switch (get_post_action('email', 'laudo')) {
    case 'email':
        if ($check == 'on') {
            $pagina =
                "
            
                <html>
                <link rel='stylesheet' type='text/css' href='css/styleld.css'>
                <link rel='preconnect' href='https://fonts.googleapis.com'>
                <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
                <link href='https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap' rel='stylesheet'>
            
                <body>
                <img class='logo' src='images/logo.png'>
                <p class='form_align'>
                <span style='font-size:8.0pt'>Patient .................... : <b style='font-size:10.0pt'>" . $nome . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>ID Number .................. : <b style='font-size:10.0pt'>" . $docFormatado . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>Birth Date ................. : <b style='font-size:10.0pt'>" . $nascimento . "</b></span>
                <span style='font-size:8.0pt'>________________________________________________________________________________________________________ </span><br/><br/>
                <span style='font-size:15.0pt'>ANTIGEN COVID-19</span><br/>
                <span style='font-size:6.5pt'>Material: " . $tr->translate($material) . " collected: " . $datacoleta . " " . $horacoleta . "</span><br/><br/>
                <span style='font-size:10.0pt'>RESULT .................... : " . $tr->translate($result) . "</span><br/><br/>
                <span style='font-size:10.0pt'>INPUT BRAND ............... : " . $marca . "</span><br/>
                <span style='font-size:10.0pt'>LOT ....................... : " . $lote . "</span><br/>
                <span style='font-size:10.0pt'>VALIDITY .................. : " . $datavalidade . "</span><br/>
                <span style='font-size:10.0pt'>ANVISA REGISTRATION ....... : " . $registro . "</span><br/><br/>
                <span style='font-size:7.0pt'>NOTE ....................... :</span><br/>
                <span style='font-size:7.0pt'>
                - This test detects the presence of the viral nucleoprotein antigen of SARS-CoV-2 in the specimen and should not be
                used as the sole criterion for the diagnosis of SARS-CoV-2 infection;<br/>
                - COVID-19 Antigen is an assay for the qualitative detection of SARS-CoV-2 antigen in nasopharyngeal swab
                specimens.<br/>
                swab specimens. This test is intended for professional use only, for initial screening and to aid in the diagnosis
                of
                SARS-CoV-2 infection;<br/>
                - A nondetect result may occur if the antigen concentration is less than the detection limit of the
                test;<br/>
                - A nondetect result does not rule out the possibility of SARS-Cov-2 infection and should be confirmed by viral
                viral isolation or RT-PCR;<br/>
                - A detected result does not rule out the possibility of infection with other pathogens;<br/>
                - As with all diagnostic tests, a definitive clinical diagnosis should not be based on the
                result of a single test, but should only be made by the physician after all clinical and laboratory findings have
                been evaluated
                have been evaluated;<br/>
                - Undetected test results do not rule out other potential non-SARS-CoV-2 viral infections. Results
                results should be confirmed by molecular diagnosis if COVID-19 disease is suspected;<br/>
                - The amount of antigen in a sample may decrease with increasing duration of illness. Samples collected
                days 5-7 of illness are more likely to be missed compared to an RT-PCR assay
                RT-PCR assay;<br/>
                - Detected test results do not exclude co-infections with other pathogens.</span><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p>
                <p class='form_align2'>
                <img class='logo2' src='images/assinaturaamanda.png'><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;" . $tr->translate("Responsável Técnica") . "</span><br/>
                <span style='font-size:8.0pt'>Dra. Amanda C. P. Fernandes</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CRM/SP 133.136</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vacivitta</span><br/>
        
                </p>
                
                </body>
                </html>
                ";

            $arquivo = "laudo.pdf";

            $mpdf = new Mpdf();
            $mpdf->WriteHTML($pagina);

            // FOR EMAIL
            $content = $mpdf->Output('', 'S'); // Saving pdf to attach to email 
            $content = chunk_split(base64_encode($content));

            // Email settings
            $mailto = $email;
            $from_name = 'LUBUS PDF Test';
            $from_mail = 'webmaster@vacivitta.com.br';
            $replyto = 'oggimrm@gmail.com';
            $uid = md5(uniqid(time()));
            $subject = 'mdpf email with PDF';
            $message = 'Download the attached pdf';
            $filename = 'lubus_mpdf_demo.pdf';

            $header = "From: " . $from_name . " <" . $from_mail . ">\r\n";
            $header .= "Reply-To: " . $replyto . "\r\n";
            $header .= "MIME-Version: 1.0\r\n";
            $header .= "Content-Type: multipart/mixed; boundary=\"" . $uid . "\"\r\n\r\n";
            $header .= "This is a multi-part message in MIME format.\r\n";
            $header .= "--" . $uid . "\r\n";
            $header .= "Content-type:text/plain; charset=iso-8859-1\r\n";
            $header .= "Content-Transfer-Encoding: 7bit\r\n\r\n";
            $header .= $message . "\r\n\r\n";
            $header .= "--" . $uid . "\r\n";
            $header .= "Content-Type: application/pdf; name=\"" . $filename . "\"\r\n";
            $header .= "Content-Transfer-Encoding: base64\r\n";
            $header .= "Content-Disposition: attachment; filename=\"" . $filename . "\"\r\n\r\n";
            $header .= $content . "\r\n\r\n";
            $header .= "--" . $uid . "--";
            $is_sent = @mail($mailto, $subject, "", $header);

            //$mpdf->Output(); // For sending Output to browser
            $mpdf->Output('lubus_mdpf_demo.pdf', 'D'); // For Download

            exit;

            // I - Abre no navegador
            // F - Salva o arquivo no servido
            // D - Salva o arquivo no computador do usuário



        } else {
            $pagina =
                "
            
                <html>
                <link rel='stylesheet' type='text/css' href='css/styleld.css'>
                <link rel='preconnect' href='https://fonts.googleapis.com'>
                <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
                <link href='https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap' rel='stylesheet'>
            
                <body>
                <img class='logo' src='images/logo.png'>
                <p class='form_align'>
                <span style='font-size:8.0pt'>Paciente ............. : <b style='font-size:10.0pt'>" . $nome . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>CPF .................. : <b style='font-size:10.0pt'>" . $docFormatado . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>Data de Nascimento ... : <b style='font-size:10.0pt'>" . $nascimento . "</b></span>
                <span style='font-size:8.0pt'>________________________________________________________________________________________________________ </span><br/><br/>
                <span style='font-size:15.0pt'>COVID-19 ANTÍGENO</span><br/>
                <span style='font-size:6.5pt'>Material: " . $material . " coletado em: " . $datacoleta . " " . $horacoleta . "</span><br/><br/>
                <span style='font-size:10.0pt'>RESULTADO ............ : " . $result . "</span><br/><br/>
                <span style='font-size:10.0pt'>MARCA DO INSUMO ...... : " . $marca . "</span><br/>
                <span style='font-size:10.0pt'>LOTE ................. : " . $lote . "</span><br/>
                <span style='font-size:10.0pt'>VALIDADE ............. : " . $datavalidade . "</span><br/>
                <span style='font-size:10.0pt'>REGISTRO NA ANVISA ... : " . $registro . "</span><br/><br/>
                <span style='font-size:7.0pt'>NOTA ............. :</span><br/>
                <span style='font-size:7.0pt'>
                - Este teste detecta a presença do antígeno viral de nucleoproteínas de SARS-CoV-2 na amostra e não deve ser usado
                como o único critério para o diagnóstico de infecção por SARS-CoV-2;<br/>
                - O COVID-19 Antígeno é um ensaio para detecção qualitativa de antígenos de SARS-CoV-2 em amostras de swab da
                nasofaringe. Este teste é destinado para uso profissional, apenas para triagem inicial e auxiliar no diagnóstico da
                infecção por SARS-CoV-2;<br/>
                - Um resultado não detectado pode ocorrer se a concentração de antígeno for menor que o limite de detecção do
                teste;<br/>
                - Um resultado não detectado não exclui a possibilidade de infecção por SARS-Cov-2 e deve ser confirmado por
                isolamento viral ou RT-PCR;<br/>
                - Um resultado detectado não descarta a possibilidade de infecção com outros patógenos;<br/>
                - Tal como acontece com todos os testes de diagnóstico, um diagnóstico clínico definitivo não deve ser baseado no
                resultado de um único teste, mas só deve ser feito pelo médico após todos os achados clínicos e laboratoriais terem
                sido avaliados;<br/>
                - Resultados de teste não detectado não excluem outras infecções virais não SARS-CoV-2 em potencial. Os resultados
                não detectado devem ser confirmados por diagnóstico molecular se houver suspeita de doença COVID-19;<br/>
                - A quantidade de antígeno em uma amostra pode diminuir com o aumento da duração da doença. As amostras coletadas
                após os dias 5-7 da doença têm maior probabilidade de apresentar resultados não detectado em comparação com um
                ensaio de RT-PCR;<br/>
                - Resultados de teste detectado não excluem coinfecções com outros patógenos.</span><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                </p>
                <p class='form_align2'>
                <img class='logo2' src='images/assinaturaamanda.png'><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;Responsável Técnica</span><br/>
                <span style='font-size:8.0pt'>Dra. Amanda C. P. Fernandes</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CRM/SP 133.136</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vacivitta</span><br/>
        
                </p>
                
                </body>
                </html>
                ";

            $arquivo = "laudo.pdf";

            $mpdf = new Mpdf();
            $mpdf->WriteHTML($pagina);

            $mpdf->Output($arquivo, 'D');

            // I - Abre no navegador
            // F - Salva o arquivo no servido
            // D - Salva o arquivo no computador do usuário


        }
        break;

    case 'laudo':
        if ($check == 'on') {
            $pagina =
                "
            
                <html>
                <link rel='stylesheet' type='text/css' href='css/styleld.css'>
                <link rel='preconnect' href='https://fonts.googleapis.com'>
                <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
                <link href='https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap' rel='stylesheet'>
            
                <body>
                <img class='logo' src='images/logo.png'>
                <p class='form_align'>
                <span style='font-size:8.0pt'>Patient .................... : <b style='font-size:10.0pt'>" . $nome . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>ID Number .................. : <b style='font-size:10.0pt'>" . $docFormatado . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>Birth Date ................. : <b style='font-size:10.0pt'>" . $nascimento . "</b></span>
                <span style='font-size:8.0pt'>________________________________________________________________________________________________________ </span><br/><br/>
                <span style='font-size:15.0pt'>ANTIGEN COVID-19</span><br/>
                <span style='font-size:6.5pt'>Material: " . $tr->translate($material) . " collected: " . $datacoleta . " " . $horacoleta . "</span><br/><br/>
                <span style='font-size:10.0pt'>RESULT .................... : " . $tr->translate($result) . "</span><br/><br/>
                <span style='font-size:10.0pt'>INPUT BRAND ............... : " . $marca . "</span><br/>
                <span style='font-size:10.0pt'>LOT ....................... : " . $lote . "</span><br/>
                <span style='font-size:10.0pt'>VALIDITY .................. : " . $datavalidade . "</span><br/>
                <span style='font-size:10.0pt'>ANVISA REGISTRATION ....... : " . $registro . "</span><br/><br/>
                <span style='font-size:7.0pt'>NOTE ....................... :</span><br/>
                <span style='font-size:7.0pt'>
                - This test detects the presence of the viral nucleoprotein antigen of SARS-CoV-2 in the specimen and should not be
                used as the sole criterion for the diagnosis of SARS-CoV-2 infection;<br/>
                - COVID-19 Antigen is an assay for the qualitative detection of SARS-CoV-2 antigen in nasopharyngeal swab
                specimens.<br/>
                swab specimens. This test is intended for professional use only, for initial screening and to aid in the diagnosis
                of
                SARS-CoV-2 infection;<br/>
                - A nondetect result may occur if the antigen concentration is less than the detection limit of the
                test;<br/>
                - A nondetect result does not rule out the possibility of SARS-Cov-2 infection and should be confirmed by viral
                viral isolation or RT-PCR;<br/>
                - A detected result does not rule out the possibility of infection with other pathogens;<br/>
                - As with all diagnostic tests, a definitive clinical diagnosis should not be based on the
                result of a single test, but should only be made by the physician after all clinical and laboratory findings have
                been evaluated
                have been evaluated;<br/>
                - Undetected test results do not rule out other potential non-SARS-CoV-2 viral infections. Results
                results should be confirmed by molecular diagnosis if COVID-19 disease is suspected;<br/>
                - The amount of antigen in a sample may decrease with increasing duration of illness. Samples collected
                days 5-7 of illness are more likely to be missed compared to an RT-PCR assay
                RT-PCR assay;<br/>
                - Detected test results do not exclude co-infections with other pathogens.</span><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p>
                <p class='form_align2'>
                <img class='logo2' src='images/assinaturaamanda.png'><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;" . $tr->translate("Responsável Técnica") . "</span><br/>
                <span style='font-size:8.0pt'>Dra. Amanda C. P. Fernandes</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CRM/SP 133.136</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vacivitta</span><br/>
        
                </p>
                
                </body>
                </html>
                ";

            $arquivo = "laudo.pdf";

            $mpdf = new Mpdf();
            $mpdf->WriteHTML($pagina);

            $mpdf->Output($arquivo, 'D');

            // I - Abre no navegador
            // F - Salva o arquivo no servido
            // D - Salva o arquivo no computador do usuário

        } else {
            $pagina =
                "
            
                <html>
                <link rel='stylesheet' type='text/css' href='css/styleld.css'>
                <link rel='preconnect' href='https://fonts.googleapis.com'>
                <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
                <link href='https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap' rel='stylesheet'>
            
                <body>
                <img class='logo' src='images/logo.png'>
                <p class='form_align'>
                <span style='font-size:8.0pt'>Paciente ............. : <b style='font-size:10.0pt'>" . $nome . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>CPF .................. : <b style='font-size:10.0pt'>" . $docFormatado . "</b></span><br/><br/>
                <span style='font-size:8.0pt'>Data de Nascimento ... : <b style='font-size:10.0pt'>" . $nascimento . "</b></span>
                <span style='font-size:8.0pt'>________________________________________________________________________________________________________ </span><br/><br/>
                <span style='font-size:15.0pt'>COVID-19 ANTÍGENO</span><br/>
                <span style='font-size:6.5pt'>Material: " . $material . " coletado em: " . $datacoleta . " " . $horacoleta . "</span><br/><br/>
                <span style='font-size:10.0pt'>RESULTADO ............ : " . $result . "</span><br/><br/>
                <span style='font-size:10.0pt'>MARCA DO INSUMO ...... : " . $marca . "</span><br/>
                <span style='font-size:10.0pt'>LOTE ................. : " . $lote . "</span><br/>
                <span style='font-size:10.0pt'>VALIDADE ............. : " . $datavalidade . "</span><br/>
                <span style='font-size:10.0pt'>REGISTRO NA ANVISA ... : " . $registro . "</span><br/><br/>
                <span style='font-size:7.0pt'>NOTA ............. :</span><br/>
                <span style='font-size:7.0pt'>
                - Este teste detecta a presença do antígeno viral de nucleoproteínas de SARS-CoV-2 na amostra e não deve ser usado
                como o único critério para o diagnóstico de infecção por SARS-CoV-2;<br/>
                - O COVID-19 Antígeno é um ensaio para detecção qualitativa de antígenos de SARS-CoV-2 em amostras de swab da
                nasofaringe. Este teste é destinado para uso profissional, apenas para triagem inicial e auxiliar no diagnóstico da
                infecção por SARS-CoV-2;<br/>
                - Um resultado não detectado pode ocorrer se a concentração de antígeno for menor que o limite de detecção do
                teste;<br/>
                - Um resultado não detectado não exclui a possibilidade de infecção por SARS-Cov-2 e deve ser confirmado por
                isolamento viral ou RT-PCR;<br/>
                - Um resultado detectado não descarta a possibilidade de infecção com outros patógenos;<br/>
                - Tal como acontece com todos os testes de diagnóstico, um diagnóstico clínico definitivo não deve ser baseado no
                resultado de um único teste, mas só deve ser feito pelo médico após todos os achados clínicos e laboratoriais terem
                sido avaliados;<br/>
                - Resultados de teste não detectado não excluem outras infecções virais não SARS-CoV-2 em potencial. Os resultados
                não detectado devem ser confirmados por diagnóstico molecular se houver suspeita de doença COVID-19;<br/>
                - A quantidade de antígeno em uma amostra pode diminuir com o aumento da duração da doença. As amostras coletadas
                após os dias 5-7 da doença têm maior probabilidade de apresentar resultados não detectado em comparação com um
                ensaio de RT-PCR;<br/>
                - Resultados de teste detectado não excluem coinfecções com outros patógenos.</span><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                </p>
                <p class='form_align2'>
                <img class='logo2' src='images/assinaturaamanda.png'><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;Responsável Técnica</span><br/>
                <span style='font-size:8.0pt'>Dra. Amanda C. P. Fernandes</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CRM/SP 133.136</span><br/>
                <span style='font-size:8.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vacivitta</span><br/>
        
                </p>
                
                </body>
                </html>
                ";

            $arquivo = "laudo.pdf";

            $mpdf = new Mpdf();
            $mpdf->WriteHTML($pagina);

            $mpdf->Output($arquivo, 'D');

            // I - Abre no navegador
            // F - Salva o arquivo no servido
            // D - Salva o arquivo no computador do usuário


        }
        break;

    default:
        //no action sent
}
