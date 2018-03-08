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
                                DCM图像游览

                            </header>
                            <!-- <div class="box-header"> -->
                            <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                            <!-- </div> -->
                            <div>


                                <div class="box-tools m-b-15">
                                    <form class=" text-right form-inline">
                                        <div class="form-group">
                                            <label class="sr-only" for="inputfile">文件输入</label>
                                            <input type="file" id="inputfile">
                                        </div>
                                        <button id="btn_addPatient" class="btn btn-success">
                                            添加图像
                                        </button>
                                    </form>

                                    <div id="div_2d">

                                    </div>
                                </div>

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
    <!-- DWV -->
    <!-- Third party (dwv) -->
    <script type="text/javascript" src="dicom/ext/modernizr/modernizr.js"></script>
    <!-- Local -->
    <script type="text/javascript" src="dicom/src/app/application.js"></script>
    <script type="text/javascript" src="dicom/src/app/viewController.js"></script>
    <script type="text/javascript" src="dicom/src/dicom/dicomParser.js"></script>
    <script type="text/javascript" src="dicom/src/dicom/dictionary.js"></script>
    <script type="text/javascript" src="dicom/src/gui/filter.js"></script>
    <script type="text/javascript" src="dicom/src/gui/generic.js"></script>
    <script type="text/javascript" src="dicom/src/gui/help.js"></script>
    <script type="text/javascript" src="dicom/src/gui/info.js"></script>
    <script type="text/javascript" src="dicom/src/gui/html.js"></script>
    <script type="text/javascript" src="dicom/src/gui/layer.js"></script>
    <script type="text/javascript" src="dicom/src/gui/loader.js"></script>
    <script type="text/javascript" src="dicom/src/gui/style.js"></script>
    <script type="text/javascript" src="dicom/src/gui/tools.js"></script>
    <script type="text/javascript" src="dicom/src/gui/undo.js"></script>
    <script type="text/javascript" src="dicom/src/image/decoder.js"></script>
    <script type="text/javascript" src="dicom/src/image/dicomBufferToView.js"></script>
    <script type="text/javascript" src="dicom/src/image/filter.js"></script>
    <script type="text/javascript" src="dicom/src/image/geometry.js"></script>
    <script type="text/javascript" src="dicom/src/image/image.js"></script>
    <script type="text/javascript" src="dicom/src/image/luts.js"></script>
    <script type="text/javascript" src="dicom/src/image/view.js"></script>
    <script type="text/javascript" src="dicom/src/utils/thread.js"></script>
    <script type="text/javascript" src="dicom/src/image/dicomBufferToView.js"></script>
    <script type="text/javascript" src="dicom/src/io/urlsLoader.js"></script>
    <script type="text/javascript" src="dicom/src/io/dicomDataLoader.js"></script>
    <script type="text/javascript" src="dicom/src/math/bucketQueue.js"></script>
    <script type="text/javascript" src="dicom/src/math/matrix.js"></script>
    <script type="text/javascript" src="dicom/src/math/point.js"></script>
    <script type="text/javascript" src="dicom/src/math/scissors.js"></script>
    <script type="text/javascript" src="dicom/src/math/shapes.js"></script>
    <script type="text/javascript" src="dicom/src/math/stats.js"></script>
    <script type="text/javascript" src="dicom/src/math/vector.js"></script>
    <script type="text/javascript" src="dicom/src/tools/toolbox.js"></script>
    <script type="text/javascript" src="dicom/src/tools/undo.js"></script>
    <script type="text/javascript" src="dicom/src/tools/windowLevel.js"></script>
    <script type="text/javascript" src="dicom/src/utils/browser.js"></script>
    <script type="text/javascript" src="dicom/src/utils/progress.js"></script>
    <script type="text/javascript" src="dicom/src/utils/string.js"></script>

    <!-- Local -->
    <script type="text/javascript" src="index/js/appgui_lue.js"></script>

    <!-- Launch the app -->
    <script type="text/javascript">
        // launch when page is loaded
        document.addEventListener("DOMContentLoaded", function ( /*event*/ ) {
            <s:iterator value="ds" var="dd">
                dwv.addDataLine("dwv${dd.id}", "${dd.path}","${dd.id}");
            </s:iterator>
            // dwv.addDataLine("dwv0", "osirix-toutatix-100");
            // dwv.addDataLine("dwv1", "osirix-goudurix");
            // dwv.addDataLine("dwv2", "dicompyler-ct.0");
            // dwv.addDataLine("dwv3", "gdcm-CR-MONO1-10-chest");
            // dwv.addDataLine("dwv4", "gdcm-CT-MONO2-8-abdo");
            // dwv.addDataLine("dwv5", "gdcm-US-RGB-8-epicard");
            // dwv.addDataLine("dwv6", "gdcm-US-RGB-8-esopecho");
        });
    </script>
</body>

</html>