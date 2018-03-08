<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<%@page isELIgnored="false"%>
<!DOCTYPE html>
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
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="index/css/style.css" rel="stylesheet" type="text/css" />

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
            <a href="index.html" class="logo">
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
                                <span>${username}
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
                            <p>你好，${username}</p>
    
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
                                病人信息游览

                            </header>
                            <!-- <div class="box-header"> -->
                            <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                            <!-- </div> -->
                            <div class="panel-body table-responsive">
                                <div class="box-tools m-b-15 text-right">
                                    <button id="btn_addPatient" class="btn btn-success">
                                        添加病人
                                    </button>
                                </div>
                                <!-- 弹出框 添加病人 -->
                                <div id="modal_addPatient" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title">添加病人</h4>
                                            </div>
                                            <div class="modal-body">
                                                <!-- form表单 -->
                                                <form id="form_addP" class="form-horizontal" action="addPatient" type="post">
                                                    <div class="form-group">
                                                        <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="name" class="form-control" id="inputEmail3" placeholder="name">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">疾病</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="sickness" class="form-control" id="inputPassword3" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">年龄</label>
                                                        <div class="col-sm-10">
                                                            <input type="number" name="age" class="form-control" id="inputPassword3" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-2 col-md-offset-2">
                                                            <input type="radio" name="sex" value="男" checked> 男
                                                        </div>
                                                        <div class="col-md-2">
                                                            <input type="radio" name="sex" value="女"> 女
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">说明</label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="info" class="form-control" id="inputPassword3" placeholder="">
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                <button type="button" id="btn_form_add" class="btn btn-primary">添加</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                                <!-- 弹出框 修改病人信息 -->
                                <div id="modal_updatePatient" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title">修改病人信息</h4>
                                            </div>
                                            <div class="modal-body">
                                                <!-- form表单 -->
                                                <form class="form-horizontal">
                                                    <div class="form-group">
                                                        <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
                                                        <div class="col-sm-10">
                                                            <input type="email" class="form-control" id="inputEmail3" placeholder="name">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">疾病</label>
                                                        <div class="col-sm-10">
                                                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">年龄</label>
                                                        <div class="col-sm-10">
                                                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-2 col-md-offset-2">
                                                            <input type="radio" name="sex" value="男" checked> 男
                                                        </div>
                                                        <div class="col-md-2">
                                                            <input type="radio" name="sex" value="女"> 女
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">说明</label>
                                                        <div class="col-sm-10">
                                                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                <button type="button" class="btn btn-primary">修改</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                                <table class="table table-hover">
                                    <tr>
                                        <th>添加时间</th>
                                        <th>姓名</th>
                                        <th>疾病</th>
                                        <th>年龄</th>
                                        <th>性别</th>
                                        <th>说明</th>
                                        <th></th>
                                    </tr>
                                    <s:iterator value="patients" var="p">
                                        <tr>
                                            <td>${p.date}</td>
                                            <td>${p.name}</td>
                                            <td>${p.sickness}</td>
                                            <td>${p.age}</td>
                                            <td>${p.sex}</td>
                                            <td>${p.info}</td>
                                            <td>
                                                <a onclick="updatePatient(${p.id});" href="#">修改</a>|
                                                <a href="dcmList?id=${p.id}">显示DCM图像</a>|
                                                <a href="xtk?id=${p.id}">显示三维重建图像图像</a>
                                            </td>
                                        </tr>
                                    </s:iterator>
                                    <%--<tr>--%>
                                        <%--<td>2018/3/6 15:03</td>--%>
                                        <%--<td>石悟松</td>--%>
                                        <%--<td>选择恐惧症</td>--%>
                                        <%--<td>22</td>--%>
                                        <%--<td>男</td>--%>
                                        <%--<td>此人是编程工作者</td>--%>
                                        <%--<td>--%>
                                            <%--<a onclick="updatePatient(1);" href="#">修改</a>|--%>
                                            <%--<a href="2d_lue.html?id=?">显示DCM图像</a>|--%>
                                            <%--<a href="xtk?id=${p.id}">显示三维重建图像图像</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                </table>
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
</body>

</html>