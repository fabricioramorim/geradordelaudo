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
                        <a class="collapse-item" href="ldo.php">COVID-19</a>
                        <a class="collapse-item active" href="#">Configurações</a>
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
                            <span class="mr-2 d-none d-lg-inline text-white h3">Bem-vindo, <strong>Ramiro!</strong></span>
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
                                    <h6 class="m-0 font-weight-bold text-primary">Configurações do laudo</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Opções:</div>
                                            <a class="dropdown-item" style="cursor: pointer;" data-toggle="modal" data-target="#modal_add">Adicionar novo teste</a>
                                            <!--<div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>-->
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="container mt-5">
                                        <div class="row" style="text-align:center">
                                            <div class="col-12">
                                                <h5 class="text-black-50" style="margin-bottom: 30px;">Estes são os testes cadastrados no sistema</h5>
                                            </div>
                                        </div>
                                        <?php
                                        $query = "SELECT * FROM laudo_testes";
                                        $result = mysqli_query($conn, $query);
                                        while ($fetch = mysqli_fetch_assoc($result)) { ?>
                                            <table class="table">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th scope="col">Nome</th>
                                                        <th scope="col">Material</th>
                                                        <th scope="col">Marca</th>
                                                        <th scope="col">Lote</th>
                                                        <th scope="col">Registro</th>
                                                        <th scope="col">Validade</th>
                                                        <th scope="col">Ações</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><?php echo $fetch['laudo_nome']; ?></td>
                                                        <td><?php echo $fetch['laudo_material']; ?></td>
                                                        <td><?php echo $fetch['laudo_marca']; ?></td>
                                                        <td><?php echo $fetch['laudo_lote']; ?></td>
                                                        <td><?php echo $fetch['laudo_registro']; ?></td>
                                                        <td><?php echo $fetch['laudo_validade']; ?></td>
                                                        <td>
                                                            <i style="cursor: pointer;" data-toggle="modal" data-target="#modal_excluir_<?php echo $fetch['laudo_id']; ?>">Excluir  </i>
                                                            <i style="cursor: pointer;" data-toggle="modal" data-target="#modal_edit_<?php echo $fetch['laudo_id']; ?>">Editar</i>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                            <!-- Modal ADD -->
                                            <form action="testadd.php" method="POST">
                                                <div class="modal fade" id="modal_add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <span class="text-black-50" style="font-size: 12px;">Adiconar novo teste</span>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-12">
                                                                        <h6 class="text-black-50">Insira os dados a seguir do teste a ser incluso no sistema</h6>
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <input id="laudo_nome" name="laudo_nome" class="form-control text-black-50" type="text" placeholder="Nome a ser exibido">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_marca" name="laudo_marca" class="form-control text-black-50" type="text" placeholder="Marca">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_lote" name="laudo_lote" class="form-control text-black-50" type="text" placeholder="Lote">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_registro" name="laudo_registro" class="form-control text-black-50" type="text" placeholder="Registro">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_validade" name="laudo_validade" class="form-control text-black-50" type="date" placeholder="Validade">
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <input id="laudo_material" name="laudo_material" class="form-control text-black-50" type="text" placeholder="Material de coleta">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                                <button type="submit" class="btn btn-primary">Adicionar</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                            <!-- Modal excluir -->
                                            <form action="testdel.php" method="POST">
                                                <div class="modal fade" id="modal_excluir_<?php echo $fetch['laudo_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <span class="text-black-50" style="font-size: 12px;">Excluir teste</span>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-12">
                                                                        <h6 class="text-black-50">Tem certeza que deseja excluir: <?php echo $fetch['laudo_nome']; ?> Lote: <?php echo $fetch['laudo_lote']; ?> ?</h6>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                                <button type="submit" class="btn btn-danger">Excluir</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                            <!-- Modal editar -->
                                            <form action="testedit.php" method="POST">
                                                <div class="modal fade" id="modal_edit_<?php echo $fetch['laudo_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <span class="text-black-50" style="font-size: 12px;">Editar teste</span>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-12">
                                                                        <h6 class="text-black-50">Edite os dados a seguir do teste</h6>
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <input id="laudo_nome" name="laudo_nome" value="<?php echo $fetch['laudo_nome']; ?>" class="form-control text-black-50" type="text" placeholder="Nome a ser exibido">
                                                                        <input id="laudo_id" name="laudo_id" value="<?php echo $fetch['laudo_id']; ?>" type="hidden">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_marca" name="laudo_marca" value="<?php echo $fetch['laudo_marca']; ?>" class="form-control text-black-50" type="text" placeholder="Marca">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_lote" name="laudo_lote" value="<?php echo $fetch['laudo_lote']; ?>" class="form-control text-black-50" type="text" placeholder="Lote">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_registro" name="laudo_registro" variant_mul<?php echo $fetch['laudo_registro']; ?> class="form-control text-black-50" type="text" placeholder="Registro">
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <input id="laudo_validade" name="laudo_validade" value="<?php echo $fetch['laudo_validade']; ?>" class="form-control text-black-50" type="date" placeholder="Validade">
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <input id="laudo_material" name="laudo_material" value="<?php echo $fetch['laudo_material']; ?>" class="form-control text-black-50" type="text" placeholder="Material de coleta">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                                <button type="submit" class="btn btn-primary">Editar</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                        <?php } ?>
                                    </div>
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


</body>

</html>