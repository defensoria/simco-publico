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
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="bootstrap/css/morris.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.js"></script>
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
                        <li><a href="publicaciones.jsp">Publicaciones</a></li>
                        <li><a href="#">Sobre el SIMCO</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <section>
        <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        
        <form id="idForm" method="post" action="reporteSimcoInicio">
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
                                
                                <div class="central_int" style="float:left;">
<div id="modulo_izq_st_defenor">
  <div id="temas_box_space"></div>
  <div class="titulo_trebu-m temas_menu_box_titu">
    <div style="float:left"><img src="imagenes/doc_flder_48.png" alt="Logito" width="48" height="48"></div>
    <div class="temas_menu_titu"> Documentos DP</div>
  </div>
<div class="temas" id="linea_BoxC-txt">
		 
		    <div class="boton_defensor">
		      <div> <a href="#r" id="lninformes" title="informes Defensoriales">Informes Defensoriales</a></div></div>
		    		    
		     		 
		      <div class="boton_defensor"><div>Notas de prensa:  <br>
		   <ul> 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2016" title="notas de prensa 2016">2016</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2015" title="notas de prensa 2015">2015</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2014" title="notas de prensa 2014">2014</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2013" title="notas de prensa 2013">2013</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2012" title="notas de prensa 2012">2012</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2011" title="notas de prensa 2011">2011</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2010" title="notas de prensa 2010">2010</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2009" title="notas de prensa 2009">2009</a></li>
                 		  <li style="float:left; width:40px; list-style:none"> <a href="#r" class="rojo" id="lnnotas2008" title="notas de prensa 2008">2008</a></li>
                 </ul></div></div>
	               <div class="boton_defensor">          
						<div>Reporte Mensual<br>
										<a href="#r" class="rojo" id="lnreporte2016" title="Reportes Mensuales 2016">2016</a>
					 				<a href="#r" class="rojo" id="lnreporte2015" title="Reportes Mensuales 2015">2015</a>
					 				<a href="#r" class="rojo" id="lnreporte2014" title="Reportes Mensuales 2014">2014</a>
					 				<a href="#r" class="rojo" id="lnreporte2013" title="Reportes Mensuales 2013">2013</a>
					 				<a href="#r" class="rojo" id="lnreporte2012" title="Reportes Mensuales 2012">2012</a>
					 				<a href="#r" class="rojo" id="lnreporte2011" title="Reportes Mensuales 2011">2011</a>
					 				<a href="#r" class="rojo" id="lnreporte2010" title="Reportes Mensuales 2010">2010</a>
					 				<a href="#r" class="rojo" id="lnreporte2009" title="Reportes Mensuales 2009">2009</a>
					 				<a href="#r" class="rojo" id="lnreporte2008" title="Reportes Mensuales 2008">2008</a>
					 				<a href="#r" class="rojo" id="lnreporte2007" title="Reportes Mensuales 2007">2007</a>
					 				<a href="#r" class="rojo" id="lnreporte2006" title="Reportes Mensuales 2006">2006</a>
					 <a href="modules/Downloads/conflictos/conflictos_sociales2005.zip" class="rojo" title="Reportes Mensuales 2005">2005</a>&nbsp;<a href="modules/Downloads/conflictos/conflictos_sociales2004.zip" class="rojo" title="Reportes Mensuales 2004">2004</a>
					</div></div>
                                      <div class="boton_defensor">          
					 <div><a href="#r" id="lnboletin" title="Ir a Boletines conflictos al dia">Boletín Conflictos al día</a>					 </div></div>
                               <div class="boton_defensor">          
		            <div><a href="#r" id="lnotros" title="Otras publicaciones"> Otras publicaciones</a></div></div>
                                          		   <div class="boton_defensor">
        <div><a href="#r" id="lnblog" title="Artciulos del blog">Desde el blog</a></div></div> 			
             <div class="titulo_trebu-m temas_menu_box_titu2"><div style="float:left"><img src="imagenes/link-gyc-48.png" alt="Logito" width="48" height="48"> </div>
             <div class="temas_menu_titu">Enlaces</div>
        </div>
            
        <div class="boton_defensor"><div><a href="portal-noticias.php">
              
Portal de noticias</a></div>
        </div>    		   <div class="boton_defensor">
   		     <div> <a href="#r" id="lnenlaces" title="Enlaces de interes">Enlaces de Interés&nbsp;</a></div></div>             
          
             
             
  </div>
