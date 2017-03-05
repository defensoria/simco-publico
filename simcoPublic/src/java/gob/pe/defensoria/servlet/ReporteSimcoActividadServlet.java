/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.servlet;

import gob.pe.defensoria.reporte.ReporteSimcoActividad;
import gob.pe.defensoria.service.SimcoService;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRXlsExporterParameter;
import net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter;
import org.apache.commons.lang3.StringUtils;

/**
 *
 * @author carlos
 */
public class ReporteSimcoActividadServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @EJB
    private SimcoService service;
    
    JasperPrint jasperPrint;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("listaAnhos", service.cargarAnho());
        request.setAttribute("listaTipoCaso", service.cargarTipoDocumento("90"));
        request.setAttribute("listaRegion", service.listarRegion());
        request.setAttribute("listaEstadoCaso", service.cargarTipoDocumento());
        request.setAttribute("listaTipoAcontecimiento", service.cargarTipoDocumento("70"));
        String btnBuscar = request.getParameter("btnBuscar");
        String btnReset = request.getParameter("btnReset");
        if(StringUtils.isNotBlank(btnReset)){
            request.setAttribute("datatable", "");
            request.getRequestDispatcher("/reporteSimcoActividad.jsp").forward(request, response);
            return;
        }
        String datatable = null;
        String selectAnho = request.getParameter("selectAnho");
            String codigoCaso = request.getParameter("codigoCaso");
            String nombreCaso = request.getParameter("nomCaso");
            String selectTipoCaso = request.getParameter("selectTipoCaso");
            String selectRegion = request.getParameter("selectRegion");
            String selectEstadoCaso = request.getParameter("selectEstadoCaso");
            String selectTipoAcontecimiento = request.getParameter("selectTipoAcontecimiento");
            String selectTipoActor = request.getParameter("selectTipoActor");
            ReporteSimcoActividad rsa = new ReporteSimcoActividad();
            rsa.setAnho(selectAnho);
            rsa.setCodigoCaso(codigoCaso);
            rsa.setTipologiaCaso(selectTipoCaso);
            rsa.setIdRegion(selectRegion);
            rsa.setEstado(selectEstadoCaso);
            rsa.setTipoAcontecimiento(selectTipoAcontecimiento);
            rsa.setTipoActor(selectTipoActor);
        String tipoReporte = request.getParameter("tipoReporte");
        try {
            if(StringUtils.isNotBlank(btnBuscar)){
            datatable = reporteActividades(rsa);
            if(StringUtils.isBlank(datatable)){
                request.setAttribute("result", "0");
            }
            request.setAttribute("datatable", datatable);
            tipoReporte = "";
        }else{
            request.setAttribute("datatable", "");
        }
        if(StringUtils.equals(tipoReporte, "1")){
            reporteSimcoActividadExcel(rsa, response, request);
            return;
        }
        if(StringUtils.equals(tipoReporte, "2")){
            reporteSimcoActividadPdf(rsa, response, request);
            return;
        }
        request.setAttribute("selectAnho", selectAnho);
        request.setAttribute("codigoCaso", codigoCaso);
        request.setAttribute("nombreCaso", nombreCaso);
            request.setAttribute("selectTipoCaso", selectTipoCaso);
            request.setAttribute("selectRegion", selectRegion);
            request.setAttribute("selectEstadoCaso", selectEstadoCaso);
            request.setAttribute("selectTipoAcontecimiento", selectTipoAcontecimiento);
            request.setAttribute("selectTipoActor", selectTipoActor);
        request.getRequestDispatcher("/reporteSimcoActividad.jsp").forward(request, response);
        } catch (IOException | ServletException | JRException e) {
            e.printStackTrace();
        }

    }
    
    public String reporteActividades(ReporteSimcoActividad reporteSimcoActividadModel) {
        List<ReporteSimcoActividad> listReporteActividad = service.reporteActividad(reporteSimcoActividadModel);
        for (ReporteSimcoActividad ac : listReporteActividad) {
            //ac.setCantidadActores(service.actorXactividadSimpleBuscarCount(ac.getIdActividad()));
            if (StringUtils.equals(ac.getClaseActividad(), "AD")) {
                ac.setClaseActividad("Actuacion defensorial");
                ac.setTipoActividadDetalle(ac.getTipoActuacionDefensorialDetalle());
                if(StringUtils.isNotBlank(ac.getTipoActuacionDefensorial()))
                    ac.setGrupoActividadDetalle(obtenerGrupoActuacionDefensorial(ac.getTipoActuacionDefensorial()));
            }
            if (StringUtils.equals(ac.getClaseActividad(), "AC")) {
                ac.setClaseActividad("Acontecimiento");
                ac.setTipoViolenciaItem1("NO");
                        ac.setTipoViolenciaItem2("NO");
                        ac.setTipoViolenciaItem3("NO");
                        ac.setTipoViolenciaItem4("NO");
                        ac.setTipoViolenciaItem5("NO");
                        ac.setTipoViolenciaItem6("NO");
                        ac.setTipoViolenciaItem7("NO");
                if (StringUtils.isNotBlank(ac.getTipoViolencia())) {
                    List<String> itemsTipoViolencia = Arrays.asList(ac.getTipoViolencia().split("\\s*,\\s*"));
                    List<String> ses = new ArrayList<>();
                    for (String s : itemsTipoViolencia) {
                        
                        if(StringUtils.equals(s, "01")){
                            ac.setTipoViolenciaItem1("SI");
                        }
                        if(StringUtils.equals(s, "02")){
                            ac.setTipoViolenciaItem2("SI");
                        }
                        if(StringUtils.equals(s, "03")){
                            ac.setTipoViolenciaItem3("SI");
                        }
                        if(StringUtils.equals(s, "04")){
                            ac.setTipoViolenciaItem4("SI");
                        }
                        if(StringUtils.equals(s, "05")){
                            ac.setTipoViolenciaItem5("SI");
                        }
                        if(StringUtils.equals(s, "06")){
                            ac.setTipoViolenciaItem6("SI");
                        }
                        if(StringUtils.equals(s, "07")){
                            ac.setTipoViolenciaItem7("SI");
                        }
                        String nombre = service.consultarParametroValor(s, "250");
                        ses.add(nombre);
                    }
                    ac.setListaTipoViolencia(ses);
                }
                //ac.setCantidadAcuerdos(service.actaAcuerdoDetalleCount(ac.getIdActividad()));
                
                if(StringUtils.isNotBlank(ac.getTipoAcontecimiento())){
                    ac.setSubTipoAcontecimientoDetalle(obtenerSubTipoAcontecimiento(ac.getTipoAcontecimiento()));
                    ac.setTipoAcontecimientoDetalle(obtenerTipoAcontecimiento(ac.getTipoAcontecimiento()));
                    ac.setGrupoAcontecimientoDetalle(obtenerGrupoAcontecimiento(ac.getTipoAcontecimiento()));
                    ac.setTipoActividadDetalle(ac.getTipoAcontecimientoDetalle());
                    ac.setGrupoActividadDetalle(ac.getGrupoAcontecimientoDetalle());
                }
                Map<String, String> victimas = service.listaVictimas(ac.getIdActividad());
                List<String> itemsResultadoViolencia = new ArrayList<>();
                ac.setResultadoViolenciaItem1(0);
                ac.setResultadoViolenciaItem2(0);
                ac.setResultadoViolenciaItem3(0);
                ac.setResultadoViolenciaItem4(0);
                ac.setResultadoViolenciaItem5(0);
                ac.setResultadoViolenciaItem6(0);
                ac.setResultadoViolenciaItem7(0);
                for (Map.Entry entry : victimas.entrySet()){
                    String item = entry.getKey()+": "+entry.getValue();
                    itemsResultadoViolencia.add(item);
                    if(StringUtils.equals(entry.getKey().toString(), "Muertos"))
                        ac.setResultadoViolenciaItem1(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Heridos"))
                        ac.setResultadoViolenciaItem2(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Secuestrados"))
                        ac.setResultadoViolenciaItem3(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Detenidos"))
                        ac.setResultadoViolenciaItem4(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Desaparecidos"))
                        ac.setResultadoViolenciaItem5(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Otros"))
                        ac.setResultadoViolenciaItem6(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "NN"))
                        ac.setResultadoViolenciaItem7(Integer.parseInt(entry.getValue().toString()));
                }
                ac.setListaResultadoViolencia(itemsResultadoViolencia);
            }
        }
        return generarDatatable(listReporteActividad);
    }

    private String generarDatatable(List<ReporteSimcoActividad> lista){
        StringBuilder sb = new StringBuilder();
        if(lista.size() > 0){
            sb.append("<td style='background : #0088CC; color : white; width: 2%'>Nro</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 21%'>Nombre</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 9%'>Acontecimiento / Actuación</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 7%'>Fecha</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 10%'>Tipo</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Subtipo</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Tipo de violencia</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Resultado de la violencia</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 10%'>Región</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 2%'>Acuerdos</td>");
        }
        int i = 0;
        for(ReporteSimcoActividad rsa : lista){
            i++;
            sb.append("<tr>");
                sb.append("<td>").append(i).append("</td>");
                sb.append("<td>").append(rsa.getNombreActividad()).append("</td>");
                sb.append("<td>").append(rsa.getClaseActividad()).append("</td>");
                sb.append("<td>").append(rsa.getFecha()).append("</td>");
                 sb.append("<td>");
                if(rsa.getTipoActividadDetalle() == null)
                    sb.append("");
                else
                    sb.append(rsa.getTipoActividadDetalle());
                sb.append("</td>");
                
                sb.append("<td>");
                if(rsa.getSubTipoAcontecimientoDetalle() == null)
                    sb.append("");
                else
                    sb.append(rsa.getSubTipoAcontecimientoDetalle());
                sb.append("</td>");
                sb.append("<td>");
                if(rsa.getListaTipoViolencia() != null){
                    for(String s : rsa.getListaTipoViolencia()){
                        sb.append("-").append(s).append("<br/>");
                    }
                }
                sb.append("</td>");
                sb.append("<td>");
                if(rsa.getListaResultadoViolencia() != null){
                    //sb.append("<ul type = 'square'>");
                    
                    for(String s : rsa.getListaResultadoViolencia()){
                        sb.append("-").append(s).append("<br/>");
                    }
                    //sb.append("</ul>");
                }    
                sb.append("</td>");
                sb.append("<td>").append(rsa.getNombreRegion()).append("</td>");
                sb.append("<td>");
                if(rsa.getCantidadAcuerdos() == null)
                    sb.append("0");
                else
                    sb.append(rsa.getCantidadAcuerdos());
                sb.append("</td>");
            sb.append("</tr>");
        }
        return sb.toString();
    }
    
    private String obtenerGrupoActuacionDefensorial(String tipo) {
        if (StringUtils.equals(tipo, "01") || StringUtils.equals(tipo, "02")) {
            return "Acciones de defensa legal";
        }
        if (StringUtils.equals(tipo, "03") || StringUtils.equals(tipo, "04") || StringUtils.equals(tipo, "05")){
            return "Acciones humanitarias";
        }
        if (StringUtils.equals(tipo, "06") || StringUtils.equals(tipo, "07")) {
            return "Intermediación";
        }
        if (StringUtils.equals(tipo, "08") || StringUtils.equals(tipo, "09") || StringUtils.equals(tipo, "10") || StringUtils.equals(tipo, "11")
                || StringUtils.equals(tipo, "12") || StringUtils.equals(tipo, "13") || StringUtils.equals(tipo, "14")){
            return "Supervisión preventiva";
        }
        return null;
    }
    
    private String obtenerSubTipoAcontecimiento(String subTipo) {
        if (StringUtils.equals(subTipo, "01")) {
            return "Movilización";
        }
        if (StringUtils.equals(subTipo, "02")) {
            return "Bloqueo de vías (carreteras o vías de acceso)";
        }
        if (StringUtils.equals(subTipo, "03")) {
            return "Paros (24 horas, 48 horas, 72 horas, indefinido)";
        }
        if (StringUtils.equals(subTipo, "04")) {
            return "Plantones (concentraciones o mítines)";
        }
        if (StringUtils.equals(subTipo, "05")) {
            return "Huelgas (huelga indefinida)";
        }
        if (StringUtils.equals(subTipo, "06")) {
            return "Toma de entidades, locales";
        }
        if (StringUtils.equals(subTipo, "07")) {
            return "Marcha";
        }
        if (StringUtils.equals(subTipo, "08")) {
            return "Otros (Huelgas de hambre, marchas de sacrificio, vigilias, encadenamientos, desangramientos, crucifixiones, etc.)";
        }
        if (StringUtils.equals(subTipo, "09")) {
            return "Pedido de información";
        }
        if (StringUtils.equals(subTipo, "10")) {
            return "Envío de información";
        }
        if (StringUtils.equals(subTipo, "11")) {
            return "Llamado a la acción/intervención";
        }
        if (StringUtils.equals(subTipo, "22")) {
            return "Decreto supremo";
        }
        if (StringUtils.equals(subTipo, "23")) {
            return "Resolución suprema";
        }
        if (StringUtils.equals(subTipo, "24")) {
            return "Resolución directoral";
        }
        if (StringUtils.equals(subTipo, "25")) {
            return "Resolución jefatural";
        }
        if (StringUtils.equals(subTipo, "26")) {
            return "otras resoluciones";
        }
        if (StringUtils.equals(subTipo, "27")) {
            return "Sentencia";
        }
        if (StringUtils.equals(subTipo, "28")) {
            return "Medida cautelar";
        }
        return null;
    }

    private String obtenerTipoAcontecimiento(String subTipo) {
        if (StringUtils.equals(subTipo, "01") || StringUtils.equals(subTipo, "02") || StringUtils.equals(subTipo, "03") || StringUtils.equals(subTipo, "04")
                || StringUtils.equals(subTipo, "05") || StringUtils.equals(subTipo, "06") || StringUtils.equals(subTipo, "07") || StringUtils.equals(subTipo, "08")) {
            return "Acciones colectivas de protesta";
        }
        if (StringUtils.equals(subTipo, "09") || StringUtils.equals(subTipo, "10") || StringUtils.equals(subTipo, "11")) {
            return "Envío de oficios";
        }
        if (StringUtils.equals(subTipo, "12")) 
            return "Detención";
        if (StringUtils.equals(subTipo, "13")) 
            return "Intervenciones estatales";
        if (StringUtils.equals(subTipo, "14"))
            return "Intervenciones/acciones privadas";
        if (StringUtils.equals(subTipo, "15"))
            return "Resoluciones del TC";
        if (StringUtils.equals(subTipo, "16")) 
            return "Actos Legislativos";
        if (StringUtils.equals(subTipo, "17"))
            return "Resolución fiscal";
        if (StringUtils.equals(subTipo, "18"))
            return "Pronunciamientos";
        if (StringUtils.equals(subTipo, "19"))
            return "Opiniones";
        if (StringUtils.equals(subTipo, "20"))
            return "Reuniones";
        
        if (StringUtils.equals(subTipo, "22") || StringUtils.equals(subTipo, "23") || StringUtils.equals(subTipo, "24")
                || StringUtils.equals(subTipo, "25") || StringUtils.equals(subTipo, "26")) {
            return "Actos Administrativos";
        }
        if (StringUtils.equals(subTipo, "27") || StringUtils.equals(subTipo, "28")) {
            return "Resolución judicial";
        }

        return null;
    }

    private String obtenerGrupoAcontecimiento(String subTipo) {
        if (StringUtils.equals(subTipo, "01") || StringUtils.equals(subTipo, "02") || StringUtils.equals(subTipo, "03") || StringUtils.equals(subTipo, "04")
                || StringUtils.equals(subTipo, "05") || StringUtils.equals(subTipo, "06") || StringUtils.equals(subTipo, "07") || StringUtils.equals(subTipo, "08")) {
            return "Acciones en general";
        }
        if (StringUtils.equals(subTipo, "09") || StringUtils.equals(subTipo, "10") || StringUtils.equals(subTipo, "11")) {
            return "Acciones en general";
        }
        if (StringUtils.equals(subTipo, "12") || StringUtils.equals(subTipo, "13") || StringUtils.equals(subTipo, "14")) {
            return "Acciones en general";
        }
        if (StringUtils.equals(subTipo, "15") || StringUtils.equals(subTipo, "16") || StringUtils.equals(subTipo, "17")) {
            return "Emisión de normas y/o resoluciones";
        }
        if (StringUtils.equals(subTipo, "18") || StringUtils.equals(subTipo, "19")) {
            return "Declaraciones públicas";
        }
        if (StringUtils.equals(subTipo, "20")) {
            return "Acciones en general";
        }
        if (StringUtils.equals(subTipo, "21")) {
            return subTipo;
        }
        if (StringUtils.equals(subTipo, "22") || StringUtils.equals(subTipo, "23") || StringUtils.equals(subTipo, "24")
                || StringUtils.equals(subTipo, "25") || StringUtils.equals(subTipo, "26")) {
            return "Emisión de normas y/o resoluciones";
        }
        if (StringUtils.equals(subTipo, "27") || StringUtils.equals(subTipo, "28")) {
            return "Emisión de normas y/o resoluciones";
        }
        return null;
    }
    
    private void reporteSimcoActividadExcel(ReporteSimcoActividad reporteSimcoActividadModel, HttpServletResponse httpServletResponse, HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoActividad(reporteSimcoActividadModel, 1, request);
        httpServletResponse.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteActividad.xlsx");
        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        JRXlsxExporter jrXlsxExporter = new JRXlsxExporter();
        jrXlsxExporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
        jrXlsxExporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.TRUE);
        jrXlsxExporter.setParameter(JRExporterParameter.OUTPUT_STREAM, servletOutputStream);
        jrXlsxExporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
        jrXlsxExporter.setParameter(JRXlsExporterParameter.IS_DETECT_CELL_TYPE, Boolean.TRUE);
        jrXlsxExporter.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);
        jrXlsxExporter.setParameter(JRXlsExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);
        jrXlsxExporter.exportReport();
    }
    
    public void reporteSimcoActividadPdf(ReporteSimcoActividad reporteSimcoActividadModel, HttpServletResponse httpServletResponse, HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoActividad(reporteSimcoActividadModel, 2, request);
        httpServletResponse.setContentType("application/pdf");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteSimcoActividad.pdf");
        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, servletOutputStream);
        
    }
    
    private void initJasperSimcoActividad(ReporteSimcoActividad reporteSimcoActividadModel, int tipo, HttpServletRequest request) throws JRException {
        List<ReporteSimcoActividad> lista = listarSimcoActividad(reporteSimcoActividadModel);
        JRBeanCollectionDataSource beanCollectionDataSource = new JRBeanCollectionDataSource(lista);
        String path = request.getRealPath(separador);
        if(tipo == 1){
            //WINDOWS
            //jasperPrint = JasperFillManager.fillReport(path+"/jasper/reporteSimcoActividadPortal.jasper" , new HashMap(), beanCollectionDataSource);
            //linux
            jasperPrint = JasperFillManager.fillReport("/home/glassfish/glassfish4/glassfish/domains/domain1/applications/simcoPublic/jasper/reporteSimcoActividadPortal.jasper", new HashMap(), beanCollectionDataSource);
        }
            
        else{
            //WINDOWS
            //jasperPrint = JasperFillManager.fillReport(path+"/jasper/reporteSimcoActividadPortalPDF.jasper", new HashMap(), beanCollectionDataSource);
            //linux
            jasperPrint = JasperFillManager.fillReport("/home/glassfish/glassfish4/glassfish/domains/domain1/applications/simcoPublic/jasper/reporteSimcoActividadPortalPDF.jasper", new HashMap(), beanCollectionDataSource);   
        }
    }
    
        
    protected String separador = "/"; //linux
    //protected String separador = "\\"; //windows

    protected static String FILE_SYSTEM="/home/glassfish/glassfish4/glassfish/domains/domain1/docroot/filesystem/";//linux
    //protected static String FILE_SYSTEM = "C:/server/glassfish-4.0/glassfish4/glassfish/domains/domain1/docroot/filesystem/";//windows
    
    public String retornapath(String cadena) {
        int cont = 0;
        for (int i = 0; i < cadena.length(); i++) {
            if (separador.equals(cadena.substring(i, i + 1))) {
                cont = i;
            }
        }
        return cadena.substring(0, cont);
    }

    public String retornaRutaPath(HttpServletRequest request) {
        String path = request.getRealPath(separador);
        System.out.println(path);
        return retornapath(retornapath(path));
    }
    
    private List<ReporteSimcoActividad> listarSimcoActividad(ReporteSimcoActividad reporteSimcoActividadModel) {
        List<ReporteSimcoActividad> listReporteActividad = service.reporteActividad(reporteSimcoActividadModel);
        for (ReporteSimcoActividad ac : listReporteActividad) {
            //ac.setCantidadActores(service.actorXactividadSimpleBuscarCount(ac.getIdActividad()));
            if (StringUtils.equals(ac.getClaseActividad(), "AD")) {
                ac.setClaseActividad("Actuacion defensorial");
                ac.setTipoActividadDetalle(ac.getTipoActuacionDefensorialDetalle());
                if(StringUtils.isNotBlank(ac.getTipoActuacionDefensorial()))
                    ac.setGrupoActividadDetalle(obtenerGrupoActuacionDefensorial(ac.getTipoActuacionDefensorial()));
            }
            if (StringUtils.equals(ac.getClaseActividad(), "AC")) {
                ac.setClaseActividad("Acontecimiento");
                ac.setTipoViolenciaItem1("NO");
                        ac.setTipoViolenciaItem2("NO");
                        ac.setTipoViolenciaItem3("NO");
                        ac.setTipoViolenciaItem4("NO");
                        ac.setTipoViolenciaItem5("NO");
                        ac.setTipoViolenciaItem6("NO");
                        ac.setTipoViolenciaItem7("NO");
                if (StringUtils.isNotBlank(ac.getTipoViolencia())) {
                    List<String> itemsTipoViolencia = Arrays.asList(ac.getTipoViolencia().split("\\s*,\\s*"));
                    List<String> ses = new ArrayList<>();
                    for (String s : itemsTipoViolencia) {
                        
                        if(StringUtils.equals(s, "01")){
                            ac.setTipoViolenciaItem1("SI");
                        }
                        if(StringUtils.equals(s, "02")){
                            ac.setTipoViolenciaItem2("SI");
                        }
                        if(StringUtils.equals(s, "03")){
                            ac.setTipoViolenciaItem3("SI");
                        }
                        if(StringUtils.equals(s, "04")){
                            ac.setTipoViolenciaItem4("SI");
                        }
                        if(StringUtils.equals(s, "05")){
                            ac.setTipoViolenciaItem5("SI");
                        }
                        if(StringUtils.equals(s, "06")){
                            ac.setTipoViolenciaItem6("SI");
                        }
                        if(StringUtils.equals(s, "07")){
                            ac.setTipoViolenciaItem7("SI");
                        }
                        String nombre = service.consultarParametroValor(s, "250");
                        ses.add(nombre);
                    }
                    ac.setListaTipoViolencia(ses);
                }
                //ac.setCantidadAcuerdos(service.actaAcuerdoDetalleCount(ac.getIdActividad()));
                
                if(StringUtils.isNotBlank(ac.getTipoAcontecimiento())){
                    ac.setSubTipoAcontecimientoDetalle(obtenerSubTipoAcontecimiento(ac.getTipoAcontecimiento()));
                    ac.setTipoAcontecimientoDetalle(obtenerTipoAcontecimiento(ac.getTipoAcontecimiento()));
                    ac.setGrupoAcontecimientoDetalle(obtenerGrupoAcontecimiento(ac.getTipoAcontecimiento()));
                    ac.setTipoActividadDetalle(ac.getTipoAcontecimientoDetalle());
                    ac.setGrupoActividadDetalle(ac.getGrupoAcontecimientoDetalle());
                }
                Map<String, String> victimas = service.listaVictimas(ac.getIdActividad());
                List<String> itemsResultadoViolencia = new ArrayList<>();
                ac.setResultadoViolenciaItem1(0);
                ac.setResultadoViolenciaItem2(0);
                ac.setResultadoViolenciaItem3(0);
                ac.setResultadoViolenciaItem4(0);
                ac.setResultadoViolenciaItem5(0);
                ac.setResultadoViolenciaItem6(0);
                ac.setResultadoViolenciaItem7(0);
                for (Map.Entry entry : victimas.entrySet()){
                    String item = entry.getKey()+": "+entry.getValue();
                    itemsResultadoViolencia.add(item);
                    if(StringUtils.equals(entry.getKey().toString(), "Muertos"))
                        ac.setResultadoViolenciaItem1(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Heridos"))
                        ac.setResultadoViolenciaItem2(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Secuestrados"))
                        ac.setResultadoViolenciaItem3(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Detenidos"))
                        ac.setResultadoViolenciaItem4(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Desaparecidos"))
                        ac.setResultadoViolenciaItem5(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "Otros"))
                        ac.setResultadoViolenciaItem6(Integer.parseInt(entry.getValue().toString()));
                    if(StringUtils.equals(entry.getKey().toString(), "NN"))
                        ac.setResultadoViolenciaItem7(Integer.parseInt(entry.getValue().toString()));
                }
                ac.setListaResultadoViolencia(itemsResultadoViolencia);
            }
        }
        return listReporteActividad;
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
