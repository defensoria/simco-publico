<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="css/timeline.css" rel="stylesheet">

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
        <form id="idForm" method="post" action="reporteSimcoVictima">
            <div class="container">
                <div role="tabpanel" class="tab-pane active" >
                    <div class="chat-panel panel panel-default">
                        <div class="panel-heading">
                            <i style="font-size: 2em" class="fa fa-book fa-fw"></i> 
                            <span style="font-size: 2em">Ficha del caso</span>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 50%">
                                                <span style="color: #007ACC; font-size: 1.7em; font-weight: bold">Detalles del caso </span>
                                            </td>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="list-group" >

                                                    <a href="#" class="list-group-item"style="color: black">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Nombre del Caso:</span>
                                                        <span class="pull-right  text-muted" style="font-size: 1.3em; color: black"><em><%=request.getAttribute("nombreCaso")%></em>
                                                        </span>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Estado:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("estado")%></em>
                                                        </span>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Fase:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("fase")%></em>
                                                        </span>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Región princial:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("region")%></em>
                                                        </span>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Provincia principal:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("provincia")%></em>
                                                        </span>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Distrito principal:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("distrito")%></em>
                                                        </span>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Tipología:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("tipologia")%></em>
                                                        </span>
                                                    </a>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <i class="fa fa-list fa-fw"></i> 
                                                        <span style="font-size: 1.3em; color: black">Tipo actividad:</span>
                                                        <span style="font-size: 1.3em; color: black" class="pull-right text-muted"><em><%=request.getAttribute("tipoActividad")%></em>
                                                        </span>
                                                    </a>

                                                </div>
                                            </td>
                                        </tr>
                                    </table>

                                </div>
                                <div class="col-md-6">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 50%">
                                                <span style="color: #007ACC; font-size: 1.7em; font-weight: bold">Actores involucrados: </span>
                                            </td>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="panel panel-default">
                                                    <div class="list-group">
                                                        <c:forEach var="actor" items="${listaActores}">
                                                            <a href="#" class="list-group-item">
                                                                <i class="fa fa-user fa-fw"></i> 
                                                                <span style="font-size: 1em; color: black">${actor.nombreActor}</span>
                                                                <span  style="font-size: 1.3em; color: black" class="pull-right text-muted"><em>${actor.tipoActor}</em>
                                                                </span>
                                                            </a>
                                                        </c:forEach>
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <br/><br/><br/>
                                </div>       
                                <div class="col-md-12">
                                    <span style="color: #007ACC; font-size: 1.7em; font-weight: bold">Línea de tiempo del caso </span>

                                    <table style="width:100%">
                                        <tr>
                                            <td style="font-size:1.5em;width:30%">
                                                <span class="text-comun" style="color: black;font-weight: bold">Registrado:</span>
                                                <span style="color: black;font-weight: bold"><%=request.getAttribute("fechaPublicacion")%></span>
                                            </td>
                                            <td style="width:20%"></td>
                                            <td style="width:50%">
                                                <style>
                                                    span.red {

                                                        border-radius: 0.8em;
                                                        -moz-border-radius: 0.8em;
                                                        -webkit-border-radius: 0.8em;
                                                        color: #ffffff;
                                                        display: inline-block;
                                                        font-weight: bold;
                                                        line-height: 1.6em;
                                                        margin-right: 15px;
                                                        text-align: center;
                                                        width: 1.6em; 
                                                    }
                                                </style>
                                                <span style="background: red;" class="red"><%=request.getAttribute("contadorAcontecimientoPorCaso")%></span>
                                                <span style="font-size:1.4em; color: black; font-weight: bold" class="text-comun"> acontecimientos</span>
                                                <br/>
                                                <span style="background: green;" class="red"><%=request.getAttribute("contadorActuacionDefensorialPorCaso")%></span>
                                                <span style="font-size:1.4em; color: black; font-weight: bold" class="text-comun"> actuaciones defensoriales</span>
                                            </td>
                                        </tr>
                                    </table>
                                    <br/><br/><br/>
                                    <div class="timeline-centered" style="width: 70%">                                
                                        <c:forEach var="actividad" items="${listaActividades}">
                                            <article class="timeline-entry">

                                                <div class="timeline-entry-inner">
                                                    <c:if test="${actividad.tipoActividad == 'AC'}">
                                                        <div class="timeline-icon bg-secondary">
                                                            <i class="entypo-suitcase"></i>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${actividad.tipoActividad == 'AD'}">
                                                        <div class="timeline-icon bg-success">
                                                            <i class="entypo-feather"></i>
                                                        </div>
                                                    </c:if>
                                                    <div class="timeline-label">
                                                        <table style="width:100%">
                                                            <tr>
                                                                <td style="padding-bottom: 10px">
                                                                    
                                                                </td>
                                                                <td style="font-size: 1.4em; padding-bottom: 10px">
                                                                    <c:if test="${actividad.tipoActividad == 'AC'}">
                                                                        <span style="color:black"><b>Acontecimiento: </b></span>
                                                                    </c:if>
                                                                    <c:if test="${actividad.tipoActividad == 'AD'}">
                                                                        <span style="color:black"><b>Actuación defensorial: </b></span>
                                                                    </c:if>
                                                                    <span style="color:black; font-weight: bold" >${actividad.nombreActividad}</span>
                                                                    <br/>
                                                                    <small class="pull-left text-muted" style="color:black">
                                                                        <i class="fa fa-clock-o fa-fw"></i>
                                                                        <span style="color:black">Fecha de la actividad: </span><span style="color:black">${actividad.fechaInicio}</span> 
                                                                    </small>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table style="width: 100%">
                                                            <c:if test="${actividad.ruta != ''}">
                                                                         <tr>
                                                                <td style="width: 45%; vertical-align: top">
                                                                    
                                                                        <img class="img-thumbnail lightbox" src="/simcoPublic/DownloadFileServlet?fileName=${actividad.ruta}" height="50%" width="80%"/>
                                                                    
                                                                </td>
                                                                <td>
                                                                    <p style="color:black; text-align: justify; font-size: 1.2em;  vertical-align: top;">Detalle: ${actividad.descripcion}</p>
                                                                </td>
                                                            </tr>
                                                                    </c:if>
                                                            <c:if test="${actividad.ruta == ''}">
                                                                         <tr>
                                                                             <td colspan="2">
                                                                    <p style="color:black; text-align: justify; font-size: 1.2em;  vertical-align: top;">Detalle: ${actividad.descripcion}</p>
                                                                </td>
                                                            </tr>
                                                                    </c:if>
                                                           
                                                        </table>
                                                    </div>
                                                </div>
                                            </article>
                                        </c:forEach>
                                    </div>  
                                </div>                         
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
</body>
</html>