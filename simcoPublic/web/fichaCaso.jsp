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
        <form id="idForm" method="post" action="reporteSimcoVictima">
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
                                                <h2 class="titlecat1">Linea de tiempo del Caso</h2>
                                            </td>
                                            <td style="text-align: right">
                                                <h1><%=request.getAttribute("idCodigoCaso")%></h1>
                                            </td>
                                        </tr>
                                    </table>
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
                </div>
            </div>
        </form>
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4>Contacto</h4>
                    <span style="font-size: 90%">Si tienes información adicional sobre algún conflicto social que se encuentre registrado en el reporte y deseas compartir esa información con nosotros, o si conoces de algún conflicto social que podría ser atendido por la Defensoría del Pueblo, tienes varias maneras de comunicarte con nosotros:</span>
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