</div>
<div id="modulo_der_st_temas"><a name="r"></a>
                <div class="temas_cambio" style="display: none;" id="informes">
               <div class="titulo_medio linea_enlaces_i-60-temas">Informes Defensoriales</div>
    
                <div class="linea_txt_inf-temas">
                  <div class="scroll">
                 
			  	              
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2012</strong></div> 
	
 
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Violencia en los conflictos sociales<br>
								  <span class="textos_azul_pq">Informe Defensorial Nº 156</span>
							    </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/defensoriales/informe-156.pdf" target="_blank" title="Abrir pdf"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								                                       
							
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2002</strong></div> 
	
 
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">La defensoría del Pueblo y los derechos territoriales de las comunidades nativas. El conflicto territorial en la comunidad nativa Naranjos<br>
								  <span class="textos_azul_pq">Informe Defensorial Nº 68</span>
							    </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/defensoriales/informe_68.pdf" target="_blank" title="Abrir pdf"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								                                       
							
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>1999</strong></div> 
	
 
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Situación de los derechos humanos en Jaén, Bagua y San Ignacio.<br>
								  <span class="textos_azul_pq">Informe Defensorial Nº 31</span>
							    </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/defensoriales/informe_31.pdf" target="_blank" title="Abrir pdf"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								                                       
							
								</div>
							  </div>
							
							  
        
    </div></div></div> 
	  
    
       
    
                <div class="temas_cambio" id="otros" style="display: none;">
                <div class="titulo_medio linea_enlaces_i-60-temas"> Otras publicaciones</div>
              
                <div class="linea_txt_inf-temas">
                  <div class="scroll">
			  	              
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2016</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento en relación al conflicto en el distrito de Sondorillo - Piura<br>
								  <span class="textos_azul_pq">Pronunciamiento N° 17</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/17.--Conflicto-en-Piura.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento: La Defensoría del Pueblo invoca a retomar el diálogo al Gobierno y a las organizaciones indígenas de Loreto.<br>
								  <span class="textos_azul_pq">Pronunciamiento Nº 13</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-Saramurillo.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento N° 06/DP/2016: Frente a la detención del jefe de la Oficina Defensorial de Huánuco, abogado Pier Paolo Marzo Rodríguez, ocurrida el día de hoy, por miembros de la Comisaría de Amarilis.<br>
								  <span class="textos_azul_pq">Pronunciamiento N° 06/DP/2016</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/06.-Detienen-a-representante-defensorial-en-Huanuco-12-09-2016.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento N°01/DP/2016: Defensoría del Pueblo solicita inmediata liberación de personas retenidas en comunidad de Mayuriaga.<br>
								  <span class="textos_azul_pq">Pronunciamiento N°01/DP/2016</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/01.-Retencion-en-C.N.-Muyuriaga.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2015</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido al Presidente del Consejo de Ministros, Pedro Cateriano, en relación al paro regional convocado por la Alianza de Federaciones de Madre de Dios.<br>
								  <span class="textos_azul_pq">Oficio N° 672-2015/DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-672-2015-DP-a-PCM-Paro-en-Madre-de-Dios.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Mecanismo de mediación intercultural 2015<br>
								  <span class="textos_azul_pq">Mecanismo de mediación intercultural 2015</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Mecanismo-de-mediacion-intercultural-DP-2015.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos Sociales 139 - septiembre 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-139-1.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos Sociales 137 - julio 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-137.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos Sociales 136 - junio 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-136.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos 135 - mayo 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-135.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos 132 - febrero 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-132.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos 130 - diciembre 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-130.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido al Presidente de la República, Ollanta Humala Tasso, en relación a la situación de las comunidades de las cuencas de los ríos Tigre, Corrientes, Pastaza y Marañón, en Loreto.<br>
								  <span class="textos_azul_pq">Oficio N° 090-2015-DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-090-2015-DP--Conflicto-en-Loreto.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Conflictos sociales y recursos hídricos<br>
								  <span class="textos_azul_pq">Informe de Adjuntía N° 001-2015</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/varios/2015/IA-Conflictos-por-Recursos-Hidricos.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos Sociales 138 - agosto 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-138.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento en relación a los últimos acontecimientos ocurridos en el caso del Lote 192.<br>
								  <span class="textos_azul_pq">Pronunciamiento 16-09-15</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-Lote-192-16-9-15.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido al Septimo Juzgado Especializado Civil de Chiclayo en relación a los derechos laborales de los trabajadores de la empresa agroindustrial Tumán. <br>
								  <span class="textos_azul_pq">Oficio N° 629-2015-DP/OD-LAMB</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-629-2015-DP-OD-LAMB.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento en relación a los hechos de violencia ocurridos en La Oroya.<br>
								  <span class="textos_azul_pq">Pronunciamiento 12-08-15</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-violencia-en-La-Oroya-12-8-15.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Carta enviada al Secretario General del Sindicato Unificado de Trabajadores Azucareros de la Empresa Agroindustrial Pomalca en relación a la implementación de los acuerdos entre trabajadores y la empresa en mención.<br>
								  <span class="textos_azul_pq">Carta N° 0836-2015-DP/OD-LAMB</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Carta-0836-2015-DP-OD-LAMB-Pomalca.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento en relación a los hechos de violencia ocurridos en la provincia de Islay en Arequipa.<br>
								  <span class="textos_azul_pq">Pronunciamiento 05-05-15</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Proyecto-Tia-Maria-05.05.15.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento Proyecto Las Bambas 28-09-15<br>
								  <span class="textos_azul_pq">Pronunciamiento</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento---Protestas-contra-el-Proyecto-Las-Bambas--28-9-15.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento sobre el Lote 192.<br>
								  <span class="textos_azul_pq">Pronunciamiento</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-28-08-15---Lote-192.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía conflictos sociales abril - 2015<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-reporte-134.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento en torno a las protestas generadas en Loreto por el Lote 192<br>
								  <span class="textos_azul_pq">Pronunciamiento</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-02-09-15.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2014</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido al Presidente del Consejo de Ministros, René Cornejo Díaz, en relación a los sobrevivientes y pensionistas de los sucesos de Bagua.<br>
								  <span class="textos_azul_pq">Oficio N° 0246-2014-DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-0246-2014-DP.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido a la Presidencia de Consejo de Ministros en relación al conflicto social existente en Madre de Dios.<br>
								  <span class="textos_azul_pq">Oficio N° 0151-2014/DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-0151-2014-DP.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - julio 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-125.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía conflictos sociales septiembre - 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-127.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - agosto 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-126.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - mayo 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-123.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - marzo 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-121.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - febrero 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-Conflictos-N-120.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - diciembre 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-118.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Pronunciamiento en relación a las movilizaciones ocurridas en Cajamarca contra el proyecto Conga.<br>
								  <span class="textos_azul_pq">Pronunciamiento 22-01-14</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-movilizaciones-Cajamarca.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - abril 2014<br>
								  <span class="textos_azul_pq">Infografía: Estado de los conflictos sociales - abril 2014</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-ReportedeConflictos122.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - junio 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Reporte-Mensual-de-Conflictos-Sociales-N-124-2014.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - enero 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-119.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Comunicado sobre la privación de la libertad de un trabajador de la empresa Águila Dorada en la comunidad de Supayacu - Cajamarca<br>
								  <span class="textos_azul_pq">Comunicado sobre lo ocurrido en la comunidad de Supayacu</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Comunicado-comunidad-de-Supayacu-Cajamarca.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Reporte de hechos de violencia durante el proceso electoral al 9 de octubre de 2014.<br>
								  <span class="textos_azul_pq">Reporte - Supervisión electoral</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/REPORTE-HECHOS-VIOLENCIA---Sup.-Electoral.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Carta del Defensor del Pueblo (e), Eduardo Vega, enviada al Diario El Comercio con relación a su editorial sobre el conflicto de Bagua.<br>
								  <span class="textos_azul_pq">Carta N° 058-2014/DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Carta-058-14-DP.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido a la Corte Superior de Justicia de Amazonas en relación al inicio del proceso penal por los sucesos ocurridos en la denominada “Curva del Diablo”, Bagua.<br>
								  <span class="textos_azul_pq">Oficio N° 0144-2014/DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-0144-2014-DP.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía Reporte de Conflictos 128 - octubre 2014<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-128.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2013</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Intervención humanitaria en situaciones de violencia en conflictos sociales<br>
								  <span class="textos_azul_pq">Informe de Adjuntía Nº 001-2013-DP/APCSG</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/varios/2013/Informe-Adjuntia-Intervencion-Humanitaria.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - mayo 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-conflictos-111.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - julio 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-reporte-113.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - setiembre 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte-de-Conflictos-115.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Comunicado del Obispado de Chiclayo y la Defensoría del Pueblo a la opinión pública sobre los actos de violencia ocurridos en la ciudad de Pucalá.<br>
								  <span class="textos_azul_pq">Comunicado del Obispado de Chiclayo y Defensoría del Pueblo</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Comunicado-Pucala-Obispado-de-Chiclayo-y-DP.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido al señor Juan Jiménez Mayor, Presidente del Consejo de Ministros ante los reclamos por las actividades de exploración de la empresa Cañariaco Copper Perú S.A.<br>
								  <span class="textos_azul_pq">Oficio N°0179-2013-DP</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/oficio-0179-2013-dp.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - noviembre 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-Reporte--Conflictos-Sociales-117.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Oficio dirigido al Tercer Juzgado Especializado Civil de Chiclayo relacionado al cumplimiento de la sentencia de convocar a junta de accionistas en el caso de la empresa Agro Pucalá S.A.A.<br>
								  <span class="textos_azul_pq">Oficio N° 1307-2013-DP/OD-LAMB</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Oficio-1307-2013-DP-OD-LAMB.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - febrero 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-conflictos-febrero-2013.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - marzo 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-conflictos-marzo-2013.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales -abril 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-conflictos-abril-2013.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - junio 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-reporte-112.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - agosto 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/infografia-reporte-114.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Infografía: Estado de los conflictos sociales - octubre 2013<br>
								  <span class="textos_azul_pq">Infografía</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Infografia-conflictos-116.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2012</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Ante la convocatoria realizada por diversas organizaciones e instituciones de Cajamarca, a un paro regional indefinido a partir del día 31 de mayo del 2012, en contra del proyecto minero Conga, y el desplazamiento de personal policial y militar a la zona.<br>
								  <span class="textos_azul_pq">Pronunciamiento 30-05-12</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/Pronunciamiento-30-5-12.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Presidente de la Conferencia Episcopal Peruana y Defensor del Pueblo (e) invocan a analizar el peritaje y restablecer el diálogo en el caso Conga.<br>
								  <span class="textos_azul_pq">Pronunciamiento 09-04-12</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/documentos/pronunciamiento-09-04-12.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2009</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Actuaciones Humanitarias realizadas por la Defensoría del Pueblo con ocasión de los hechos ocurridos el 5 de junio del 2009, en las provincias de Utcubamba y Bagua, región Amazonas, en el contexto del paro amazónico<br>
								  <span class="textos_azul_pq">Informe de Adjuntía Nº 006-2009-DP/ADHPD</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/varios/2009/informe-adjuntia-006-2009-DP-DHPD.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2007</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Los conflictos socioambientales por actividades extractivas en el Perú. Abril 2007.<br>
								  <span class="textos_azul_pq">Informe Extraordinario</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/extraordinarios/inf_extraordinario_04_07.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							 							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Nota  Aclaratoria sobre Informe Extraordinario Los conflictos socioambientales por actividades extractivas en el Perú.<br>
								  <span class="textos_azul_pq">Nota  Aclaratoria</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/extraordinarios/nota_aclaratoria_04_07.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
                  
                <div class="textos_azul_anio linea_informes_sb-titu2"><strong>2005</strong></div>
                   							  <div class="textos_informes linea_informes_item2">
								<div class="textos_informes linea_informes_txtito2">Ante todo, el diálogo. Defensoría del Pueblo y conflictos sociales y políticos<br>
								  <span class="textos_azul_pq">Ante todo, el diálogo. Defensoría del Pueblo y conflictos sociales y políticos</span>
								  </div>
								  
							  <div class="textos_informes linea_informes_dwload2"><a href="/modules/Downloads/informes/varios/2005/conflictos_2005.pdf" target="_blank"><img src="imagenes/ico-pdf-plomo.gif" alt="ver pdf" style="border:none" class="ico_dwload" width="16" height="16"></a>
								  								
								</div>
							  </div>
							
							  
    </div></div></div> 
	  


 
                 <div class="temas_cambio" id="notas2016" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2016</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-237-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Loreto: La Defensoría hace un llamado para restablecer las relaciones entre autoridades y población de Lagunas <br>
                         <span class="textos_azul_pq">21.12.2016 - Nota de Prensa 237/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-229-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 213 conflictos sociales durante el mes de noviembre <br>
                         <span class="textos_azul_pq">15.12.2016 - Nota de Prensa 229/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-206-16.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Fueron liberados ciudadanos retenidos en la zona de El Cenepa. <br>
                         <span class="textos_azul_pq">21.11.2016 - Nota de Prensa 206/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-205-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales, la mayoría por problemas socioambientales. <br>
                         <span class="textos_azul_pq">21.11.2016 - Nota de Prensa 205/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-189-2016.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ucayali: Defensoría del Pueblo rechaza hechos de violencia en Curimaná y lamenta muerte de dos ciudadanos. <br>
                         <span class="textos_azul_pq">02.11.2016 - Nota de Prensa 189/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-159-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo expresó su rechazo a violencia registrada en Moyobamba. <br>
                         <span class="textos_azul_pq">22.09.2016 - Nota de Prensa 159/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-131-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 211 conflictos sociales a julio de este año. <br>
                         <span class="textos_azul_pq">10.08.2016 - Nota de Prensa 131/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-112-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales durante el mes de junio. <br>
                         <span class="textos_azul_pq">10.07.2016 - Nota de Prensa 112/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-092-16.2.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo lamenta el fallecimiento de dos policías en Usquil (Otuzco-La Libertad). <br>
                         <span class="textos_azul_pq">10.06.2016 - Nota de Prensa 092/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-089-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales durante el mes de mayo. <br>
                         <span class="textos_azul_pq">07.06.2016 - Nota de Prensa 089/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-075-2016.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Loreto: Defensoría del Pueblo invoca al cumplimiento de acuerdos suscritos con las comunidades de Belén y Sión de Plantanoyacu. <br>
                         <span class="textos_azul_pq">12.05.2016 - Nota de Prensa 075/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-073-2016.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 209 conflictos sociales durante el mes de abril. <br>
                         <span class="textos_azul_pq">11.05.2016 - Nota de Prensa 073/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-057-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 208 conflictos sociales durante el mes de marzo. <br>
                         <span class="textos_azul_pq">09.04.2016 - Nota de Prensa 057/OCII/DP/216</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-042-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo exige conformar una mesa de diálogo para atender los reclamos de la población de Ucayali. <br>
                         <span class="textos_azul_pq">15.03.2016 - Nota de Prensa 042/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-016-16.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 211 conflictos sociales durante el mes de enero. <br>
                         <span class="textos_azul_pq">10.02.2016 - Nota de Prensa 016/OCII/DP/2016</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2016/NP-002-16.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 211 conflictos sociales durante el mes de diciembre. <br>
                         <span class="textos_azul_pq">10.01.2016 - Nota de Prensa 002/OCII/DP/2016</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2015" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2015</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-266-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 215 conflictos sociales durante el mes de noviembre. <br>
                         <span class="textos_azul_pq">09.12.2015 - Nota de Prensa 266/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-264-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca a restablecer el diálogo y la paz social en Madre de Dios. <br>
                         <span class="textos_azul_pq">02.12.2015 - Nota de Prensa 264/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-258-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo expuso los resultados de la investigación sobre 153 conflictos sociales vinculados a los recursos hídricos, registrados entre el 2011 y el 2014. <br>
                         <span class="textos_azul_pq">26.11.2015 - Nota de Prensa 258/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-256-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo lanza microprograma sobre conflictos sociales en Youtube. <br>
                         <span class="textos_azul_pq">24.11.2015 - Nota de Prensa 256/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-247-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría invoca a hacer los máximos esfuerzos para evitar actos de violencia en paro en Madre de Dios. <br>
                         <span class="textos_azul_pq">17.11.2015 - Nota de Prensa 247/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-241-15.2.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 214 conflictos sociales durante el mes de octubre. <br>
                         <span class="textos_azul_pq">09.11.2015 - Nota de Prensa 241/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-221-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 214 conflictos sociales durante el mes de septiembre. <br>
                         <span class="textos_azul_pq">08.10.2015 - Nota de Prensa 221/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-204-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Lambayeque: Defensoría del Pueblo saluda implementación de acuerdos entre trabajadores y Empresa Agroindustrial Pomalca. <br>
                         <span class="textos_azul_pq">24.09.2015 - Nota de Prensa 204/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-170-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 209 conflictos sociales durante el mes de julio. <br>
                         <span class="textos_azul_pq">12.08.2015 - Nota de Prensa 170/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-142-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 210 conflictos sociales durante el mes de junio. <br>
                         <span class="textos_azul_pq">07.07.2015 - Nota de Prensa 142/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-130-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Apurímac: Defensoría del Pueblo exhorta a la calma y al diálogo para solucionar conflicto en Universidad Nacional Micaela Bastidas. <br>
                         <span class="textos_azul_pq">24.06.2015 - Nota de Prensa 130/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-110-2015.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 211 conflictos sociales durante el mes de mayo. <br>
                         <span class="textos_azul_pq">05.06.2015 - Nota de Prensa 110/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-104-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Lambayeque: Defensoría del Pueblo exhorta a garantizar derechos laborales de trabajadores de empresa agroindustrial Tumán. <br>
                         <span class="textos_azul_pq">29.05.2015 - Nota de Prensa 104/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-103-2015.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca a la no violencia en paro macroregional. <br>
                         <span class="textos_azul_pq">26.05.2015 - Nota de Prensa 103/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-089-15.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 208 conflictos sociales durante el mes de abril. <br>
                         <span class="textos_azul_pq">12.05.2015 - Nota de Prensa 089/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-087-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo exige investigación por muerte de policía que cumplía labores para reestablecer orden. <br>
                         <span class="textos_azul_pq">09.05.2015 - Nota de Prensa 087/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-084-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo convoca a diálogo por caso Tía María. <br>
                         <span class="textos_azul_pq">06.05.2015 - Nota de Prensa 084/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-078-15.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo pide garantías para la población y no postergar más el diálogo en Islay. <br>
                         <span class="textos_azul_pq">28.04.2015 - Nota de Prensa 078/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-074-2015.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo llama a la calma y al respeto a la vida e integridad de civiles y policías en Islay. <br>
                         <span class="textos_azul_pq">23.04.2015 - Nota de Prensa 074/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-071-2015.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Conflicto en rechazo al proyecto “Tía María” requiere de un diálogo técnico y normalizar las actividades en Islay. <br>
                         <span class="textos_azul_pq">13.04.2015 - Nota de Prensa 071/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-067-2015.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 211 conflictos sociales durante el mes de marzo. <br>
                         <span class="textos_azul_pq">08.04.2015 - Nota de Prensa 067/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-066-15.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo invoca al diálogo de autoridades y organizaciones sociales en caso “Tía María”. <br>
                         <span class="textos_azul_pq">07.04.2015 - Nota de Prensa 066/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-061-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo saluda acuerdos para el adecuado traslado de personas procesadas del penal de Moquegua. <br>
                         <span class="textos_azul_pq">27.03.2015 - Nota de Prensa 061/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-032-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo invoca a la calma y a retomar el diálogo en Pichanaki. <br>
                         <span class="textos_azul_pq">11.02.2015 - Nota de Prensa 032/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-025-2015.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo invoca al Ejecutivo a redoblar esfuerzos para restablecer el diálogo con pueblos indígenas de Loreto. <br>
                         <span class="textos_azul_pq">05.02.2015 - Nota de Prensa 025/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-024-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 210 conflictos sociales durante el mes de enero. <br>
                         <span class="textos_azul_pq">04.02.2015 - Nota de Prensa 024/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-017-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo pide a Fiscalía investigar muerte de policías en conflicto e invoca al diálogo a las partes. <br>
                         <span class="textos_azul_pq">27.01.2015 - Nota de Prensa 017/OCII/DP/2015</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2015/NP-004-15.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 210 conflictos sociales durante el mes de diciembre. <br>
                         <span class="textos_azul_pq">13.01.2015 - Nota de Prensa 004/OCII/DP/2015</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2014" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2014</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-239-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales durante el mes de noviembre. <br>
                         <span class="textos_azul_pq">11.12.2014 - Nota de Prensa 239/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-232-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo realizará monitoreo del proceso electoral para elegir autoridades regionales. <br>
                         <span class="textos_azul_pq">04.12.2014 - Nota de Prensa 232/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-218-2014.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 217 conflictos sociales durante el mes de octubre. <br>
                         <span class="textos_azul_pq">13.11.2014 - Nota de Prensa 218/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-201-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 201 conflictos sociales durante el mes de septiembre. <br>
                         <span class="textos_azul_pq">15.10.2014 - Nota de Prensa 201/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-199-14.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 119 hechos de violencia en el marco de las elecciones regionales y municipales. <br>
                         <span class="textos_azul_pq">10.10.2014 - Nota de Prensa 199/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-197-14.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 114 hechos de violencia durante las elecciones regionales y municipales del domingo 5 de octubre. <br>
                         <span class="textos_azul_pq">08.10.2014 - Nota de Prensa 197/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-195-14.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo condena actos de violencia y exhorta a la población a mantener la calma y esperar los resultados oficiales. <br>
                         <span class="textos_azul_pq">06.10.2014 - Nota de Prensa 195/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-173-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 205 conflictos sociales durante el mes de agosto. <br>
                         <span class="textos_azul_pq">11.09.2014 - Nota de Prensa 173/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-168-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo invoca a la calma y a extremar esfuerzos para establecer el diálogo entre autoridades y dirigentes de La Convención. <br>
                         <span class="textos_azul_pq">06.09.2014 - Nota de Prensa 168/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-163-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo lamenta muerte de estudiante en marco de protestas en Santa Teresa (Cusco) y pide exhaustiva investigación de los hechos. <br>
                         <span class="textos_azul_pq">02.09.2014 - Nota de Prensa 163/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-151-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo destaca resolución judicial que daría fin al conflicto en empresa de Pucalá. <br>
                         <span class="textos_azul_pq">14.08.2014 - Nota de Prensa 151/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-149-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 208 conflictos sociales durante el mes de julio. <br>
                         <span class="textos_azul_pq">13.08.2014 - Nota de Prensa 149/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-148-2014.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo recomienda al Poder Judicial fijar cronograma de interrogatorios en caso Bagua. <br>
                         <span class="textos_azul_pq">11.08.2014 - Nota de Prensa 148/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-131-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 214 conflictos sociales durante el mes de junio. <br>
                         <span class="textos_azul_pq">14.07.2014 - Nota de Prensa 131/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-127-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensorías del pueblo de Bolivia y Perú firman acuerdo de cooperación para proteger derechos de sus connacionales. <br>
                         <span class="textos_azul_pq">07.07.2014 - Nota de Prensa 127/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-114-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales durante el mes de mayo. <br>
                         <span class="textos_azul_pq">09.06.2014 - Nota de Prensa 114/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-110-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo recomienda ampliar beneficiarios del subsidio póstumo por fallecimiento de policías y militares. <br>
                         <span class="textos_azul_pq">05.06.2014 - Nota de Prensa 110/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-106-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo alerta que las tierras de las comunidades necesitan mayor protección del Estado. <br>
                         <span class="textos_azul_pq">04.06.2014 - Nota de Prensa 106/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-090.1-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo recomienda al Poder Ejecutivo fortalecer la implementación del derecho a la consulta previa. <br>
                         <span class="textos_azul_pq">18.05.2014 - Nota de Prensa 090/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-089-2014.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales durante el mes de abril. <br>
                         <span class="textos_azul_pq">15.05.2014 - Nota de Prensa 089/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-076.1-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo recomienda adoptar garantías que permitan el desarrollo adecuado del proceso penal por los hechos ocurridos en Bagua. <br>
                         <span class="textos_azul_pq">24.04.2014 - Nota de Prensa 076/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-072-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo invoca al Presidente del Consejo de Ministros a recibir a las autoridades de Madre de Dios. <br>
                         <span class="textos_azul_pq">16.04.2014 - Nota de Prensa 072/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-070-2014.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 211 conflictos sociales durante el mes de marzo. <br>
                         <span class="textos_azul_pq">14.04.2014 - Nota de Prensa 070/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-065-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca a las autoridades nacionales, regionales y dirigencias sociales de Madre de Dios a superar diferencias a través del diálogo. <br>
                         <span class="textos_azul_pq">09.04.2014 - Nota de Prensa 065/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-045-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 212 conflictos sociales durante el mes de febrero. <br>
                         <span class="textos_azul_pq">13.03.2014 - Nota de Prensa 045/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-031-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo exige liberación inmediata de ciudadano cautivo por comuneros de Supayacu. <br>
                         <span class="textos_azul_pq">12.02.2014 - Nota de Prensa 031/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-030-2014.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 213 conflictos sociales durante el primer mes de año 2014. <br>
                         <span class="textos_azul_pq">12.02.2014 - Nota de Prensa 030/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-020-14.1.jpg" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo reitera su rechazo a la utilización de niños, niñas y adolescentes en manifestaciones públicas. <br>
                         <span class="textos_azul_pq">29.01.2014 - Nota de Prensa 020/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-015-2014.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo pide a pobladores dejar de lado la violencia y que las discrepancias con el proyecto minero Conga se traten bajo procedimientos legales y mecanismos de diálogo. <br>
                         <span class="textos_azul_pq">22.01.2014 - Nota de Prensa 015/OCII/DP/2014</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2014/NP-009.1-14.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 216 conflictos sociales al mes de diciembre del 2013. <br>
                         <span class="textos_azul_pq">14.01.2014 - Nota de Prensa 009/OCII/DP/2014</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2013" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2013</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-199-13.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 221 conflictos sociales durante el mes de noviembre. <br>
                         <span class="textos_azul_pq">13.12.2013 - Nota de Prensa 199/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-183-2013.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 220 conflictos sociales durante el mes de octubre, entre activos y latentes. <br>
                         <span class="textos_azul_pq">14.11.2013 - Nota de Prensa 183/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-168-2013.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró siete nuevos conflictos sociales durante el mes de septiembre. <br>
                         <span class="textos_azul_pq">16.10.2013 - Nota de Prensa 168/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-144-13.1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 178 conflictos activos durante el mes de agosto. <br>
                         <span class="textos_azul_pq">13.09.2013 - Nota de Prensa 144/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-125-13.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 177 conflictos activos durante el mes de julio. <br>
                         <span class="textos_azul_pq">15.08.2013 - Nota de Prensa 125/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-113-2013.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 170 conflictos sociales activos durante el mes de junio. <br>
                         <span class="textos_azul_pq">12.07.2013 - Nota de Prensa 113/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-105-13.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 172 conflictos activos durante el mes de mayo. <br>
                         <span class="textos_azul_pq">12.06.2013 - Nota de Prensa 105/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-092-2013.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 175 conflictos activos durante el mes de abril. <br>
                         <span class="textos_azul_pq">13.05.2013 - Nota de Prensa 092/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-075-13.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Durante el mes de marzo, la Defensoría del Pueblo registró 167 conflictos activos. <br>
                         <span class="textos_azul_pq">10.04.2013 - Nota de Prensa 075/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-068-13.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo medió en la solución del conflicto que mantenían la comunidad de Picup con una empresa constructora. <br>
                         <span class="textos_azul_pq">27.03.2013 - Nota de Prensa 068/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-054-13-1.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registra 165 conflictos activos. <br>
                         <span class="textos_azul_pq">14.03.2013 - Nota de Prensa 054/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-038-2013.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo informó que al mes de enero se han registrado 158 conflictos activos. <br>
                         <span class="textos_azul_pq">15.02.2013 - Nota de Prensa 038/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-019-13.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Poder Ejecutivo designa al Ministerio de Agricultura  como ente rector en materia de titulación de tierras comunales. <br>
                         <span class="textos_azul_pq">28.01.2013 - Nota de Prensa 019/OCII/DP/2013</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2013/NP-08-2013.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 164 conflictos activos en diciembre de 2012. <br>
                         <span class="textos_azul_pq">15.01.2013 - Nota de Prensa 008/OCII/DP/2013</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2012" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2012</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-309.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo reitera necesidad de continuar proceso de diálogo para solucionar conflicto minero en Kañaris. <br>
                         <span class="textos_azul_pq">19.12.2012 - Nota de Prensa 309/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-302-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo informa que al mes de noviembre se han registrado 168  conflictos sociales activos. <br>
                         <span class="textos_azul_pq">13.12.2012 - Nota de Prensa 302/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-296.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Comuneros de kañaris levantan medida de fuerza y aceptan iniciar dialogo con el poder ejecutivo. <br>
                         <span class="textos_azul_pq">07.12.2012 - Nota de Prensa 296/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-277-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo informa que al mes de octubre se han registrado 167 conflictos sociales activos. <br>
                         <span class="textos_azul_pq">14.11.2012 - Nota de Prensa 277/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-269-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensor del Pueblo rechaza expresiones de representante de Ingemmet. <br>
                         <span class="textos_azul_pq">29.10.2012 - Nota de Prensa 269/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-268-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoria del Pueblo condena la violencia ocurrida en La Parada y exige una exhaustiva investigación. <br>
                         <span class="textos_azul_pq">26.10.2012 - Nota de Prensa 268/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP267-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría  del Pueblo promueve diálogo en la comunidad de Supayacu. <br>
                         <span class="textos_azul_pq">24.10.2012 - Nota de Prensa 267/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-253-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo informa que al mes de septiembre se han registrado 167 conflictos sociales activos. <br>
                         <span class="textos_azul_pq">11.10.2012 - Nota de Prensa 253/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-247-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Más de cien comisionados de la defensoría del pueblo supervisarán proceso de revocatoria. <br>
                         <span class="textos_azul_pq">28.09.2012 - Nota de Prensa 247/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-238-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Pobladores de la comunidad campesina de Oyón y Compañía de Minas Buenaventura llegan a acuerdo. <br>
                         <span class="textos_azul_pq">17.09.2012 - Nota de Prensa 238/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-237-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 167 conflictos sociales activos en el mes de agosto. <br>
                         <span class="textos_azul_pq">15.09.2012 - Nota de Prensa 237/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-214-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró 168 conflictos sociales activos en el mes de julio. <br>
                         <span class="textos_azul_pq">17.08.2012 - Nota de Prensa 214/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/181.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo informa que en junio se registraron 247 conflictos sociales. <br>
                         <span class="textos_azul_pq">11.07.2012 - Nota de Prensa 181/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-169-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo condena agresiones a periodistas en Cajamarca. <br>
                         <span class="textos_azul_pq">27.06.2012 - Nota de Prensa 169/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-158-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo informa que en mayo surgieron cinco nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">10.06.2012 - Nota de Prensa 158/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-154-2012.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo rechaza declaraciones del Presidente Regional de Cajamarca. <br>
                         <span class="textos_azul_pq">06.06.2012 - Nota de Prensa 154/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-133-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo advierte que en abril surgieron once nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">11.05.2012 - Nota de Prensa 133/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-124-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Conflictos socioambientales se incrementan. <br>
                         <span class="textos_azul_pq">04.05.2012 - Nota de Prensa 124/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-109-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Autoridades y población de Sechura abren paso al diálogo en busca de solución a conflicto social en la zona. <br>
                         <span class="textos_azul_pq">19.04.2012 - Nota de Prensa 109/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-104-12[1].pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Puno y Moquegua acuerdan procedimiento para definir nueva área de trabajo técnico en zona limítrofe. <br>
                         <span class="textos_azul_pq">17.04.2012 - Nota de Prensa 104/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-095-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo advierte que en marzo surgieron diez nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">09.04.2012 - Nota de Prensa 095/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-087-12f.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo recomienda mejorar la especialización y el equipamiento con armas no letales de la Policía Nacional para intervenir en conflictos sociales. <br>
                         <span class="textos_azul_pq">28.03.2012 - Nota de Prensa 087/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-075-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca a la no violencia y a lograr un entendimiento en la región Madre de Dios. <br>
                         <span class="textos_azul_pq">14.03.2012 - Nota de Prensa 075/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-072-2012.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo advierte que en febrero surgieron cinco nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">13.03.2012 - Nota de Prensa 072/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-040-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registra 10 nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">10.02.2012 - Nota de Prensa 040/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-032-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Pobladores y empresa llegan a acuerdo que facilita la construcción de hidroeléctrica en Huancavelica. <br>
                         <span class="textos_azul_pq">31.01.2012 - Nota de Prensa 032/OCII/DP/2012</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2012/NP-011-12.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En diciembre surgieron siete nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">11.01.2012 - Nota de Prensa 011/OCII/DP/2012</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2011" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2011</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-360-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Tras inicio de proceso de diálogo liderado por la Defensoría del Pueblo, conflicto entre comunidad campesina de Andajes y empresa de generación electrica camino a solucionarse. <br>
                         <span class="textos_azul_pq">20.12.2011 - Nota de Prensa 360/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-0354-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte Nº93  presentado hoy por la Defensoría del Pueblo, en noviembre surgieron seis nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">13.12.2011 - Nota de Prensa 354/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-344-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante declaratoria de Estado de Emergencia en cuatro provincias de Cajamarca, Defensoría del Pueblo invoca a autoridades nacionales, regionales y locales a no interrumpir el diálogo. <br>
                         <span class="textos_azul_pq">05.12.2011 - Nota de Prensa 344/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-337-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo reitera su invocación a la no violencia y a lograr un entendimiento sobre el Proyecto Conga. <br>
                         <span class="textos_azul_pq">30.11.2011 - Nota de Prensa 337/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-326-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante evidente necesidad de entendimiento, Defensoría del Pueblo propone diálogo técnico sobre el proyecto “Conga”. <br>
                         <span class="textos_azul_pq">18.11.2011 - Nota de Prensa 326/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/pronunciamiento-18-11-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Pronunciamiento de la Defensoría del Pueblo
