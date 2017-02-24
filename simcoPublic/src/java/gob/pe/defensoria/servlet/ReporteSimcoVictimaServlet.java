/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.servlet;

import gob.pe.defensoria.reporte.ReporteSimcoVictima;
import gob.pe.defensoria.service.SimcoService;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.context.FacesContext;
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
public class ReporteSimcoVictimaServlet extends HttpServlet {

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
        request.setAttribute("listaEstadoCaso", service.cargarTipoDocumento("120"));
        request.setAttribute("listaTipoAcontecimiento", service.cargarTipoDocumento("70"));
        String btnBuscar = request.getParameter("btnBuscar");
        String btnReset = request.getParameter("btnReset");
        if(StringUtils.isNotBlank(btnReset)){
            request.setAttribute("datatable", "");
            request.getRequestDispatcher("/reporteSimcoVictima.jsp").forward(request, response);
            return;
        }
        String datatable = null;
        String selectAnho = request.getParameter("selectAnho");
        String codigoCaso = request.getParameter("codigoCaso");
            String nombreCaso = request.getParameter("nomCaso");
            String codigoActor = request.getParameter("codigoActor");
            String nombreActor = request.getParameter("nomActor");
            String selectTipoCaso = request.getParameter("selectTipoCaso");
            String selectRegion = request.getParameter("selectRegion");
            String selectEstadoCaso = request.getParameter("selectEstadoCaso");
            String selectTipoAcontecimiento = request.getParameter("selectTipoAcontecimiento");
            String selectTipoActor = request.getParameter("selectTipoActor");
            ReporteSimcoVictima rsa = new ReporteSimcoVictima();
            rsa.setAnho(selectAnho);
            rsa.setCodigoCaso(codigoCaso);
            if(StringUtils.isNotBlank(codigoActor)){
                rsa.setIdActor(Long.parseLong(codigoActor));
            }
            rsa.setTipologiaCaso(selectTipoCaso);
            rsa.setIdRegion(selectRegion);
            rsa.setEstado(selectEstadoCaso);
            rsa.setTipoAcontecimiento(selectTipoAcontecimiento);
            rsa.setTipoActor(selectTipoActor);
        String tipoReporte = request.getParameter("tipoReporte");
        try {
            if(StringUtils.isNotBlank(btnBuscar)){
            datatable = reporteVictima(rsa);
            if(StringUtils.isBlank(datatable)){
                request.setAttribute("result", "0");
            }
            request.setAttribute("datatable", datatable);
            tipoReporte = "";
        }else{
            request.setAttribute("datatable", "");
        }
        if(StringUtils.equals(tipoReporte, "1")){
            reporteSimcoVictimaExcel(rsa, response, request);
            return;
        }
        if(StringUtils.equals(tipoReporte, "2")){
            reporteSimcoVictimaPdf(rsa, response, request);
            return;
        }
        request.setAttribute("selectAnho", selectAnho);
        request.setAttribute("codigoCaso", codigoCaso);
        request.setAttribute("nombreCaso", nombreCaso);
        request.setAttribute("codigoActor", codigoActor);
        request.setAttribute("nombreActor", nombreActor);
            request.setAttribute("selectTipoCaso", selectTipoCaso);
            request.setAttribute("selectRegion", selectRegion);
            request.setAttribute("selectEstadoCaso", selectEstadoCaso);
            request.setAttribute("selectTipoAcontecimiento", selectTipoAcontecimiento);
            request.setAttribute("selectTipoActor", selectTipoActor);
        request.getRequestDispatcher("/reporteSimcoVictima.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    
    public String reporteVictima(ReporteSimcoVictima reporteSimcoVictima) {
        List<ReporteSimcoVictima> listReporteVictima = service.reporteVictima(reporteSimcoVictima);
        for(ReporteSimcoVictima rsv : listReporteVictima){
            if(StringUtils.isNotBlank(rsv.getTipoAcontecimiento())){
                rsv.setSubTipoAcontecimientoDetalle(obtenerSubTipoAcontecimiento(rsv.getTipoAcontecimiento()));
                rsv.setTipoAcontecimientoDetalle(obtenerTipoAcontecimiento(rsv.getTipoAcontecimiento()));
                rsv.setGrupoAcontecimientoDetalle(obtenerGrupoAcontecimiento(rsv.getTipoAcontecimiento()));
                if(rsv.getIndicadorNN() != null && rsv.getIndicadorNN() == 1)
                    rsv.setTipoVictima("NN");    
            }
        }
        return generarDatatable(listReporteVictima);
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

    private String generarDatatable(List<ReporteSimcoVictima> lista){
        StringBuilder sb = new StringBuilder();
        if(lista.size() > 0){
            sb.append("<td style='background : #0088CC; color : white; width: 2%'>Nro</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 20%'>Tipo</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 20%'>Subtipo</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 7%'>Región</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 10%'>Tipo de victima e la violencia</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 19%'>Apellidos y nombres</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 5%'>Edad</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 5%'>Sexo</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Civil/PNP/FFAA</td>");
        }
        
        int i = 0;
        for(ReporteSimcoVictima rsa : lista){
            i++;
            sb.append("<tr>");
                sb.append("<td>").append(i).append("</td>");
                sb.append("<td>").append(rsa.getTipoAcontecimientoDetalle()).append("</td>");
                sb.append("<td>").append(rsa.getSubTipoAcontecimientoDetalle()).append("</td>");
                sb.append("<td>").append(rsa.getDepartamento()).append("</td>");
                sb.append("<td>").append(rsa.getTipoVictima()).append("</td>");
                sb.append("<td>").append(rsa.getNombreCompletoVictima()).append("</td>");
                sb.append("<td>").append(rsa.getEdadVictima()).append("</td>");
                sb.append("<td>").append(rsa.getSexoVictima()).append("</td>");
                sb.append("<td>").append(rsa.getTipoEstadoVictima()).append("</td>");
            sb.append("</tr>");
        }
        return sb.toString();
    }
    
    private void reporteSimcoVictimaExcel(ReporteSimcoVictima reporteSimcoVictimaModel, HttpServletResponse httpServletResponse,HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoVictima(reporteSimcoVictimaModel, 1, request);
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
    
    public void reporteSimcoVictimaPdf(ReporteSimcoVictima reporteSimcoVictimaModel, HttpServletResponse httpServletResponse, HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoVictima(reporteSimcoVictimaModel, 2, request);
        FacesContext facesContext = FacesContext.getCurrentInstance();
        httpServletResponse.setContentType("application/pdf");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteSimcoActividad.pdf");
        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, servletOutputStream);
        facesContext.responseComplete();
        facesContext.renderResponse();
    }
    
    private void initJasperSimcoVictima(ReporteSimcoVictima reporteSimcoVictimaModel, int tipo, HttpServletRequest request) throws JRException {
        List<ReporteSimcoVictima> lista = listarSimcoVictima(reporteSimcoVictimaModel);
        JRBeanCollectionDataSource beanCollectionDataSource = new JRBeanCollectionDataSource(lista);
        String path = request.getRealPath(separador);
        if(tipo == 1){
            jasperPrint = JasperFillManager.fillReport(path+"/jasper/reporteSimcoVictimaPortal.jasper", new HashMap(), beanCollectionDataSource);
            //jasperPrint = JasperFillManager.fillReport("/home/glassfish/glassfish4/glassfish/domains/domain1/applications/simcoPublic/jasper/reporteSimcoVictimaPortal.jasper", new HashMap(), beanCollectionDataSource);
        }    
        else{
            jasperPrint = JasperFillManager.fillReport(path+"/jasper/reporteSimcoVictimaPortalPDF.jasper", new HashMap(), beanCollectionDataSource);
            //jasperPrint = JasperFillManager.fillReport("/home/glassfish/glassfish4/glassfish/domains/domain1/applications/simcoPublic/jasper/reporteSimcoVictimaPortalPDF.jasper", new HashMap(), beanCollectionDataSource);
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
    
    public List<ReporteSimcoVictima> listarSimcoVictima(ReporteSimcoVictima reporteSimcoVictima) {
        List<ReporteSimcoVictima> listReporteVictima = service.reporteVictima(reporteSimcoVictima);
        for(ReporteSimcoVictima rsv : listReporteVictima){
            if(StringUtils.isNotBlank(rsv.getTipoAcontecimiento())){
                rsv.setSubTipoAcontecimientoDetalle(obtenerSubTipoAcontecimiento(rsv.getTipoAcontecimiento()));
                rsv.setTipoAcontecimientoDetalle(obtenerTipoAcontecimiento(rsv.getTipoAcontecimiento()));
                rsv.setGrupoAcontecimientoDetalle(obtenerGrupoAcontecimiento(rsv.getTipoAcontecimiento()));
                if(rsv.getIndicadorNN() != null && rsv.getIndicadorNN() == 1)
                    rsv.setTipoVictima("NN");    
            }
        }
        return listReporteVictima;
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
