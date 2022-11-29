<?php
require_once('src/conn.php');
?>

<!DOCTYPE html>
<html lang="pt-Br">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.css" rel="stylesheet">

</head>
<style>
    body {
        background: #eee
    }

    .ratings i {
        color: green
    }

    .install span {
        font-size: 12px
    }

    .col-md-4 {
        margin-top: 27px
    }
</style>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-vitta sidebar sidebar-dark accordion troggled toggled" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand align-items-center justify-content-center">
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
                <div class="sidebar-brand-text mx-3">Vitta <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item ">
                <a class="nav-link" href="home.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Laudos</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Opções:</h6>
                        <a class="collapse-item active" href="#">COVID-19</a>
                        <a class="collapse-item" href="laudocfg.php">Configurações</a>
                    </div>
                </div>
            </li>

            

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-vitta topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <!-- Nav Item - User Information -->
                    <li class="align-nav nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-white h3">Bem-vindo <strong></strong></span>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">



                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>



                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Laudos COVID-19</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="container mt-5">
                                        <div class="row" style="text-align:center">
                                            <div class="col-12">
                                                <h5 class="text-black-50">Escolha o teste que deseja emitir o laudo</h5>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <?php
                                            $query = "SELECT * FROM laudo_testes";
                                            $result = mysqli_query($conn, $query);
                                            while ($fetch = mysqli_fetch_assoc($result)) {
                                                $datavalidade = date("d/m/Y", strtotime($fetch['laudo_validade']));

                                                echo '<div class="col-md-4">
                                                        <div class="card p-3">
                                                            <div class="d-flex flex-row mb-3" style = "margin-left: -8px;">
                                                                <div class="d-flex flex-column ml-2">
                                                                    <span class="text-black-50">';
                                                echo $fetch['laudo_nome'];
                                                echo '</span>
                                                                    <span class="text-black-50">';
                                                echo 'Marca: ' . $fetch['laudo_marca'];
                                                echo '</span>
                                                                    <span class="text-black-50">';
                                                echo 'Validade: ' . $datavalidade;
                                                echo '</span>
                                                                </div>
                                                            </div>
                                                                <h6 class="text-black-50">';
                                                echo 'Lote: ' . $fetch['laudo_lote'];
                                                echo '&nbsp;&nbsp;&nbsp;Registro: ' . $fetch['laudo_registro'];
                                                echo '      </h6>
                                                            <div class="d-flex justify-content-between install mt-3"><span class="text-black-50">Identificação: ';
                                                echo $fetch['laudo_id'];
                                                echo '</span><a class="text-primary" style="cursor: pointer;" data-toggle="modal" data-target="#modal_';
                                                echo $fetch['laudo_id'];
                                                echo '">Selecionar&nbsp;<i class="fa fa-angle-right"></i></a></div>
                                                        </div>
                                                    </div>';

                                            ?>
                                                <form method="POST" action="valid.php">
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="modal_<?php echo $fetch['laudo_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <span class="text-black-50" style="font-size: 12px;">Identificação: <?php echo $fetch['laudo_id']; ?></span>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="form-row">
                                                                        <div class="form-group col-md-12">
                                                                            <h6 class="text-black-50">Insira os dados a seguir para finalizar a emissão do laudo</h6>
                                                                        </div>
                                                                        <div class="form-group col-md-12">
                                                                            <input id="cpf" name="cpf" class="form-control text-black-50" type="text" placeholder="CPF do cliente">
                                                                            </div><div class="form-group col-md-12">
                                                                            <input id="nascimento" name="nascimento" class="form-control text-black-50" type="text" placeholder="Data de nascimento do cliente">
                                                                            </div><div class="form-group col-md-12">
                                                                            <input id="nome" name="nome" class="form-control text-black-50" type="text" placeholder="Nome do cliente">
                                                                        </div>
                                                                        <div class="form-group col-md-12">
                                                                            <input type="checkbox" id="ingles" name="ingles">
                                                                            <label class=" text-black-50" for="ingles">Gerar laudo em Inglês</label>
                                                                        </div>
                                                                        <div class="form-group col-md-12">
                                                                            <label class="text-black-50" for="resultado">Selecione o resultado do teste</label>
                                                                            <select id="resultado" name="resultado" class="custom-select">
                                                                                <option value="1" selected>Positivo</option>
                                                                                <option value="0">Negativo</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="form-group col-md-6">
                                                                            <label class="text-black-50" for="datacoleta">Data da coleta</label>
                                                                            <input id="datacoleta" name="datacoleta" type="date" class="form-control">
                                                                        </div>
                                                                        <div class="form-group col-md-6">
                                                                            <label class="text-black-50" for="horacoleta">Horário da coleta</label>
                                                                            <input id="horacoleta" name="horacoleta" type="time" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                    <input id="material" name="material" type="hidden" value="<?php echo $fetch['laudo_material']; ?>">
                                                                    <input id="marca" name="marca" type="hidden" value="<?php echo $fetch['laudo_marca']; ?>">
                                                                    <input id="lote" name="lote" type="hidden" value="<?php echo $fetch['laudo_lote']; ?>">
                                                                    <input id="registro" name="registro" type="hidden" value="<?php echo $fetch['laudo_registro']; ?>">
                                                                    <input id="validade" name="validade" type="hidden" value="<?php echo $fetch['laudo_validade']; ?>">
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                                    <button type="submit" name="laudo" class="btn btn-primary">Baixar laudo</button>
                                                                </div>
                                                            </div>
                                                </form>
                                        </div>
                                    </div>

                                <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pie Chart -->

            </div>

            <!-- Content Row -->


        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Your Website 2021</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>


    <!-- API CPF -->
    <script>
        var temporiza;
        $("#cpf").on("input", function() {
            clearTimeout(temporiza);
            temporiza = setTimeout(function() {



                var numCpf = $("#cpf").val();
                var url = "https://api.cpfcnpj.com.br/0fb7dc1966668a8bb466d8ac49bf6c7c/7/"+numCpf+"";

                $.ajax({
                    url: url,
                    type: "get",
                    dataType: "json",

                    success: function(dados) {
                        console.log(dados);
                        $("#nome").val(dados.nome);
                        $("#nascimento").val(dados.nascimento);
                    }
                })

            }, 500);
        })

        $(document).ready(function() {
            $('.mail-tab').click(function() {
                $('.mail-tab').removeClass('active');
                $(this).addClass('active');

            });
        });
    </script>

</body>

</html>