sobre los conflictos sociales y el caso Cajamarca.  <br>
                         <span class="textos_azul_pq">18.11.2011 - Pronunciamiento 18-11-11</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-0322-2011.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">El mayor número de ellos se registran en Puno, Ancash y Cajamarca, durante el mes de octubre la Defensoría del Pueblo registró 217 conflictos sociales. <br>
                         <span class="textos_azul_pq">10.11.2011 - Nota de Prensa 322/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-319-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante las movilizaciones de protesta en estos puntos del país, Defensoría del Pueblo invoca a privilegiar el dialogo para solucionar los conflictos en Cajamarca, Andahuaylas, Madre de Dios y Ayacucho. <br>
                         <span class="textos_azul_pq">08.11.2011 - Nota de Prensa 319/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-292-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según último Reporte de la Defensoría del Pueblo,
en septiembre surgieron 12 nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">11.10.2011 - Nota de Prensa 292/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-281-11-DP.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Después de reunirse con representantes del programa de monitoreo del Río Corrientes, Defensoría del Pueblo recomendó al Ministerio del Ambiente establecer mecanismo de coordinación para prevenir derrames por cortes intencionales del oleoducto Trompeteros&ndash;Saramuro.  <br>
                         <span class="textos_azul_pq">30.09.2011 - Nota de Prensa 281/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-258-2011.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Gobierno nacional tiene pendiente de atención 130 conflictos sociales <br>
                         <span class="textos_azul_pq">12.09.2011 - Nota de Prensa 258/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-256-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Comisionados supervisan se brinde atención médica a los heridos, Defensor del Pueblo invoca  a presidentes regionales de Ayacucho y Huancavelica a evitar nuevos enfrentamientos entre comuneros. <br>
                         <span class="textos_azul_pq">09.09.2011 - Nota de Prensa 256/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-226-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte Nº 89 de la Defensoría del Pueblo se registraron 214 conflictos sociales al mes de julio del 2011. <br>
                         <span class="textos_azul_pq">09.08.2011 - Nota de Prensa 226/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-207-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte Nº 88 de la Defensoría del Pueblo, durante el mes de junio se registraron 217 conflictos sociales y se resolvieron quince. <br>
                         <span class="textos_azul_pq">11.07.2011 - Nota de Prensa 207/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-197-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo presta ayuda humanitaria a heridos durante actos de violencia en Huancavelica. <br>
                         <span class="textos_azul_pq">27.06.2011 - Nota de Prensa 197/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-194-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante el clima de violencia que se vive en esa zona del país, Defensoría del Pueblo exhortó a las autoridades para que adopten las medidas que permitan atender demanda de los estudiantes de Huancavelica <span class="nv"> (incluye relación de heridos y fallecidos).</span> <br>
                         <span class="textos_azul_pq">22.06.2011 - Nota de Prensa 194/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-179-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte Nº 87,  Defensoría del Pueblo registró 227 conflictos sociales hasta el mes de mayo. <br>
                         <span class="textos_azul_pq">09.06.2011 - Nota de Prensa 179/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-163-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">A casi dos años de los hechos de Bagua, Defensoría del Pueblo insiste en la necesidad urgente de contar con una Ley de Consulta. <br>
                         <span class="textos_azul_pq">30.05.2011 - Nota de Prensa 163/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-161-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Con miras a contar con el clima para encontrar una salida a sus reclamos, Defensoría del Pueblo pide a Presidenta del Consejo de Ministros presidir diálogo para restablecer orden en Puno. <br>
                         <span class="textos_azul_pq">30.05.2011 - Nota de Prensa 161/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/Pronunciamiento.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Declaraciones del Defensor del Pueblo (e), Eduardo Vega Luna, a propósito de la necesidad de recuperar la paz, restablecer el diálogo y garantizar el desarrollo de la segunda vuelta electoral en Puno. <br>
                         <span class="textos_azul_pq">27.05.2011 - Defensoría del Pueblo</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-160-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invocó a manifestantes de Puno a deponer todo acto de violencia. <br>
                         <span class="textos_azul_pq">27.05.2011 - Nota de Prensa 160/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-155-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca a la población de Puno a canalizar sus demandas en un ambiente de tranquilidad y recomienda a las fuerzas del orden a actuar con prudencia. <br>
                         <span class="textos_azul_pq">24.05.2011 - Nota de Prensa 155/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-147-2011.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante posible agudización de la conflictividad social en la región Apurímac, Defensoría del Pueblo invoca a las autoridades nacionales y regionales a resolver conflictos sociales de  manera pacífica. <br>
                         <span class="textos_azul_pq">17.05.2011 - Nota de Prensa 147/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-139-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte Nº 86 de la Defensoría del Pueblo,
