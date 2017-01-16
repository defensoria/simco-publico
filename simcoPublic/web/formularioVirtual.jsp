<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="shortcut icon" href="imagenes/favicon.png" type="image/gif" />
        <title>Defensoría del Pueblo- Formulario de Quejas y Consultas</title>
        <link href="css/estructura.css" rel="stylesheet" type="text/css" />
        <link href="css/estandar.css" rel="stylesheet" type="text/css" />
        <link href="css/interiores.css" rel="stylesheet" type="text/css" />
        <link href="css/datepicker-nintr.css" rel="stylesheet" type="text/css" />


        <link href="css/form.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/rollfade.js"></script>
        <link href="css/rollfade.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/mootools.js"></script>
        <script type="text/javascript" src="js/datepicker.js"></script>
        <script type="text/javascript">
            // <![CDATA[

            // A quick test of the setGlobalVars method
            datePickerController.setGlobalVars({"split": ["-dd", "-mm"]});

            /*
             
             The following function dynamically calculates Easter Monday's date.
             It is used as the "redraw" callback function for the second last calendar on the page
             and returns an empty object.
             
             It dynamically calculates Easter Monday for the year in question and uses
             the "adddisabledDates" method of the datePickercontroller Object to
             disable the date in question.
             
             NOTE: This function is not needed, it is only present to show you how you
             might use this callback function to disable dates dynamically!
             
             */
            function disableEasterMonday(argObj) {
                // Dynamically calculate Easter Monday - I've forgotten where this code
                // was originally found and I don't even know if it returns a valid
                // result so don't use it in a prod environment...
                var y = argObj.yyyy,
                        a = y % 4,
                        b = y % 7,
                        c = y % 19,
                        d = (19 * c + 15) % 30,
                        e = (2 * a + 4 * b - d + 34) % 7,
                        m = Math.floor((d + e + 114) / 31),
                        g = (d + e + 114) % 31 + 1,
                        yyyymmdd = y + "0" + m + String(g < 10 ? "0" + g : g);

                datePickerController.addDisabledDates(argObj.id, yyyymmdd);

                // The redraw callback expects an Object as a return value
                // so we just give it an empty Object...
                return {};
            }
            ;

            /*
             
             The following functions updates a span with an "English-ised" version of the
             currently selected date for the last datePicker on the page.
             
             NOTE: These functions are not needed, they are only present to show you how you
             might use callback functions to use the selected date in other ways!
             
             */
            function createSpanElement(argObj) {
                // Make sure the span doesn't exist already
                if (document.getElementById("EnglishDate"))
                    return;

                // create the span node dynamically...
                var spn = document.createElement('span');
                p = document.getElementById(argObj.id).parentNode;

                spn.id = "EnglishDate";
                p.parentNode.appendChild(spn);

                // Remove the bottom margin on the input's wrapper paragraph
                p.style.marginBottom = "0";

                // Add a whitespace character to the span
                spn.appendChild(document.createTextNode(String.fromCharCode(160)));
            }
            ;

            function showEnglishDate(argObj) {
                // Grab the span & get a more English-ised version of the selected date
                var spn = document.getElementById("EnglishDate"),
                        formattedDate = datePickerController.printFormattedDate(argObj.date, "l-cc-sp-d-S-sp-F-sp-Y", false);

                // Make sure the span exists before attempting to use it!
                if (!spn) {
                    createSpanElement(argObj);
                    spn = document.getElementById("EnglishDate");
                }
                ;

                // Note: The 3rd argument to printFormattedDate is a Boolean value that
                // instructs the script to use the imported locale (true) or not (false)
                // when creating the dates. In this case, I'm not using the imported locale
                // as I've used the "S" format mask, which returns the English ordinal
                // suffix for a date e.g. "st", "nd", "rd" or "th" and using an
                // imported locale would look strange if an English suffix was included

                // Remove the current contents of the span
                while (spn.firstChild)
                    spn.removeChild(spn.firstChild);

                // Add a new text node containing our formatted date
                spn.appendChild(document.createTextNode(formattedDate));
            }
            ;

            // ]]>
        </script>

        <script language="javascript" type="text/javascript">

            $(document).ready(function () {
                $(document).bind("contextmenu", function (e) {
                    alert('El boton derecho del mouse ha sido deshabilitado.\nPor favor digite sus datos');
                    return false;
                });
            });
        </script>
        <script type="text/javascript" src="js/validar.js"></script>
    </head>
    <body>

        <div id="principal_int">

            <script type="text/javascript">
            function validar()
            {
                if (document.busqueda.txt_clave.value == "")
                {
                    alert("Debe escribir un texto para la búsqueda");
                    document.busqueda.txt_clave.focus();
                    return false;
                }
                return true;
            }
            </script>


            <div id="head">
                <div id="logo"><div id="ico">
                        <div id="efx"><a href="https://puma.defensoria.gob.pe/index.php" class="thumb"><span style="opacity: 1; display: block;"><img src="imagenes/dp-logo-trans.png" alt="Inicio" /></span></a></div>
                    </div>
                </div>
                <div id="menu_head"><a href="https://puma.defensoria.gob.pe/mapaweb.php" > Men&uacute; </a> |   <a href="https://puma.defensoria.gob.pe/5k/index.html" target="_blank"><span style="font-weight:bold">Defensor&iacute;a 5K</span></a> | <a href="https://puma.defensoria.gob.pe/contactenos.php">Cont&aacute;ctenos</a> | <a href="https://puma.defensoria.gob.pe/intranet.php" target="_blank">Intranet</a> | <a href="https://mail.defensoria.gob.pe" target="_blank">Correo</a></div>
                <div id="buscar">
                    <form id="busqueda" name="busqueda" action="https://puma.defensoria.gob.pe/buscador.php" method="post" onsubmit="return validar();">
                        <label for="txt_clave" style="color:#FFF; font-size:70%;">Buscar : </label><input type="text" id="txt_clave" name="txt_clave" value="Escriba un texto" size="14" style="color:#333; font-size:70%; font-family:Arial" accesskey="n" />&nbsp;&nbsp;
                        <script type="text/javascript">
                            $("#txt_clave").click(function () {
                                if ($("#txt_clave").val() == "Escriba un texto")
                                {
                                    $("#txt_clave").val("");
                                }
                            });</script>
                        <div id="ok"><input type="image" src="imagenes/ok.png" alt="botón buscar" style="width:100%; height:100%;"/></div>
                    </form>
                </div>
                <div id="accesos_dt">
                    <div class="portal" align="justify"><a href="https://puma.defensoria.gob.pe/transparencia-estandar.php"><strong>P o r t a l &nbsp; d e</strong></a><a href="https://puma.defensoria.gob.pe/transparencia-estandar.php"><strong>
                                <div id="lupi"><img src="imagenes/ico_trans_ref.png" alt="icono Transparencia" width="38" height="46" style="border:none" /></div></strong></a></div>
                    <div class="histori" align="justify"><a href="https://puma.defensoria.gob.pe/transparencia-estandar.php";font-family:Arial" >  Transparencia </a></div>	
                </div>
                <div id="logotipo"><div id="logos">
                    </div></div>
            </div><div class="clear"></div>
            <div id="base_menu_int">
                <div id="base_relat">
                    <div class="clear"></div>
                    <div id="menu_int">
                        <div id="menu_int_izq"></div>
                        <div id="links" style="color:#FFF"><a href="https://puma.defensoria.gob.pe/index.php">Inicio</a>&nbsp;|
                            <a href="http://www.tramites.gob.pe/bus/preClaTraInstitucion.asp?ent_nom=Defensor%EDa%20del%20Pueblo%20(DP)&id_entidad=23" target="_blank">TUPA</a>&nbsp;|<a href="https://puma.defensoria.gob.pe/transparencia.php">Transparencia</a>&nbsp;|<a href="https://puma.defensoria.gob.pe/directorio.php">Directorio</a>&nbsp;|<a href="https://puma.defensoria.gob.pe/convocatorias.php">Convocatorias de Personal </a>&nbsp;|<a href="https://puma.defensoria.gob.pe/quechua.php">Quechua</a>&nbsp;|<a href="https://puma.defensoria.gob.pe/resoluciones.php">Resoluciones</a></div>
                        <div id="menu_int_der" style="background-image:url(imagenes/fondo-der-menu-int.jpg)"></div>
                    </div> 	
                    <div id="icos_2pto0">
                        <div style="text-align:right; color:#FFF"><a href="http://www.facebook.com/defensoriaperu" target="_blank"><img 
                                    src="imagenes/face.gif" alt="b" 
                                    style="border:none"/></a>&nbsp;|<a href="http://www.youtube.com/user/depevideos" target="_blank"><img 
                                    src="imagenes/youtube.gif" alt="a" 
                                    style="border:none" /></a>&nbsp;|<a href="http://twitter.com/ladepe" target="_blank"><img 
                                    src="imagenes/twter.gif" alt="b" 
                                    style="border:none" /></a>&nbsp;|</div>
                    </div>
                </div>
            </div><div class="clear"></div>	
            <div id="central_int">
                <div>
                    <div id="linea_50_i">
                        <div class="mini_titulo_light" ><br />
                            Presente su queja en L&iacute;nea</div>
                    </div>

                    <div id="formulario">

                        <form method="post" action="FormularioVirtualController" onsubmit="return validarqueja();" name="f1" enctype="multipart/form-data">

                            <fieldset>
                                <legend>&nbsp;&nbsp;DATOS PERSONALES&nbsp;&nbsp;</legend>
                                <div class="form-item">
                                    <div class="form-texto"><label for="nombre">Nombres (*)</label></div>
                                    <div class="form-input"><input type="text" id="nombres" tabindex="2" name="nombre" size="40" onpaste="return false"/> 
                                        <input type="hidden" name="tipoqueja" value="Q" />
                                        <input type="hidden" name="tipo" value="Q" />  <input type="hidden" name="persona" value="1" /></div>

                                </div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="apaterno">Primer apellido  (*)</label></div>
                                    <div class="form-input"><input type="text" id="apaterno" tabindex="3" name="apaterno" size="35" onpaste="return false"/></div>
                                    <div class="form-texto"><label for="amaterno">Segundo apellido (*)</label></div>
                                    <div class="form-input"><input type="text" id="amaterno" tabindex="4" name="amaterno" size="35" onpaste="return false" /></div>
                                </div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="tipo_doc">Tipo de Documento (*)</label></div>
                                    <div class="form-input">
                                        <select size="1" name="tipo_doc"  id="tipodocumento" tabindex="5">
                                            <%=request.getAttribute("listaTipoDocumento")%>
                                        </select></div>
                                    <div class="form-texto"><label for="documento">Numero de Documento(*)</label></div>
                                    <div class="form-input"><input type="text" id="documento" tabindex="6" name="documento" size="35" onpaste="return false"/></div>
                                </div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="telefono">Tel&eacute;fono</label></div>
                                    <div class="form-input"><input type="text" id="telefono" name="telefono" size="35" tabindex="7" onpaste="return false"/></div>
                                    <div class="form-texto"><label for="sexo">Sexo:</label></div>
                                    <div class="form-input">Masculino 
                                        <input type="radio" id="m" name="sexo"value="M" checked="checked" tabindex="8"/>
                                        &nbsp;&nbsp; Femenino <input type="radio" id="f" name="sexo" value="F" tabindex="9"/></div>
                                </div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="mail">E-Mail(*)</label></div>
                                    <div class="form-input"><input type="text" id="mail" name="mail" tabindex="10" size="35" onpaste="return false"/></div>
                                    <div class="form-texto"><label for="fecha_nac">Fecha de nacimiento</label></div>
                                    <div class="form-input"><input type="text" class="w16em dateformat-d-ds-m-ds-Y" id="dp-2"  readonly="readonly" name="fecha_nac"  tabindex="1" value=""/></div>
                                </div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="direccion">Direcci&oacute;n (*):</label></div>
                                    <div class="form-input"><input type="text" id="direccion" name="direccion" size="35" tabindex="14" onpaste="return false" /></div>
                                    <div class="form-texto"><label for="departamento">Departamento (*):</label></div>
                                    <div class="form-input">
                                        <select size="1" id="departamento" class="idDepartamento" name="departamento" onchange ="Departamento(this.value)" tabindex="15">
                                            <%=request.getAttribute("listaDepartamentos")%> 
                                        </select>    
                                    </div>
                                </div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="provincia">Provincia (*):</label></div>
                                    <div class="form-input"><select id="provincia" size="1" name="provincia" onchange ='Provincia(this.value, document.getElementById("departamento").value)' tabindex="16">
                                            <option value = "" >---</option>
                                        </select>  </div>
                                    <div class="form-texto"><label for="distrito">Distrito (*):</label></div>
                                    <div class="form-input"><select id="distrito" size="1" name="distrito" tabindex="17">
                                            <option value = "" >---</option>
                                        </select></div>
                                </div>
                            </fieldset>
                            <br /><br />
                            <fieldset>
                                <legend>&nbsp;&nbsp;DATOS DE LA QUEJA&nbsp;&nbsp;</legend>

                                <div class="form-item">
                                    <div id="form-textoq">
                                        <label for="queja">Escriba una breve descripci&oacute;n de su queja (*)</label></div>
                                </div>

                                <div id="form-item-queja">
                                    <div id="form-texto-queja"><textarea id="queja" rows="5" name="desc_queja" cols="75" tabindex="18" onpaste="return false"></textarea>
                                    </div></div>

                                <div class="form-item">
                                    <div class="form-texto"><label for="adjunto1">Adjunte su archivo</label></div>
                                    <div class="form-input"><input id="adjunto" type="file" name="adjunto1" tabindex="19"/></div>
                                </div>


                                <br/>
                                Los campos marcados con (*) son obligatorios <br/>
                            </fieldset>
                            <div>
                                <br/><input type="submit" id="enviar" value="Enviar" name="B1" style="font-weight: bold" tabindex="20"/>
                                &nbsp;&nbsp; 
                                <input type="reset" id="limpiar" name="reset" value="Limpiar" style="font-weight: bold" tabindex="21"/>
                            </div>
                        </form>
                    </div>
                </div>

                <script>
                    //<![CDATA[
                    <%=request.getAttribute("listaProvincias")%>
                    <%=request.getAttribute("listaDistritos")%>

                    function Departamento(cod_dep) {
                        var xx, selOpcion, aa = 1;
                        var long = 0;
                        for (var i = document.forms.f1.provincia.options.length - 1; i >= 0; i--)
                        {
                            document.forms.f1.provincia.options[i] = null;
                        }

                        for (var i = document.forms.f1.distrito.options.length - 1; i >= 0; i--)
                        {
                            document.forms.f1.distrito.options[i] = null;
                        }
                        long = (mi_arreglo_prov.length - 1);
                        for (x = 0; x <= long; x++)
                        {
                            xx = mi_arreglo_prov[x][2].toString();
                            if (xx === cod_dep)
                            {
                                selOpcion = new Option(mi_arreglo_prov[x][1].toString(), mi_arreglo_prov[x][0].toString());
                                eval(document.forms.f1.provincia.options[aa] = selOpcion);
                                aa++
                            }
                        }
                    }

                    function Provincia(cod_pro, cod_dep) {
                        var xx, selOpcion, aa = 1;
                        var long = 0;
                        for (var i = document.forms.f1.distrito.options.length - 1; i >= 0; i--) {
                            document.forms.f1.distrito.options[i] = null;
                        }
                        long = (mi_arreglo_dist.length - 1);
                        for (x = 0; x <= long; x++) {
                            xx = mi_arreglo_dist[x][2].toString();
                            yy = mi_arreglo_dist[x][3].toString();
                            if (xx === cod_pro && yy === cod_dep) {
                                selOpcion = new Option(mi_arreglo_dist[x][1].toString(), mi_arreglo_dist[x][0].toString());
                                eval(document.forms.f1.distrito.options[aa] = selOpcion);
                                aa++;
                            }
                        }
                    }
                </script>

                <script type="text/javascript">

                    var nombre = document.getElementById("nombres");
                    nombre.setAttribute("autocomplete", "off");
                    var paterno = document.getElementById("apaterno");
                    paterno.setAttribute("autocomplete", "off");
                    var materno = document.getElementById("amaterno");
                    materno.setAttribute("autocomplete", "off");
                    var documento = document.getElementById("documento");
                    documento.setAttribute("autocomplete", "off");
                    var telefono = document.getElementById("telefono");
                    telefono.setAttribute("autocomplete", "off");
                    var mail = document.getElementById("mail");
                    mail.setAttribute("autocomplete", "off");
                    var direccion = document.getElementById("direccion");
                    direccion.setAttribute("autocomplete", "off");
                    var queja = document.getElementById("queja");
                    queja.setAttribute("autocomplete", "off");


                    //]]
                </script>

                <div id="central_inf"></div>
            </div>
            <div class="clear"></div>
            <div id="inferior">
                <div class="clear"></div>	
                <div class="columna_inter_int"><img src="imagenes/enlaces-interes-big.gif" alt="Enlaces de InterÃ©s" width="980" height="21" style="border:none" />
                    <div class="textos">
                        <div class="enlaces_int">
                            <ul>
                                <li><a href="https://puma.defensoria.gob.pe/cooperantes.php">Coop. Internacional</a></li>
                                <li><a href="http://www.peru.gob.pe/directorio/pep_directorio_poderes.asp" target="_blank">Enlaces de Gobierno</a></li>
                            </ul>
                        </div>
                        <div class="enlaces_int">
                            <ul>
                                <li><a href="https://puma.defensoria.gob.pe/preguntas-frecuentes.php">Preguntas frecuentes</a></li>
                                <li><a href="https://puma.defensoria.gob.pe/ecoeficiencia.php">Medidas de ecoeficiencia</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="copy">
                        <div id="submenu">
                            <p>Defensor&iacute;a del Pueblo: Jir&oacute;n Ucayali 394 -398 Cercado de Lima
                                Tel&eacute;fono: 311-0300 L&iacute;nea gratuita: 0800-15170</p>
                            <p><a href="mailto:webmaster@defensoria.gob.pe">webmaster@defensoria.gob.pe</a></p>
                        </div>
                    </div>
                </div>
                <div class="columna"><div class="titulo"></div></div>
                <div class="clear"></div>
            </div>	
        </div>
        <div id="pie">

            <div id="pie_conte">
                <div class="clear"></div>
                <div id="copy_r">
                    <p>Copyright @ Defensor&iacute;a del Pueblo 2016</p>
                </div>
            </div>

        </div><!-- Piwik -->
        <script type="text/javascript">
            var _paq = _paq || [];
            _paq.push(["trackPageView"]);
            _paq.push(["enableLinkTracking"]);

            (function () {
                var u = (("https:" == document.location.protocol) ? "https" : "http") + "://puma.defensoria.gob.pe/piwik/";
                _paq.push(["setTrackerUrl", u + "piwik.php"]);
                _paq.push(["setSiteId", "4"]);
                var d = document, g = d.createElement("script"), s = d.getElementsByTagName("script")[0];
                g.type = "text/javascript";
                g.defer = true;
                g.async = true;
                g.src = u + "piwik.js";
                s.parentNode.insertBefore(g, s);
            })();
        </script>
        <!-- End Piwik Code -->
    </body>
</html>