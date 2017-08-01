<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>SIMCO</title>

        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/simco.css" rel="stylesheet">
        <link href="bootstrap/css/font-awesome.css" rel="stylesheet">

        <script src="bootstrap/js/modernizr.js"></script>
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <style>
            a {
                cursor: pointer; 
            }
            body{
                font-size: 90%;
            }
            .simcoSelect{
                height: 28px;
            }
            .simcoText{
                height: 28px;
            }
            .simcoButton{
                padding: 5px 5px;
            }
        </style>
        <header>
            <div class="container">
                <div class="row" style="text-align: left">
                    <table>
                        <tr>
                            <td>
                                <img src="bootstrap/img/logo.png" alt=""/><br/>
                                <span class="slogan">( Sistema de Monitoreo de Conflictos Sociales )</span>
                            </td>
                        </tr>
                    </table>


                </div>
            </div>
        </div>
    </header>

    <nav class="navbar">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <p>Menu</p>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="reporteSimcoInicio">Inicio</a></li>
                        <li><a href="reporteSimcoCaso">Casos</a></li>
                        <li><a href="reporteSimcoActividad">Acontecimientos y actuaciones defensoriales</a></li>
                        <li><a href="reporteSimcoActor">Actores</a></li>
                        <li><a href="reporteSimcoVictima">Víctimas de la violencia</a></li>
                        <li><a target="_blank" href="http://www.defensoria.gob.pe/temas.php?des=3#r">Publicaciones</a></li>
                        <li><a href="#">Sobre el SIMCO</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <section>

        <form id="idForm" method="post" action="reporteSimcoActor">
            <div class="container">
                <div role="tabpanel" class="tab-pane active" >
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 60%; vertical-align: top">
                                <style>
                                    td{
                                        padding-bottom: 7px;
                                    }
                                </style>
                                <div class="row titlecatgen marginbp2">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width:70%">
                                                <h2 class="titlecat1">Reporte de actores</h2>
                                            </td>
                                            <td style="text-align: right">
                                                <div style="float: right" id="idDescargas">
                                                    <a id="idxls">
                                                        <img src="imagenes/xls.png" height="45" width="45"/>
                                                    </a>
                                                    <a id="idpdf">
                                                        <img src="imagenes/pdf.png" height="45" width="45"/>
                                                    </a>       
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div style="background: #E2E2E2" class="panel panel-primary">
                                    <div class="panel-heading">
                                        <span style="font-size: 150%; font-weight: bold">Búsqueda de actores</span>
                                    </div>

                                    <div class="panel-body">
                                        <table style="width:100%">
                                            <tr>
                                                <td style="width:40%">
                                                    <span style="color: red; font-size: 150%">*</span><b>Año de registro:</b>
                                                </td>
                                                <td>
                                                    <select id="selectAnho" name="selectAnho" class="form-control simcoSelect">
                                                        <%=request.getAttribute("listaAnhos")%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Caso:</b></td>
                                                <td>
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td style="width: 80%">
                                                                <input type="text" id="nomCaso" name="nomCaso" placeholder="Caso" readonly="true"  class="form-control simcoText"  style="background: silver"/>
                                                                <input type="hidden" id="codigoCaso" name="codigoCaso"/>
                                                            </td>
                                                            <td>
                                                                <a class="btn-sm btn-danger" id="idOpenModalCaso">
                                                                    <span class="glyphicon glyphicon-search" />
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Tipología del caso:</b>
                                                </td>
                                                <td>
                                                    <select id="selectTipoCaso" name="selectTipoCaso" class="form-control simcoSelect">
                                                        <%=request.getAttribute("listaTipoCaso")%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Región del caso:</b>
                                                </td>
                                                <td>
                                                    <select id="selectRegion" name="selectRegion" class="form-control simcoSelect">
                                                        <%=request.getAttribute("listaRegion")%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Estado del caso:</b>
                                                </td>
                                                <td>
                                                    <select id="selectEstadoCaso" name="selectEstadoCaso" class="form-control simcoSelect">
                                                        <%=request.getAttribute("listaEstadoCaso")%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <b>Que incluya este tipo de aconteciminento:</b>
                                                </td>
                                                <td>
                                                    <select id="selectTipoAcontecimiento" name="selectTipoAcontecimiento" class="form-control simcoSelect">
                                                        <%=request.getAttribute("listaTipoAcontecimiento")%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Actor involucrado:</b></td>
                                                <td>
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td style="width: 80%">
                                                                <input type="text" id="nomActor" name="nomActor" placeholder="Actor" readonly="true"  class="form-control simcoText"  style="background: silver"/>
                                                                <input type="hidden" id="codigoActor" name="codigoActor"/>
                                                            </td>
                                                            <td>
                                                                <a class="btn-sm btn-danger" id="idOpenModalActor">
                                                                    <span class="glyphicon glyphicon-search" />
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Tipo de actor:</b></td>
                                                <td>
                                                    <select id="selectTipoActor" name="selectTipoActor" class="form-control simcoSelect">
                                                        <option value=''>Seleccione</option>
                                                        <option value='PE'>Población</option>
                                                        <option value='EM'>Organización / empresa</option>
                                                        <option value='EN'>Entidad estatal</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="panel-footer" style="text-align: right">
                                        <button type="submit" class="btn btn-warning simcoButton"  id="btnReset" name="btnReset" value="btnReset">
                                            <span class="glyphicon glyphicon-erase" />Limpiar
                                        </button>
                                        &#160;&#160;&#160;
                                        <button class="btn btn-primary simcoButton" id="btnBuscar" name="btnBuscar" value="buscar" onclick="return buscarActores()">
                                            <span class="glyphicon glyphicon-search" />Buscar
                                        </button>
                                    </div>

                                </div>
                            </td>
                            <td style="vertical-align: top;">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 25%">

                                        </td>
                                        <td>
                                            <aside>
                                                <div class="lateral youtube">
                                                    <h3>Canal <i class="fa fa-youtube fa-lg"></i></h3>
                                                    <iframe width="100%" height="205" src="https://www.youtube.com/embed/videoseries?list=PLO9TD_9AB8_M3H62phadMcncaiZgK8FdX" frameborder="0" allowfullscreen></iframe>
                                                </div>
                                            </aside>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <!--DATATABLE -->    
                    <table style="width: 100%" id="tblDatos" class="table table-bordered table-hover table-striped">
                        <%=request.getAttribute("datatable")%>
                    </table>
                    <center>
                        <div id="paginador"></div>
                    </center>

                    <div class="modal fade" tabindex="-1" role="dialog" id="idModalBusquedaCaso1">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true" class="glyphicon glyphicon-remove" style="color: red; font-size: 80%"/>
                                    </button>
                                    <span class="text-primary" style="font-size: 1.5em">Búsqueda de casos</span>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group has-feedback" style="width:100%;margin:auto">
                                        <table style="width: 100%">
                                            <tr>
                                                <td>
                                                    <input type="text" id="nombreCaso" class="form-control simcoText" placeholder="Buscar por nombre o código del caso"/>
                                                </td>
                                                <td>
                                                    <a class="btn-sm btn-primary simcoButton" id="idButonBusquedaCaso">
                                                        <span class="glyphicon glyphicon-search" />Buscar
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="ajaxGetUserServletResponse">

                                    </div>
                                    <br/>
                                    <div style="text-align: right">
                                        <b>Total: </b><span style="font-weight: bold" class="text-primary" id="idTotal"></span>
                                    </div>    
                                    <table id="idDatatableCaso" style="width: 100%" class="table table-bordered table-hover table-striped">
                                        <tr>
                                            <td><b>Nro</b></td>
                                            <td><b>Código</b></td>
                                            <td><b>Nombre</b></td>
                                            <td style="text-align: center"><b>Seleccionar</b></td>
                                        </tr>
                                    </table>
                                    <ul class="pager">
                                        <li>
                                            <a id="idPaginatorOldCaso">Anterior

                                            </a>
                                        </li>
                                        <li>
                                            <a id="idPaginatorNextCaso">Siguiente

                                            </a>
                                        </li>
                                    </ul>
                                    <input type="hidden" name="nroPaginaCaso" id="nroPaginaCaso" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" tabindex="-1" role="dialog" id="idModalBusquedaActor">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true" class="glyphicon glyphicon-remove" style="color: red; font-size: 80%"/>
                                    </button>
                                    <span class="text-primary" style="font-size: 1.5em">Búsqueda de actor</span>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group has-feedback" style="width:100%;margin:auto">
                                        <table style="width: 100%">
                                            <tr>
                                                <td>
                                                    <input type="text" id="nombreActor" class="form-control simcoText" placeholder="Buscar por nombre de actor"/>
                                                </td>
                                                <td>
                                                    <a class="btn-sm btn-primary simcoButton" id="idButonBusquedaActor">
                                                        <span class="glyphicon glyphicon-search" />Buscar
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <br/>
                                    <div style="text-align: right">
                                        <b>Total: </b><span style="font-weight: bold" class="text-primary" id="idTotalActor"></span>
                                    </div>
                                    <table id="idDatatableActor" style="width: 100%" class="table table-bordered table-hover table-striped">
                                        <tr>
                                            <td style="width: 7%"><b>Nro</b></td>
                                            <td style="width: 63%"><b>Nombre</b></td>
                                            <td style="width: 20%"><b>Documento</b></td>
                                            <td style="text-align: center"><b>Seleccionar</b></td>
                                        </tr>
                                    </table>
                                    <ul class="pager">
                                        <li>
                                            <a id="idPaginatorOldActor">Anterior

                                            </a>
                                        </li>
                                        <li>
                                            <a id="idPaginatorNextActor">Siguiente

                                            </a>
                                        </li>
                                    </ul>
                                    <input type="hidden" name="nroPaginaActor" id="nroPaginaActor" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="tipoReporte" name="tipoReporte" />
                    <script type="text/javascript">
                        $(document).ready(function () {
                            var resultado = '1';
                            resultado = '<%=request.getAttribute("result")%>';
                            if(resultado === '0'){
                            alertar('La consulta no obtuvo resultados');
                            resultado = '1';
                            }
                            
                            var vselectAnho = '<%=request.getAttribute("selectAnho")%>';
                            var vselectTipoCaso = '<%=request.getAttribute("selectTipoCaso")%>';
                            var vselectRegion = '<%=request.getAttribute("selectRegion")%>';
                            var vselectEstadoCaso = '<%=request.getAttribute("selectEstadoCaso")%>';
                            var vselectTipoAcontecimiento = '<%=request.getAttribute("selectTipoAcontecimiento")%>';
                            var vselectTipoActor = '<%=request.getAttribute("selectTipoActor")%>';
                            var vnomCaso = '<%=request.getAttribute("nombreCaso")%>';
                            var vcodigoCaso = '<%=request.getAttribute("codigoCaso")%>';
                            var vnomActor = '<%=request.getAttribute("nombreActor")%>';
                            var vcodigoActor = '<%=request.getAttribute("codigoActor")%>';
                            
                            
                            if (vselectAnho !== 'null')
                                $('#selectAnho').val(vselectAnho);
                            if (vnomCaso !== 'null')
                                $('#nomCaso').val(vnomCaso);
                            if (vcodigoCaso !== 'null')
                                $('#codigoCaso').val(vcodigoCaso);
                            if (vselectTipoCaso !== 'null')
                                $('#selectTipoCaso').val(vselectTipoCaso);
                            if (vselectRegion !== 'null')
                                $('#selectRegion').val(vselectRegion);
                            if (vselectEstadoCaso !== 'null')
                                $('#selectEstadoCaso').val(vselectEstadoCaso);
                            if (vselectTipoAcontecimiento !== 'null')
                                $('#selectTipoAcontecimiento').val(vselectTipoAcontecimiento);
                            if (vselectTipoActor !== 'null')
                                $('#selectTipoActor').val(vselectTipoActor);
                            if (vnomActor !== 'null')
                                $('#nomActor').val(vnomActor);
                            if (vcodigoActor !== 'null')
                                $('#codigoActor').val(vcodigoActor);
                            $("#idxls").click(function () {
                                $("#tipoReporte").val(1);
                                $("#idForm").submit();
                            });

                            $("#idpdf").click(function () {
                                $("#tipoReporte").val(2);
                                $("#idForm").submit();
                            });
                            
                            /************************MODAL ACTOR******************************/
                            $('#idOpenModalActor').click(function () {
                                $('.ctr').remove();
                                $('#nroPaginaActor').val(0);
                                $('#nombreActor').val("");
                                $('#idPaginatorOldActor').css('display', 'none');
                                $('#idPaginatorNextActor').css('display', 'none');
                                $("#idModalBusquedaActor").modal('show');
                            });

                            $('#idButonBusquedaActor').click(function () {
                                if (parseInt($('#nombreActor').val().length) > 0) {
                                    $('.ctr').remove();
                                    $.ajax({
                                        type: "post",
                                        url: "ServletAjax",
                                        data: {
                                            nombreActor: $("#nombreActor").val()
                                        },
                                        success: function (responseText) {
                                            if (responseText.lista !== '') {
                                                $.each(responseText.lista, function (i, item) {
                                                    var $tr = $('<tr class="ctr">').append(
                                                            $('<td>').text(item.pagina),
                                                            $('<td>').text(item.nombre),
                                                            $('<td>').text(item.documento),
                                                            $('<td style="text-align: center;"><a onclick="seleccionarActor(\'' + item.nombre + '\', \'' + item.id.toString() + '\')"><span class="glyphicon glyphicon-share" data-dismiss="modal" aria-label="Close" style="font-size:1.5em" /></a></td>')
                                                            );
                                                    $('#idDatatableActor tr:last').after($tr);
                                                });
                                                $('#nroPaginaActor').val(parseInt(responseText.paginado.toString()));
                                                var length = Object.keys(responseText.lista).length;
                                                if (parseInt(length) > 4) {
                                                    $('#idPaginatorNextActor').css('display', '');
                                                } else {
                                                    $('#idPaginatorNextActor').css('display', 'none');
                                                }
                                            } else {
                                                $('#idPaginatorNextActor').css('display', 'none');
                                            }
                                            $('#idTotalActor').text(responseText.total.toString());
                                        }
                                    });
                                } else {
                                    alertar("Debe ingresar como mínimo 3 caracteres para la búsqueda");
                                }
                                $('#idPaginatorOldActor').css('display', 'none');
                            });

                            $('#idPaginatorNextActor').click(function () {
                                $('.ctr').remove();
                                $.ajax({
                                    type: "post",
                                    url: "ServletAjax",
                                    data: {
                                        nombreActor: $("#nombreActor").val(),
                                        nroPaginaActor: parseInt($("#nroPaginaActor").val()) + 1
                                    },
                                    success: function (responseText) {
                                        $('#nroPaginaActor').val(parseInt(responseText.paginado.toString()));
                                        $.each(responseText.lista, function (i, item) {
                                            var $tr = $('<tr class="ctr">').append(
                                                    $('<td>').text(item.pagina),
                                                    $('<td>').text(item.nombre),
                                                    $('<td>').text(item.documento),
                                                    $('<td style="text-align: center;"><a onclick="seleccionarActor(\'' + item.nombre + '\', \'' + item.id.toString() + '\')"><span class="glyphicon glyphicon-share" data-dismiss="modal" aria-label="Close" style="font-size:1.5em" /></a></td>')
                                                    );
                                            $('#idDatatableActor tr:last').after($tr);
                                        });
                                        $('#idTotalActor').text(responseText.total.toString());
                                    }
                                });
                                if (parseInt($('#nroPaginaActor').val()) < 1) {
                                    $('#idPaginatorOldActor').css('display', 'none');
                                } else {
                                    $('#idPaginatorOldActor').css('display', '');
                                }
                            });

                            $('#idPaginatorOldActor').click(function (){
                                $('.ctr').remove();
                                if (parseInt($('#nroPaginaActor').val()) > 1) {
                                    $.ajax({
                                        type: "post",
                                        url: "ServletAjax",
                                        data: {
                                            nombreActor: $("#nombreActor").val(),
                                            nroPaginaActor: parseInt($("#nroPaginaActor").val()) - 1
                                        },
                                        success: function (responseText) {
                                            $('#nroPaginaActor').val(parseInt(responseText.paginado.toString()));
                                            $.each(responseText.lista, function (i, item) {
                                                var $tr = $('<tr class="ctr">').append(
                                                        $('<td>').text(item.pagina),
                                                        $('<td>').text(item.nombre),
                                                        $('<td>').text(item.documento),
                                                        $('<td style="text-align: center;"><a onclick="seleccionarActor(\'' + item.nombre + '\', \'' + item.id.toString() + '\')"><span class="glyphicon glyphicon-share" data-dismiss="modal" aria-label="Close" style="font-size:1.5em" /></a></td>')
                                                        );
                                                $('#idDatatableActor tr:last').after($tr);
                                            });
                                            $('#idTotalActor').text(responseText.total.toString());
                                        }
                                    });
                                }
                                if (parseInt($('#nroPaginaActor').val()) < 3) {
                                    $('#idPaginatorOldActor').css('display', 'none');
                                } else {
                                    $('#idPaginatorOldActor').css('display', '');
                                }
                            });
                        });
                        /************************MODAL ACTOR******************************/
                        /************************MODAL CASO******************************/
                        $('#idOpenModalCaso').click(function () {
                            $('.ctr').remove();
                            $('#nroPaginaCaso').val(0);
                            $('#nombreCaso').val("");
                            $('#idPaginatorOldCaso').css('display', 'none');
                            $('#idPaginatorNextCaso').css('display', 'none');
                            $('#idTotal').text('');
                            $("#idModalBusquedaCaso1").modal('show');
                        });

                        $('#idButonBusquedaCaso').click(function () {
                            if (parseInt($('#nombreCaso').val().length) > 2) {
                                $('.ctr').remove();
                                $.ajax({
                                    type: "post",
                                    url: "ServletAjax",
                                    data: {
                                        nombreCaso: $("#nombreCaso").val()
                                    },
                                    success: function (responseText) {
                                        if (responseText !== '') {
                                            $.each(responseText.lista, function (i, item) {
                                                var $tr = $('<tr class="ctr">').append(
                                                        $('<td>').text(item.pagina),
                                                        $('<td>').text(item.cCodigocaso),
                                                        $('<td>').text(item.cNomcaso),
                                                        $('<td style="text-align: center;"><a onclick="seleccionarCaso(\'' + item.cNomcaso + '\', \'' + item.cCodigocaso.toString() + '\')"><span class="glyphicon glyphicon-share" data-dismiss="modal" aria-label="Close" style="font-size:1.5em" /></a></td>')
                                                        );
                                                $('#idDatatableCaso tr:last').after($tr);
                                            });
                                            $('#nroPaginaCaso').val(parseInt(responseText.paginado.toString()));
                                            var length = Object.keys(responseText.lista).length;
                                            if (parseInt(length) > 4) {
                                                $('#idPaginatorNextCaso').css('display', '');
                                            } else {
                                                $('#idPaginatorNextCaso').css('display', 'none');
                                            }
                                        } else {
                                            $('#idPaginatorNextCaso').css('display', 'none');
                                        }
                                        $('#idTotal').text(responseText.total.toString());
                                    }
                                });
                            } else {
                                alertar("Debe ingresar como mínimo 3 caracteres para la búsqueda");
                            }
                            $('#idPaginatorOldCaso').css('display', 'none');
                        });

                        $('#idPaginatorNextCaso').click(function ()
                        {
                            $('.ctr').remove();
                            $.ajax({
                                type: "post",
                                url: "ServletAjax",
                                data: {
                                    nombreCaso: $("#nombreCaso").val(),
                                    nroPaginaCaso: parseInt($("#nroPaginaCaso").val()) + 1
                                },
                                success: function (responseText) {
                                    //var length = Object.keys(responseText).length;
                                    $('#nroPaginaCaso').val(parseInt(responseText.paginado.toString()));
                                    $.each(responseText.lista, function (i, item) {
                                        var $tr = $('<tr class="ctr">').append(
                                                $('<td>').text(item.pagina),
                                                $('<td>').text(item.cNomcaso),
                                                $('<td>').text(item.cCodigocaso),
                                                $('<td style="text-align: center;"><a onclick="seleccionarCaso(\'' + item.cNomcaso + '\', \'' + item.cCodigocaso.toString() + '\')"><span class="glyphicon glyphicon-share" data-dismiss="modal" aria-label="Close" style="font-size:1.5em" /></a></td>')
                                                );
                                        $('#idDatatableCaso tr:last').after($tr);
                                    });
                                    $('#idTotal').text(responseText.total.toString());
                                }
                            });
                            if (parseInt($('#nroPaginaCaso').val()) < 1) {
                                $('#idPaginatorOldCaso').css('display', 'none');
                            } else {
                                $('#idPaginatorOldCaso').css('display', '');
                            }
                        });

                        $('#idPaginatorOldCaso').click(function () {
                            $('.ctr').remove();
                            if (parseInt($('#nroPaginaCaso').val()) > 1) {
                                $.ajax({
                                    type: "post",
                                    url: "ServletAjax",
                                    data: {
                                        nombreCaso: $("#nombreCaso").val(),
                                        nroPaginaCaso: parseInt($("#nroPaginaCaso").val()) - 1
                                    },
                                    success: function (responseText) {
                                        $('#nroPaginaCaso').val(parseInt(responseText.paginado.toString()));
                                        $.each(responseText.lista, function (i, item) {
                                            var $tr = $('<tr class="ctr">').append(
                                                    $('<td>').text(item.pagina),
                                                    $('<td>').text(item.cNomcaso),
                                                    $('<td>').text(item.cCodigocaso),
                                                    $('<td style="text-align: center;"><a onclick="seleccionarCaso(\'' + item.cNomcaso + '\', \'' + item.cCodigocaso.toString() + '\')"><span class="glyphicon glyphicon-share" data-dismiss="modal" aria-label="Close" style="font-size:1.5em" /></a></td>')
                                                    );
                                            $('#idDatatableCaso tr:last').after($tr);
                                        });
                                        $('#idTotal').text(responseText.total.toString());
                                    }
                                });
                            }
                            if (parseInt($('#nroPaginaCaso').val()) < 3) {
                                $('#idPaginatorOldCaso').css('display', 'none');
                            } else {
                                $('#idPaginatorOldCaso').css('display', '');
                            }
                        });
                        /************************MODAL CASO******************************/

                        function buscarActores() {
                                if($('#selectAnho').val().length === 0) {
                                    alertar('Debe ingresar el año de registro');
                                    return false;
                                }
                                $("#idForm").submit();
                            }

                        function seleccionarCaso(nombre, codigo) {
                            $("#nomCaso").val(nombre);
                            $("#codigoCaso").val(codigo);
                        }

                        function seleccionarActor(nombre, codigo) {
                            $("#nomActor").val(nombre);
                            $("#codigoActor").val(codigo);
                        }

                        function isEmpty(obj) {
                            for (var prop in obj) {
                                if (obj.hasOwnProperty(prop))
                                    return false;
                            }
                            return JSON.stringify(obj) === JSON.stringify({});
                        }
                        function alertar(msg) {
                            $("#idAlerta").modal('show');
                            $("#mensaje").html(msg);
                        }
                    </script>
                </div>
            </div>
            <div class="modal fade" id="idAlerta">
                <div class="modal-dialog modal-sm" >
                    <div class="modal-content" style=" background: #FCF8E3">
                        <div class="modal-header" style="padding: 5px;">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span style="color: black; font-size: large" ></span></button>
                            <h4 style="color: #8A6D3B"><b>¡Alerta!</b></h4>
                        </div>
                        <div style="background: white;box-sizing: border-box;" >
                            <div class="modal-body" style="padding: 7px;">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="padding-right: 8px">
                                            <img style="width: 30px" src="imagenes/warning.png" />
                                        </td>
                                        <td>
                                            <b><div id="mensaje" style="font-size: 1.4em" class="text-warning"></div></b>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4>Contacto</h4>
                    <p style="font-size: 110%">Si tienes información adicional sobre algún conflicto social que se encuentre registrado en el reporte y deseas compartir esa información con nosotros, o si conoces de algún conflicto social que podría ser atendido por la Defensoría del Pueblo, tienes varias maneras de comunicarte con nosotros:</p>
                    <ul>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-arrow-right tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%">Llamando a la línea gratuita: <span class="tazul">0800-15170</span></div>
                        </li>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-arrow-right tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%">Acercándote a la oficina defensorial de tu región</div>
                        </li>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-arrow-right tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%">Escribiéndonos un correo a: <a href="mailto:conflictos@defensoria.gob.pe">conflictos@defensoria.gob.pe</a></div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4>Boletín Conflictos al Día</h4>
                    <ul>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-download tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%"><span class="tespecial">Nº 1735</span><br>
                                Miércoles, 22 de Julio de 2015</div>
                        </li>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-download tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%"><span class="tespecial">Nº 1735</span><br>
                                Miércoles, 22 de Julio de 2015</div>
                        </li>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-download tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%"><span class="tespecial">Nº 1735</span><br>
                                Miércoles, 22 de Julio de 2015</div>
                        </li>
                        <li>
                            <div class="extcolunm1"><i class="fa fa-download tazul"></i></div>
                            <div class="extcolunm2" style="font-size: 90%"><span class="tespecial">Nº 1735</span><br>
                                Miércoles, 22 de Julio de 2015</div>
                        </li>
                    </ul>
                    <p class="link-ver"><a target="_blank" href="http://www.defensoria.gob.pe/temas.php?des=3#r"><i class="fa fa-arrow-right"></i>  Ver todos</a></p>
                </div>
                <div class="col-md-4">
                    <h4>Suscríbete al boletín</h4>
                    <form id="form">
                        <div class="input-group mb-md">
                            <span class="input-group-addon" style="font-size: 10px">
                                <i class="fa fa-user"></i>
                            </span>
                            <input type="text" class="form-control simcoText" placeholder="Nombre" required>
                        </div>
                        <div class="input-group mb-md">
                            <span class="input-group-addon" style="font-size: 10px">
                                <i class="fa fa-envelope"></i>
                            </span>
                            <input type="text" class="form-control simcoText" placeholder="Correo electrónico" required>
                        </div>
                        <div class="input-group mb-md">
                            <span class="input-group-addon" style="font-size: 10px">
                                <i class="fa fa-building"></i>
                            </span>
                            <input type="text" class="form-control simcoText" placeholder="Institución">
                        </div>
                        <div class="input-group mb-md">
                            <span class="input-group-addon" style="font-size: 10px">
                                <i class="fa fa-briefcase"></i>
                            </span>
                            <input type="text" class="form-control simcoText" placeholder="Departamento">
                        </div>            
                        <button class="btn btn-primary simcoButton">Enviar</button>
                    </form>
                </div>
            </div>

            <div>
                <div class="col-md-12">
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 60%">
                                <p>Adjuntía para la Prevención de Conflictos Sociales y la Gobernabilidad, Defensoría del Pueblo.</p>
                            </td>
                            <td style="text-align: right">
                                <img src="imagenes/giz.png" height="100" width="250"/>
                            </td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>    
    </footer>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="js/paginador.js" type="text/javascript"></script>
    <style>
        .ocultar{
            display: none;
        }
        .pagina1{
            border-radius: 30px 0px 0px 30px;
            padding: 5px 10px;
        }
        .pagina2{
            border-radius: 0px 0px 0px 0px;
            padding: 5px 10px;
        }
        .pagina3{
            border-radius: 0px 30px 30px 0px;
            padding: 5px 10px;
        }
    </style>
    <script type="text/javascript">
                var p = new Paginador(
                        document.getElementById('paginador'),
                        document.getElementById('tblDatos'),
                        25
                        );
                p.Mostrar();

                $(document).ready(function () {
                    $('.simcoPaginado1').addClass('pagina1 simcoButton');
                    $('.simcoPaginado2').addClass('pagina2 simcoButton');
                    $('.simcoPaginado3').addClass('pagina3 simcoButton');

                    if ($('#tblDatos >tbody >tr').length === 0) {
                        $("#idTablaPaginado").addClass("ocultar");
                        $("#idDescargas").addClass("ocultar");

                    } else {
                        $("#idTablaPaginado").removeClass("ocultar");
                        $("#idDescargas").removeClass("ocultar");
                    }
                });
    </script>
</body>
</html>