durante abril se registraron 233 conflictos sociales. <br>
                         <span class="textos_azul_pq">10.05.2011 - Nota de Prensa 139/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-135-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo reitera exhortación al Congreso para que  apruebe Ley de Consulta. <br>
                         <span class="textos_azul_pq">07.05.2011 - Nota de Prensa 135/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-133-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo convoca a autoridades de Puno y Moquegua a continuar dialogo por conflicto de límites. <br>
                         <span class="textos_azul_pq">06.05.2011 - Nota de Prensa 133/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-121-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Tras conflicto sociambiental, Defensoría del Pueblo continua hoy con mesa de diálogo entre la Comunidad Campesina de Oyón y Compañía Minera Buenaventura. <br>
                         <span class="textos_azul_pq">25.04.2011 - Nota de Prensa 121/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-114-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante la muerte de un menor de edad y de varios heridos, Defensoría del Pueblo recomendó atender, con oportunidad, conflicto social en la provincia de Oyón. <br>
                         <span class="textos_azul_pq">19.04.2011 - Nota de Prensa 114/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-107-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 85 correspondiente a marzo, Defensoría del Pueblo registró 236 conflictos sociales. <br>
                         <span class="textos_azul_pq">12.04.2011 - Nota de Prensa 107/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-099-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo exhorta a la Presidenta del Consejo de Ministros a nombrar comisión de alto nivel que se dirigiría a Islay para restablecer el diálogo <br>
                         <span class="textos_azul_pq">08.04.2011 - Nota de Prensa 099/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-0093-2011.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca a las autoridades a resolver de manera pacífica conflicto por proyecto “Tía María”. <br>
                         <span class="textos_azul_pq">05.04.2011 - Nota de Prensa 093/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-084-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo participó en instalación de mesa de diálogo que busca evitar enfrentamientos 
