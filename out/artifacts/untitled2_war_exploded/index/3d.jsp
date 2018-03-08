<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>医学图像系统v1.0</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <!-- bootstrap 3.0.2 -->
    <link href="index/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="index/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="index/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- google font -->
    <!-- <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'> -->
    <!-- Theme style -->
    <link href="index/css/style.css" rel="stylesheet" type="text/css" />
    <link href="index/css/mycss.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>

<body class="skin-black">
    <!-- header logo: style can be found in header.less -->
    <header class="header">
        <a href="index" class="logo">
            医学图像系统
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i>
                            <span>石悟松
                                <i class="caret"></i>
                            </span>
                        </a>
                        <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                            <li class="dropdown-header text-center">账户</li>

                            <li>
                                <a href="#">
                                    <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                    <span class="badge badge-danger pull-right">5</span> 消息</a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a data-toggle="modal" href="#modal-user-settings">
                                    <i class="fa fa-cog fa-fw pull-right"></i>
                                    个人信息
                                </a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="logout">
                                    <i class="fa fa-ban fa-fw pull-right"></i> 注销</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="index/img/26115.jpg" class="img-circle" alt="User Image" />
                    </div>
                    <div class="pull-left info">
                        <p>你好，石悟松</p>

                        <a href="#">
                            <i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li>
                        <a href="index">
                            <i class="fa fa-dashboard"></i>
                            <span>主页</span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="infoPatients">
                            <i class="fa fa-globe"></i>
                            <span>病人管理</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-glass"></i>
                            <span>帮助</span>
                        </a>
                    </li>

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="panel">
                            <header class="panel-heading">
                                三维重建显示

                            </header>
                            <!-- <div class="box-header"> -->
                            <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                            <!-- </div> -->
                            <div id="div_3d">

                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                </div>
            </section>
            <!-- /.content -->
            <div class="footer-main">
                Copyright &copy Director, 2018
            </div>
        </aside>
        <!-- /.right-side -->
    </div>
    <!-- ./wrapper -->


    <!-- jQuery 2.0.2 -->
    <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script> -->
    <script src="index/js/jquery.min.js" type="text/javascript"></script>

    <!-- Bootstrap -->
    <script src="index/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Director App -->
    <script src="index/js/Director/app.js" type="text/javascript"></script>
    <!-- myjs -->
    <script src="index/js/myjs.js" type="text/javascript"></script>
    <!-- vtk -->
    <script type="text/javascript" src="http://get.goXTK.com/xtk.js"></script>
    <script>
        window.onload = function () {

            // create and initialize a 3D renderer
            var r = new X.renderer3D();
            r.container = 'div_3d';
            r.init();

            // create a new X.mesh
            var skull = new X.mesh();
            // .. and associate the .vtk file to it
            skull.file = 'index/vtk/${vtkEntity.path}';
            // .. make it transparent
            skull.opacity = 0.7;

            // .. add the mesh
            r.add(skull);

            // re-position the camera to face the skull
            r.camera.position = [0, 400, 0];

            // animate..
            r.onRender = function () {

                // rotate the skull around the Z axis
                // since we moved the camera, it is Z not X
                skull.transform.rotateZ(1);

                // we could also rotate the camera instead which is better in case
                // we have a lot of objects and want to rotate them all:
                //
                // r.camera.rotate([1,0]);

            };

            r.render();

        };
    </script>
</body>

</html>