por conflicto minero en Moquegua. <br>
                         <span class="textos_azul_pq">24.03.2011 - Nota de Prensa 084/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-073-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 84 de la Defensoría del Pueblo, durante febrero del 2011 se registraron 234 conflictos sociales.
 <br>
                         <span class="textos_azul_pq">09.03.2011 - Nota de Prensa 073/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-0050-2011.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Durante la reunión convocada por el Ministerio de Justicia,
Defensora del Pueblo reiteró observaciones a Decretos de Urgencia N° 001&ndash;2011 y N° 002&ndash;2011. <br>
                         <span class="textos_azul_pq">14.02.2011 - Nota de Prensa 050/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-043-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N°83 de la Defensoría del Pueblo, al mes de enero del 2011 se registraron 239 conflictos sociales, en tanto que se logró resolver seis. <br>
                         <span class="textos_azul_pq">08.02.2011 - Nota de Prensa 043/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-028-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Con el propósito de solucionar conflicto de límites,
Defensoría del Pueblo propició reuniones con nuevas autoridades de Puno y Moquegua para reanudar proceso de diálogo. <br>
                         <span class="textos_azul_pq">26.01.2011 - Nota de Prensa 028/OCII/DP/2011</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2011/NP-008-11.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 82 de la Defensoría del Pueblo, durante diciembre del 2010 se registran 246 conflictos sociales. <br>
                         <span class="textos_azul_pq">10.01.2011 - Nota de Prensa 008/OCII/DP/2011</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2010" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2010</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-325-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 81 de la Defensoría del Pueblo,Surgen ocho nuevos conflictos en noviembre de 2010. <br>
                         <span class="textos_azul_pq">08.12.2010 - Nota de Prensa 325/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-318-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">A propósito del conflicto suscitado en Lambayeque, Defensoría del Pueblo invoca a las partes en conflicto a continuar dialogando para lograr un acuerdo y cumplimiento de la sentencia judical
 <br>
                         <span class="textos_azul_pq">26.11.2010 - Nota de Prensa 318/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-298-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 80 de la Defensoría del Pueblo, surgieron seis nuevos conflictos en octubre de 2010. <br>
                         <span class="textos_azul_pq">09.11.2010 - Nota de Prensa 298/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-264-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N°79 de la Defensoría del Pueblo, surgen quince conflictos electorales nuevos tras el proceso de elecciones regionales y municipales. <br>
                         <span class="textos_azul_pq">12.10.2010 - Nota de Prensa 264/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-221-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 78 de la Defensoría del Pueblo, en agosto se registraron 246 conflictos sociales. <br>
                         <span class="textos_azul_pq">08.09.2010 - Nota de Prensa 221/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-206-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo precisa que Mesa de Trabajo para superar diferendo entre Puno y Moquegua no se ha interrumpido. <br>
                         <span class="textos_azul_pq">23.08.2010 - Nota de Prensa 206/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-195-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 77 de la Defensoría del Pueblo, se registraron 248 conflictos sociales en el mes de Julio. <br>
                         <span class="textos_azul_pq">11.08.2010 - Nota de Prensa 195/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/pronunciamiento-05-08-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante los acontecimientos que están produciéndose en la provincia de La Convención, Cuzco. <br>
                         <span class="textos_azul_pq">05.08.2010 - Pronunciamiento de la Defensora del Pueblo</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-167-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró un total de 250 conflictos sociales al término del mes de junio. <br>
                         <span class="textos_azul_pq">09.07.2010 - Nota de Prensa 167/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-143-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En viaje para la prevención de la violencia en La Oroya,
Defensoría del Pueblo visitó  heridos y verificó actuación de las autoridades en manifestaciones de trabadores de Doe Run. <br>
                         <span class="textos_azul_pq">17.06.2010 - Nota de Prensa 143/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-135-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 75 de la Defensoría del Pueblo, en mayo se  produjeron siete nuevos conflictos sociales y se resolvieron seis de un total de 255 conflictos en el país. <br>
                         <span class="textos_azul_pq">09.06.2010 - Nota de Prensa 135/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-123-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En reunión con representantes de indígenas, gobierno y empresa, Defensoría del Pueblo supervisó en Iquitos cumplimiento de “Acta de Dorissa”.
 <br>
                         <span class="textos_azul_pq">26.05.2010 - Nota de Prensa 123/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-110-2010.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte Nº 74, catorce nuevos conflictos sociales se registraron en abril.
 <br>
                         <span class="textos_azul_pq">10.05.2010 - Nota de Prensa 110/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-083-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo exhorta a deponer  medida  de fuerza que impide funcionamiento de la Municipalidad de Ulcumayo. <br>
                         <span class="textos_azul_pq">14.04.2010 - Nota de Prensa 083/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-081-2010.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según información de la Defensoría destinada al MEM,
local de Mollendo para la presentación del Estudio de Impacto Ambiental del proyecto “Tía María” no cuenta con autorización. <br>
                         <span class="textos_azul_pq">13.04.2010 - Nota de Prensa 081/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-078-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">“La muerte de las personas no debe ser vista como 
un costo aceptable de los conflictos sociales”, señaló 
la  Defensora del Pueblo. <br>
                         <span class="textos_azul_pq">13.04.2010 - Nota de Prensa 078/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-073-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 73 de la Defensoría del Pueblo, diez nuevos conflictos sociales se registraron en marzo. <br>
                         <span class="textos_azul_pq">08.04.2010 - Nota de Prensa 073/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-063-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo reitera que la regulación de las actividades extractivas exige una efectiva política ambiental y el respeto de las competencias de cada nivel de gobierno. <br>
                         <span class="textos_azul_pq">26.03.2010 - Nota de Prensa 063/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-045-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte N° 72 de la Defensoría del Pueblo, durante el mes de febrero se mantuvo el proceso de diálogo en 82 conflictos sociales.
 <br>
                         <span class="textos_azul_pq">09.03.2010 - Nota de Prensa 045/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-023-2010.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Durante el mes de enero se registraron 260 conflictos sociales, siete menos en relación al mes de diciembre. <br>
                         <span class="textos_azul_pq">09.02.2010 - Nota de Prensa 023/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-010-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensora del Pueblo presentó informe sobre sucesos de Bagua a la comisión parlamentaria que investiga dichos hechos. <br>
                         <span class="textos_azul_pq">19.01.2010 - Nota de Prensa 010/OCII/DP/2010</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2010/NP-001-10.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo, durante el mes de diciembre se registraron 267 conflictos sociales, 17 menos en relación al mes de noviembre. <br>
                         <span class="textos_azul_pq">07.01.2010 - Nota de Prensa 001/OCII/DP/2010</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2009" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2009</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-231-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo del mes de noviembre, se registraron dos casos menos, seis nuevos, se reactivaron dos y se resolvió un conflicto social.
 <br>
                         <span class="textos_azul_pq">09.12.2009 - Nota de Prensa 231/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-217-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo propondrá plan y cronograma de trabajo para superar diferendo limítrofe entre Moquegua y Puno <br>
                         <span class="textos_azul_pq">23.11.2009 - Nota de Prensa 217/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-206-2009.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de Conflictos Sociales N° 68 de la Defensoría del Pueblo, durante el mes de octubre se registraron nueve casos nuevos, se reactivaron cuatro y se resolvieron ocho. <br>
                         <span class="textos_azul_pq">09.11.2009 - Nota de Prensa 206/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-200-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Tras verificar in situ clima de calma en la zona de Pasto Grande, Defensoría del Pueblo convoca a los representantes de Puno y Moquegua a mesa de trabajo para superar controversia limítrofe. <br>
                         <span class="textos_azul_pq">03.11.2009 - Nota de Prensa 200/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-186-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante acuerdo de las partes que nombraron a la institución facilitadora del diálogo, representantes de la Defensoría del Pueblo visitarán pasto grande para verificar que exista clima propicio para labor de mesa de trabajo. <br>
                         <span class="textos_azul_pq">21.10.2009 - Nota de Prensa 186/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-177-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo, durante el mes de septiembre aparecieron seis nuevos conflictos sociales, se reactivaron cuatro y se resolvieron tres. <br>
                         <span class="textos_azul_pq">06.10.2009 - Nota de Prensa 177/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-171-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensora del Pueblo y Presidente del Jurado Nacional de Elecciones coordinarán mecanismos para atender conflictos sociales electorales. <br>
                         <span class="textos_azul_pq">28.09.2009 - Nota de Prensa 171/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-156-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de Conflictos Sociales de la Defensoría del Pueblo, durante el mes de agosto se registraron 18 casos nuevos en tanto que solo dos fueron resueltos.
 <br>
                         <span class="textos_azul_pq">07.09.2009 - Nota de Prensa 156/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-151-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En Jaén, 45 líderes awajún dialogaron con representantes de la Defensoría del Pueblo. <br>
                         <span class="textos_azul_pq">26.08.2009 - Nota de Prensa 151/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-149-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En Mesa de Trabajo sobre “Derechos de los Pueblos Indígenas”, Defensoría del Pueblo se reúne en Bagua y en Jaén con autoridades, periodistas  y líderes de las comunidades indígenas de amazonas y Cajamarca. <br>
                         <span class="textos_azul_pq">25.08.2009 - Nota de Prensa 149/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-140-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo,
entre los conflictos sociales registrados en julio, tres se resolvieron, cinco nuevos aparecieron y dos se reactivaron. <br>
                         <span class="textos_azul_pq">10.08.2009 - Nota de Prensa 140/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-135-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo localizó a nativo dado por desaparecido en los sucesos de Bagua. <br>
                         <span class="textos_azul_pq">30.07.2009 - Nota de Prensa 135/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-133-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Miembros de Amnistía Internacional visitaron a la Defensora del Pueblo para obtener información sobre sucesos ocurridos en Bagua y el Proyecto de Ley del Derecho a la Consulta. <br>
                         <span class="textos_azul_pq">22.07.2009 - Nota de Prensa 133/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-129-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo verificó estado de salud del dirigente indígena Santiago Manuín. <br>
                         <span class="textos_azul_pq">15.07.2009 - Nota de Prensa 129/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-125-2009.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ministerio del Ambiente y Defensoría del Pueblo suscribieron convenio dirigido a prevenir Conflictos Socioambientales. <br>
                         <span class="textos_azul_pq">10.07.2009 - Nota de Prensa 125/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-124-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo precisó alcances del informe sobre Bagua. <br>
                         <span class="textos_azul_pq">10.07.2009 - Nota de Prensa 124/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-122-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Número total de conflictos sociales se elevó a 273, en junio se registraron 14 casos nuevos, dos se resolvieron y otros dos se reactivaron. <br>
                         <span class="textos_azul_pq">07.07.2009 - Nota de Prensa 122/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-121-2009.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Para prevenir conflictos y garantizar diálogo eficaz,
Defensoría del Pueblo presenta Proyecto de Ley Marco 
del Derecho a la Consulta de los Pueblos Indígenas. <br>
                         <span class="textos_azul_pq">06.07.2009 - Nota de Prensa 121/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-120-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo dio a conocer relación de acciones humanitarias realizadas ante los lamentables sucesos ocurridos en Bagua <br>
                         <span class="textos_azul_pq">02.07.2009 - Nota de Prensa 120/09/OCII/DP</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-115-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensora del Pueblo recibió a Relator de Pueblos Indígenas de las Naciones Unidas y anuncia  misiones itinerantes a las comunidades indígenas. <br>
                         <span class="textos_azul_pq">19.06.2009 - Nota de Prensa 115/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/documento-dp-pcm-16-06-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo presenta a la PCM propuesta de mecanismo de diálogo y consulta. <br>
                         <span class="textos_azul_pq">16.06.2009 - Nota de Prensa 112/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-109-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo,
durante el mes de mayo se registró un total de 268 Conflictos Sociales.  <br>
                         <span class="textos_azul_pq">05.06.2009 - Nota de Prensa 109/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-106-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante la agudización de las medidas de fuerza en la Selva, Defensora del Pueblo envía propuestas al Presidente del Consejo de Ministros para atender problemática de los Pueblos Amazónicos. <br>
                         <span class="textos_azul_pq">03.06.2009 - Nota de Prensa 106/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-095-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En sede central de la Defensoría del Pueblo,
Defensora del Pueblo se reunió con primer ministro y fiscal de la nación para dialogar sobre los conflictos sociales en el país. <br>
                         <span class="textos_azul_pq">25.05.2009 - Nota de Prensa 095/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-089-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Mediante oficio remitido esta mañana, Defensora del Pueblo exhorta al Presidente del Consejo de Ministros a instalar Mesa de Diálogo con organizaciones de los pueblos indígenas. <br>
                         <span class="textos_azul_pq">18.05.2009 - Nota de Prensa 089/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-088-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Ante exhortación de la Defensora del Pueblo, AIDESEP depone llamado a insurgencia. <br>
                         <span class="textos_azul_pq">16.05.2009 - Nota de Prensa 088/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-087-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En ceremonia realizada esta mañana, Defensora del Pueblo dio a conocer creación e instalación de Adjuntía para la Prevención de Conflictos Sociales y la Gobernabilidad. <br>
                         <span class="textos_azul_pq">15.05.2009 - Nota de Prensa 087/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-084-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo emite pronunciamiento sobre el paro amazónico. <br>
                         <span class="textos_azul_pq">13.05.2009 - Nota de Prensa 084/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-079-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo,
durante el mes de abril se registró un total de 250 conflictos sociales. <br>
                         <span class="textos_azul_pq">05.05.2009 - Nota de Prensa 079/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-061-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según reporte mensual de la Defensoría del Pueblo,
durante el mes de marzo se registró un total de 238 conflictos sociales. <br>
                         <span class="textos_azul_pq">08.04.2009 - Nota de Prensa 061/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-046-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">ONPE y Defensoría del Pueblo trabajarán en la prevención de conflictos electorales. <br>
                         <span class="textos_azul_pq">19.03.2009 - Nota de Prensa 046/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-040-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo,
durante el mes de febrero se registró un total de 218 conflictos sociales.  <br>
                         <span class="textos_azul_pq">09.03.2009 - Nota de Prensa 040/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-018-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según Reporte de la Defensoría del Pueblo,
durante el mes de enero se registró un total de 211 Conflictos Sociales.  <br>
                         <span class="textos_azul_pq">09.02.2009 - Nota de Prensa 018/OCII/DP/2009</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2009/NP-002-09.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo señala que en diciembre del 2008 se registró un total de 197 conflictos sociales.  <br>
                         <span class="textos_azul_pq">07.01.2009 - Nota de Prensa 002/OCII/DP/2009</span></a></p>
                         </div></div> </div>
                    <div class="temas_cambio" id="notas2008" style="display: none;">
                 <div class="titulo_medio linea_enlaces_i-60-temas">Notas de Prensa 2008</div>

                 <div class="linea_txt_inf-temas">
                  <div class="scroll">
                                            <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-156-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Doce nuevos conflictos sociales se registraron durante el mes de noviembre. <br>
                         <span class="textos_azul_pq">04.12.2008 - Nota de Prensa 156/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-142-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo propicia el diálogo entre empresa petrolera Talismán y la población del Morona. <br>
                         <span class="textos_azul_pq">11.11.2008 - Nota de Prensa 142/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-138-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Durante el mes de octubre, Defensoría del Pueblo registró 15 nuevos conflictos sociales. <br>
                         <span class="textos_azul_pq">05.11.2008 - Nota de Prensa 138/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-137-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">En balance de cumplimiento del Acta de Dorissa,
Defensoría del Pueblo advierte incumplimiento de compromisos por parte del Estado. <br>
                         <span class="textos_azul_pq">30.10.2008 - Nota de Prensa 137/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-124-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Diecisiete nuevos conflictos sociales durante el mes de setiembre. <br>
                         <span class="textos_azul_pq">03.10.2008 - Nota de Prensa 124/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-111-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Según reporte de la Defensoría del Pueblo,
surgen 17 nuevos conflictos sociales durante el mes de agosto.
 <br>
                         <span class="textos_azul_pq">04.09.2008 - Nota de Prensa 111/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-099-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">La Defensoría del Pueblo registró 147 conflictos sociales durante el mes de julio. <br>
                         <span class="textos_azul_pq">04.08.2008 - Nota de Prensa 099/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-092-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Se reabre municipalidad de San Juan del Oro gracias a mediación de la Defensoría del Pueblo. <br>
                         <span class="textos_azul_pq">16.07.2008 - Nota de Prensa 092/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-088-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Durante el mes de junio, Defensoría del Pueblo registra dieciséis nuevos conflictos sociales en su Reporte Nº 52. <br>
                         <span class="textos_azul_pq">07.07.2008 - Nota de Prensa 088/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-075-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Reinician el diálogo empresa minera Chinalco Toromocho y la población de Morococha. <br>
                         <span class="textos_azul_pq">23.06.2008 - Nota de Prensa 075/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-074-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo alerta sobre conflictos sociales que requieren atención urgente. <br>
                         <span class="textos_azul_pq">19.06.2008 - Nota de Prensa 074/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-071-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo invoca al diálogo y al cese de los hechos de violencia. <br>
                         <span class="textos_azul_pq">16.06.2008 - Nota de Prensa 071/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/NP-068-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registra 11 casos nuevos de conflictos sociales. <br>
                         <span class="textos_azul_pq">10.06.2008 - Nota de Prensa 068/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/050-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo presentó nuevo sistema de monitoreo de conflictos sociales <br>
                         <span class="textos_azul_pq">08.05.2008 - Nota de Prensa 050/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/039-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró un total de 93 conflictos sociales entre activos y latentes. <br>
                         <span class="textos_azul_pq">09.04.2008 - Nota de Prensa 039/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/022-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró un total de 88 conflictos sociales durante el mes de Febrero. <br>
                         <span class="textos_azul_pq">10.03.2008 - Nota de Prensa 022/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/012-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró un total de 83 conflictos sociales durante el mes de Enero. <br>
                         <span class="textos_azul_pq">11.02.2008 - Nota de Prensa 012/OCII/DP/2008</span></a></p>
                                                   <p class="textos_informes_temas"><a href="/modules/Downloads/prensa/notas/2008/001-08.pdf" class="textos_informes" style="text-decoration:none;" target="_blank">Defensoría del Pueblo registró un total de 78 conflictos sociales. <br>
                         <span class="textos_azul_pq">07.01.2008 - Nota de Prensa 001/OCII/DP/2008</span></a></p>
                         </div></div> </div>
      

  

     <div class="temas_cambio" id="enlaces" style="display: none;">
     <div class="titulo_medio linea_enlaces_i-60-temas">Enlaces de interés</div>
     <div class="linea_txt_inf-temas"><div class="scroll">
     <p class="textos_informes_temas">Oficina de Gestión de Conflictos Sociales &ndash; Presidencia del Consejo de Ministros <br>
<a href="http://www.pcm.gob.pe/EstructuraOrg/ogcss.html" target="_blank" class="enlaces_blue">www.pcm.gob.pe/EstructuraOrg/ogcss.html</a></p>
<p class="textos_informes_temas">
Programa de Apoyo para una Cultura de Paz y el Fortalecimiento de Capacidades nacionales para la Prevención y Manejo Constructivo de Conflictos (PREVCON)<br>
<a href="http://www.prevcon.gob.pe" target="_blank" class="enlaces_blue">www.prevcon.gob.pe</a></p>
<p class="textos_informes_temas">Centro de Análisis y Resolución de Conflictos &ndash; Pontificia Universidad Católica del Perú <br>
<a href="http://consensos.pucp.edu.pe" target="_blank" class="enlaces_blue">http://consensos.pucp.edu.pe</a></p>
<p class="textos_informes_temas">Dirección Nacional de Relaciones de Trabajo &ndash; Ministerio de Trabajo <br>
<a href="http://www.mintra.gob.pe/REGISTROHUELGA/SolucionHuelgas.php" target="_blank" class="enlaces_blue">www.mintra.gob.pe/REGISTROHUELGA/SolucionHuelgas.php</a></p>
<p class="textos_informes_temas">
Comisión Andina de Juristas <br>
<a href="http://www.cajpe.org.pe/" target="_blank" class="enlaces_blue">http://www.cajpe.org.pe/</a></p>
<p class="textos_informes_temas">RED MUQUI &ndash; Red de Propuesta y acción<br>
<a href="http://www.muqui.org" target="_blank" class="enlaces_blue">www.muqui.org</a></p>
<p class="textos_informes_temas">ProDiálogo<br>
<a href="http://prodialogo.org.pe" target="_blank" class="enlaces_blue">http://prodialogo.org.pe</a></p>
<p class="textos_informes_temas">CooperAcción<br>
<a href="http://www.cooperaccion.org.pe" target="_blank" class="enlaces_blue">www.cooperaccion.org.pe</a></p>
<p class="textos_informes_temas">Grupo de Diálogo &ndash; Minería y Desarrollo Sostenible<br> 
<a href="http://www.grupodedialogo.org.pe" target="_blank" class="enlaces_blue">www.grupodedialogo.org.pe</a></p>
<p class="textos_informes_temas">Observatorio de Conflictos Mineros de América Latina <br>
<a href="http://www.conflictosmineros.net" target="_blank" class="enlaces_blue">www.conflictosmineros.net</a></p>
<p class="textos_informes_temas">Instituto de Estudios Peruanos &ndash; IEP <br>
<a href="http://www.iep.org.pe" target="_blank" class="enlaces_blue">www.iep.org.pe</a></p></div></div> </div>
      
  
       <div class="temas_cambio" id="blog" style="display: none;">
     <div class="titulo_medio linea_enlaces_i-60-temas">Desde el Blog</div>
     <div class="linea_txt_inf-temas">
     <div class="scroll">
     <p class="textos_informes_temas">Defensoría del Pueblo registró 227 conflictos sociales en mayo<br>
			<a class="enlaces_blue" href="http://puma.defensoria.gob.pe/blog/?p=2393" target="_blank">09-06-2011 - Rolando Luque</a></p>
      
	 </div></div> </div>
      
    
          <div class="temas_cambio" id="boletin" style="display: none;">
       <div class="titulo_medio linea_enlaces_i-60-temas">Boletín conflictos al Día</div>
                
  		<div class="linea_txt_inf-temas">
     	<div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-11-10-2016.pdf" target="_blank">Boletín Conflictos al Día 11 10 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-8-10-10-2016.pdf" target="_blank">Boletín Conflictos al Día 8-10 10 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-7-10-2016.pdf" target="_blank">Boletín Conflictos al Día 7 10 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-6-10-2016.pdf" target="_blank">Boletín Conflictos al Día 6 10 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-4-10-2016.pdf" target="_blank">Boletín Conflictos al Día 4 10 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-1-3-10-2016.pdf" target="_blank">Boletín Conflictos al Día 1-3 10 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-30-09-2016.pdf" target="_blank">Boletín Conflictos al Día 30 09 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-29-09-2016.pdf" target="_blank">Boletín Conflictos al Día 29 09 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-28-09-2016.pdf" target="_blank">Boletín Conflictos al Día 28 09 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-27-09-2016.pdf" target="_blank">Boletín Conflictos al Día 27 09 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-24---26-09-2016.pdf" target="_blank">Boletín Conflictos al Día 24-26 09 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/boletines/conflictos/2016/Boletin-23-09-2016-1.pdf" target="_blank">Boletín Conflictos al Día 23 09 2016</a></p>
      
	 </div></div> </div>
              <div class="temas_cambio" id="reporte2016" style="display: block;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2016</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N-153--Noviembre-2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 153 - noviembre 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N-152---Octubre-2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 152 - octubre 2016 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N-151-Septiembre-2016.pdf" target="_blank">Reporte mensual de conflictos cociales N° 151 - septiembre 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N-150----Agosto-2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 150 - agosto 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N--149----Julio---2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 149 - julio 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de--Conflictos--Sociales--N--148--Junio--2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 148 - junio 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales--N--147--Mayo--2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 147 - mayo 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N--146--Abril--2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 146 - abril 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N--145--Marzo-2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 145 - marzo 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N-144--Febrero--2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 144 - febrero 2016</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2016/Reporte-Mensual-de-Conflictos-Sociales-N--143--Enero--2016.pdf" target="_blank">Reporte mensual de conflictos sociales N° 143 - enero 2016 </a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2015" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2015</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales--N--142--Diciembre--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 142 - diciembre 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N--141--Noviembre--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 141 - noviembre 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N--140--Octubre-2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 140 - octubre 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N--139-Septiembre-2015.pdf" target="_blank">Reporte mensual de conflictos sociales N°139 - septiembre 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N-138--Agosto--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N°138 - agosto 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N-137--Julio--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 137 - julio 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N-136-Junio-2015.pdf" target="_blank">Reporte mensual de conflictos N° 136 - junio 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N-135--Mayo-2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 135 - mayo 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte--Mensual-de-Conflictos-Sociales-N-134-Abril--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 134 - abril 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte--Mensual-de-Conflictos-Sociales-N-133-Marzo-2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 133 - marzo 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte--Mensual-de-Conflictos-Sociales-N-132--Febrero--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 132 - febrero 2015</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N--131-Enero--2015.pdf" target="_blank">Reporte mensual de conflictos sociales N° 131 - enero 2015</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2014" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2014</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N--130---Diciembre--2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 130 - diciembre 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte--Mensual-de-Conflictos-Sociales-N-129---Noviembre-2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 129 - noviembre 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N---128---Octubre--2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 128 - octubre 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte--Mensual--de--Conflictos--Sociales-N-127---Septiembre-2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 127 - setiembre 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte--Mensual-de-Conflictos-Sociales-N-126-Agosto-2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 126 - agosto 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-Conflictos-Sociales-125-Julio-2014.pdf" target="_blank">Reporte Mensual de Conflcitos Sociales N° 125 - julio 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-124-----2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 124 - junio 2014 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-123---2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 123 - mayo 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-122.pdf" target="_blank">Reporte Mensual de Conflcitos Sociales N° 122 - abril 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-121---marzo-2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 121 - marzo 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-120---Febrero-2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 120 - febrero 2014</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-119-enero-2014.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 119 - enero 2014</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2013" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2013</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2014/Reporte-Mensual-de-Conflictos-Sociales-N-118---diciembre--2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 118 - diciembre 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-Mensual-de-Conflictos-Sociales-N-117-noviembre---2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 117 - noviembre 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/-Reporte-Mensual-de-Conflictos-Sociales-N-116-Octubre--2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 116 - octubre 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-Mensual-de-Conflictos-Sociales-N-115-Septiembre-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 115 - septiembre 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-Mensual-de-Conflictos-Sociales-N-114---Agosto-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 114 - agosto 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-Mensual-de-Conflictos-Sociales-N-113---Julio-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 113 - Julio 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-M.-de-Conflictos-Sociales-N-112-Junio-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 112 - Jun-2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-M.-de-Conflictos-Sociales-N-111-Mayo2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 111 Mayo 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-M.-de-Conflictos-Sociales--N--110-Abr-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 110 - Abril 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-M.-de-Conflictos-Sociales-N-109-Mar-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 109 - Marzo 2013</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-M.-de-Conflictos-Sociales-N-108-Feb-2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales Nº 108 Febrero 2013.</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2013/Reporte-M.-de-Conflictos-Sociales-N--107-Ene---2013.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 107 Enero 2013</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2012" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2012</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-M.-de-Conflictos-Sociales-N-106-Diciembre--2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 106 - Diciembre 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-M.-de-Conflictos-Sociales-N--105-Noviembre---2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 105 - Noviembre 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-Mensual-de-Conflictos-Sociales-N-104-Octu-2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 104 - Octubre 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-Mensual-de-Conflictos--Sociales-N-103----Sept-2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 103 - Septiembre 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-Mensual-de-Conflictos--Sociales-N-102----Ago--12.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 102 - Agosto 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-Mensual-de-Conflictos--Sociales-N---101-Julio-12.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 101 - Julio 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-de-Mensual-Conflictos--Sociales-N--100---Junio-2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 100 - Junio 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-M.-de-Conflictos--Sociales-N-99---May--2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 99 - Mayo 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-Mensual-de-Conflictos--Sociales-N-98---Abril-2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 98 - Abril 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-de-Conflictos-Sociales-N-97---Marzo-2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales N° 97 - Marzo 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-de-Conflictos-Sociales--N-96---Febrero-2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales Nº 96 - Febrero 2012</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-Mensual-de-Conflictos-Sociales-N--95---Enero--2012.pdf" target="_blank">Reporte Mensual de Conflictos Sociales Nº 95  - Enero 2012</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2011" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2011</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2012/Reporte-de-conflictos-N-94.pdf" target="_blank">Reporte Mensual Nº 94 Conflictos Sociales - Diciembre 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/Reporte-conflictos-93.pdf" target="_blank">Reporte Mensual Nº 93 Conflictos Sociales - Noviembre 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte-menusal-92.pdf" target="_blank">Reporte Mensual Nº 92 Conflictos Sociales - Octubre 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte_91_1.pdf" target="_blank">Reporte Mensual Nº 91 Conflictos Sociales - Septiembre 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/Reporte_conflictos_90.pdf" target="_blank">Reporte Mensual Nº 90 Conflictos Sociales - Agosto 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/Reporte-89.pdf" target="_blank">Reporte Mensual Nº 89 Conflictos Sociales - Julio 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/Reporte-88.pdf" target="_blank">Reporte Mensual Nº 88 Conflictos Sociales - Junio 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/Reporte-87-mayo-2011.pdf" target="_blank">Reporte Mensual Nº 87 Conflictos Sociales - Mayo 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte_86.pdf" target="_blank">Reporte Mensual Nº 86 Conflictos Sociales - Abril 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte_85.pdf" target="_blank">Reporte Mensual Nº 85 Conflictos Sociales - Marzo 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte-84.pdf" target="_blank">Reporte Mensual Nº 84 Conflictos Sociales - Febrero 2011</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte-83.pdf" target="_blank">Reporte Mensual Nº 83 Conflictos Sociales - Enero 2011</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2010" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2010</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2011/reporte-82.pdf" target="_blank">Reporte Mensual Nº 82 Conflictos Sociales - Diciembre 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-81.pdf" target="_blank">Reporte Mensual Nº 81 Conflictos Sociales - Noviembre 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-80.pdf" target="_blank">Reporte Mensual Nº 80 Conflictos Sociales - Octubre 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-079.pdf" target="_blank">Reporte Mensual Nº 79 Conflictos Sociales - Septiembre 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-078.pdf" target="_blank">Reporte Mensual Nº 78 Conflictos Sociales - Agosto 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-77.pdf" target="_blank">Reporte Mensual Nº 77 Conflictos Sociales - Julio 2010 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-76-2010.pdf" target="_blank">Reporte Mensual Nº 76 Conflictos Sociales - Junio 2010 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-75-2010.pdf" target="_blank">Reporte Mensual Nº 75 Conflictos Sociales - Mayo 2010 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/Reporte-74.pdf" target="_blank">Reporte Mensual Nº 74 Conflictos Sociales - Abril 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/Reporte-73.pdf" target="_blank">Reporte Mensual Nº 73 Conflictos Sociales - Marzo 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/Conflictos-Reporte72.pdf" target="_blank">Reporte Mensual Nº 72 Conflictos Sociales - Febrero 2010</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-71.pdf" target="_blank">Reporte Mensual Nº 71 Conflictos Sociales - Enero 2010</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2009" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2009</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2010/reporte-diciembre.pdf" target="_blank">Reporte Mensual Nº 70 Conflictos Sociales -Diciembre 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/reporte-69.pdf" target="_blank">Reporte Mensual Nº 69 Conflictos Sociales - Noviembre 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/Conflictos-Reporte-68.pdf" target="_blank">Reporte Mensual Nº 68 Conflictos Sociales - Octubre 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/conflictos-67.pdf" target="_blank">Reporte Mensual Nº 67 Conflictos Sociales - Setiembre 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/reporte-66-vf.pdf" target="_blank">Reporte Mensual Nº 66 Conflictos Sociales - Agosto 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/reporte-65.pdf" target="_blank">Reporte Mensual Nº 65 Conflictos Sociales - Julio 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/reporte-64.pdf" target="_blank">Reporte Mensual Nº 64 Conflictos Sociales - Junio 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/Reporte-63.pdf" target="_blank">Reporte Mensual Nº 63 Conflictos Sociales - Mayo 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/conflictos-62.pdf" target="_blank">Reporte Mensual Nº 62 Conflictos Sociales - Abril 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/conflictos_reporte_61_marzo2009.pdf" target="_blank">Reporte Mensual Nº 61 Conflictos Sociales - Marzo 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/conflictos_reporte_60_febrero2009-1.pdf" target="_blank">Reporte Mensual Nº 60 Conflictos Sociales - Febrero 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/conflictos_reporte_59_enero2009.pdf" target="_blank">Reporte Mensual Nº 59 Conflictos Sociales - Enero 2009</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2009/reporte-058.pdf" target="_blank">Reporte Mensual Nº 58 Conflictos Sociales - Diciembre 2008</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2008" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2008</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/Conflictos-57.pdf" target="_blank">Reporte Mensual Nº 57 Conflictos Sociales - Noviembre 2008</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/Conflictos-56.pdf" target="_blank">Reporte Mensual Nº 56 Conflictos Sociales - Octubre 2008</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/reporte-55-2008.pdf" target="_blank">Reporte Mensual Nº 55 Conflictos Sociales - Setiembre 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/conflictos-54.pdf" target="_blank">Reporte Mensual Nº 54 Conflictos Sociales - Agosto 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/reporte-conflictos-53.pdf" target="_blank">Reporte Mensual Nº 53 Conflictos Sociales - Julio 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/conflictos_sociales52.pdf" target="_blank">Reporte Mensual Nº 52 Conflictos Sociales - Junio 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/Conflictos-Reporte-51mayo2008.pdf" target="_blank">Reporte Mensual Nº 51 Conflictos Sociales - Mayo 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/Reporte-especial-51.pdf" target="_blank">Reporte Especial - Conflictos Sociales - Mayo 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/conflictos_sociales50.pdf" target="_blank">Reporte Mensual Nº 50 Conflictos Sociales - Abril 2008 </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/conflictos_sociales49.pdf" target="_blank">Reporte Mensual Nº 49 Conflictos Sociales - Marzo 2008</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/conflictos_sociales48.pdf" target="_blank">Reporte Mensual Nº 48 Conflictos Sociales - Febrero 2008</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2008/conflictos_sociales47.pdf" target="_blank">Reporte Mensual Nº 47 Conflictos Sociales - Enero 2008</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/Reporte-46---diciembre-2007.pdf" target="_blank">Reporte Mensual Nº 46 Conflictos Sociales - Diciembre 2007</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2007" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2007</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales45.pdf" target="_blank">Reporte Mensual Nº 45 Conflictos Sociales - Noviembre 2007  </a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales44.pdf" target="_blank">Reporte Mensual Nº 44 Conflictos Sociales - Octubre 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales43.pdf" target="_blank">Reporte Mensual Nº 43 Conflictos Sociales - Setiembre 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales42.pdf" target="_blank">Reporte Mensual Nº 42 Conflictos Sociales - Agosto 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales41.pdf" target="_blank">Reporte Mensual Nº 41 Conflictos Sociales - Julio 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales40.pdf" target="_blank">Reporte Mensual Nº 40 Conflictos Sociales - Junio 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales39.pdf" target="_blank">Reporte Mensual Nº 39 Conflictos Sociales - Mayo 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales38.pdf" target="_blank">Reporte Mensual N° 38 Conflictos Sociales - Abril 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales37.pdf" target="_blank">Reporte Mensual Nº 37 Conflictos Sociales - Marzo 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales36.pdf" target="_blank">Reporte Mensual Nº 36 Conflictos Sociales - Febrero 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales35.pdf" target="_blank">Reporte Mensual Nº 35 Conflictos Sociales - Enero 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2007/conflictos_sociales35_especial.pdf" target="_blank">Reporte Especial - Enero 2007</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/2015/Reporte-Mensual-de-Conflictos-Sociales-N-34---Diciembre-2006.pdf" target="_blank">Reporte mensual de conflictos sociales Nº 34 - Diciembre 2006</a></p>
      
	 </div></div> </div>
     
     
             <div class="temas_cambio" id="reporte2006" style="display: none;">
        <div class="titulo_medio linea_enlaces_i-60-temas">Reporte Mensual Conflictos Sociales 2006</div>      
     <div class="linea_txt_inf-temas">
     <div class="scroll">
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales33.pdf" target="_blank">Reporte Mensual Nº 33 Conflictos Sociales - Noviembre 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales32.pdf" target="_blank">Reporte Mensual Nº 32 Conflictos Sociales - Octubre 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales31.pdf" target="_blank">Reporte Mensual N° 31 Conflictos Sociales - Septiembre 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales30.pdf" target="_blank">Reporte Mensual N° 30 Conflictos Sociales - Agosto 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales29.pdf" target="_blank">Reporte Mensual Nº 29 Conflictos Sociales - Julio 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales28.pdf" target="_blank">Reporte Mensual N° 28 Conflictos Sociales - Junio 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales27.pdf" target="_blank">Reporte Mensual N° 27 Conflictos Sociales - Mayo 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales26.pdf" target="_blank">Reporte Mensual N° 26  Conflictos Sociales - Abril 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales25.pdf" target="_blank">Reporte Mensual N° 25  Conflictos Sociales - Marzo 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales24.pdf" target="_blank">Reporte Mensual N° 24  Conflictos Sociales - Febrero 2006</a></p>
      
	 <p class="textos_informes_temas"><a class="enlaces_blue" href="/modules/Downloads/conflictos/conflictos_sociales23.pdf" target="_blank">Reporte Mensual N° 23 Conflictos Sociales - Enero 2006</a></p>
      
	 </div></div> </div>
     
     
      

</div></div>
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
                                                    <p><iframe width="100%" height="205" src="https://www.youtube.com/embed/AJiNSWsP9Gk?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe></p>
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
</body>
</html>