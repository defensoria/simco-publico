/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.servlet;

import gob.pe.defensoria.reporte.ReporteSimcoCaso;
import gob.pe.defensoria.service.SimcoService;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
public class ReporteSimcoCasoServlet extends HttpServlet {

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
        System.out.println(request.getRealPath(separador)); 
        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("listaAnhos", service.cargarAnho());
        request.setAttribute("listaTipoCaso", service.cargarTipoDocumento("90"));
        request.setAttribute("listaRegion", service.listarRegion());
        request.setAttribute("listaEstadoCaso", service.cargarTipoDocumento());
        request.setAttribute("listaTipoAcontecimiento", service.cargarTipoDocumento("70"));
        String btnBuscar = request.getParameter("btnBuscar");
        String btnReset = request.getParameter("btnReset");
        if (StringUtils.isNotBlank(btnReset)) {
            request.setAttribute("datatable", "");
            request.getRequestDispatcher("/reporteSimcoCaso.jsp").forward(request, response);
            return;
        }
        String datatable = null;
        String selectAnho = request.getParameter("selectAnho");
        String selectTipoCaso = request.getParameter("selectTipoCaso");
        String selectRegion = request.getParameter("selectRegion");
        String selectEstadoCaso = request.getParameter("selectEstadoCaso");
        String selectTipoAcontecimiento = request.getParameter("selectTipoAcontecimiento");
        String selectTipoActor = request.getParameter("selectTipoActor");
        ReporteSimcoCaso rsa = new ReporteSimcoCaso();
        rsa.setAnho(selectAnho);
        rsa.setTipologia(selectTipoCaso);
        rsa.setIdRegion(selectRegion);
        rsa.setEstado(selectEstadoCaso);
        rsa.setTipoAcontecimiento(selectTipoAcontecimiento);
        rsa.setTipoActor(selectTipoActor);
        String tipoReporte = request.getParameter("tipoReporte");
        try {
            if (StringUtils.isNotBlank(btnBuscar)) {
                datatable = reporteCasos(rsa);
                if(StringUtils.isBlank(datatable)){
                    request.setAttribute("result", "0");
                }
                request.setAttribute("datatable", datatable);
                tipoReporte = "";
            } else {
                request.setAttribute("datatable", "");
            }
            if (StringUtils.equals(tipoReporte, "1")) {
                reporteSimcoCasoExcel(rsa, response, request);
                return;
            }
            if (StringUtils.equals(tipoReporte, "2")) {
                reporteSimcoCasoPdf(rsa, response, request);
                return;
            }
            request.setAttribute("selectAnho", selectAnho);
            request.setAttribute("selectTipoCaso", selectTipoCaso);
            request.setAttribute("selectRegion", selectRegion);
            request.setAttribute("selectEstadoCaso", selectEstadoCaso);
            request.setAttribute("selectTipoAcontecimiento", selectTipoAcontecimiento);
            request.setAttribute("selectTipoActor", selectTipoActor);
            request.getRequestDispatcher("/reporteSimcoCaso.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String reporteCasos(ReporteSimcoCaso reporteSimcoCasoModel) {
        List<ReporteSimcoCaso> listReporteCaso = service.reporteCaso(reporteSimcoCasoModel);
        return generarDatatable(listReporteCaso);
    }

    private String generarDatatable(List<ReporteSimcoCaso> lista) {
        StringBuilder sb = new StringBuilder();
        if(lista.size() > 0){
            sb.append("<td style='background : #0088CC; color : white; width: 2%'>Nro</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 21%'>Nombre del caso</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 7%'>Fecha de incio de caso</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 9%'>Región principal del caso</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 10%'>Tipología</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Actividad</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Estado del caso</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 13%'>Fase</td>");
        }
        int i = 0;
        for (ReporteSimcoCaso rsa : lista) {
            i++;
            sb.append("<tr>");
            sb.append("<td>").append(i).append("</td>");
            sb.append("<td>").append(rsa.getNombreCaso()).append("</td>");
            sb.append("<td>").append(rsa.getFechaInicioCaso()).append("</td>");
            sb.append("<td>").append(rsa.getRegionPrincial()).append("</td>");
            sb.append("<td>").append(rsa.getTipologia()).append("</td>");
            sb.append("<td>").append(rsa.getActividad()).append("</td>");
            sb.append("<td>").append(rsa.getEstado()).append("</td>");
            sb.append("<td>").append(rsa.getFase()).append("</td>");
            sb.append("</tr>");
        }
        return sb.toString();
    }

    private void reporteSimcoCasoExcel(ReporteSimcoCaso reporteSimcoCasoModel, HttpServletResponse httpServletResponse, HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoCaso(reporteSimcoCasoModel, 1, request);
        httpServletResponse.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteCaso.xlsx");
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

    public void reporteSimcoCasoPdf(ReporteSimcoCaso reporteSimcoCasoModel, HttpServletResponse httpServletResponse, HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoCaso(reporteSimcoCasoModel, 2, request);
        httpServletResponse.setContentType("application/pdf");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteCaso.pdf");
        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, servletOutputStream);
        
    }

    private void initJasperSimcoCaso(ReporteSimcoCaso reporteSimcoActividadModel, int tipo, HttpServletRequest request) throws JRException {
        List<ReporteSimcoCaso> lista = listarSimcoCaso(reporteSimcoActividadModel);
        JRBeanCollectionDataSource beanCollectionDataSource = new JRBeanCollectionDataSource(lista);
        //if(tipo == 1)
        //windows
        //jasperPrint = JasperFillManager.fillReport(retornaRutaPath(request).concat("/web/jasper/reporteSimcoCasoPortal.jasper"), new HashMap(), beanCollectionDataSource);
        //linux
        jasperPrint = JasperFillManager.fillReport("/home/glassfish/glassfish4/glassfish/domains/domain1/applications/simcoPublic/jasper/reporteSimcoCasoPortal.jasper", new HashMap(), beanCollectionDataSource);
        
    }
    
    //protected String separador = "/"; //linux
    protected String separador = "\\"; //windows

    //protected static String FILE_SYSTEM="/home/glassfish/glassfish4/glassfish/domains/domain1/docroot/filesystem/";//linux
    protected static String FILE_SYSTEM = "C:/server/glassfish-4.0/glassfish4/glassfish/domains/domain1/docroot/filesystem/";//windows
    
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

    private List<ReporteSimcoCaso> listarSimcoCaso(ReporteSimcoCaso reporteSimcoCasoModel) {
        List<ReporteSimcoCaso> listReporteCaso = service.reporteCaso(reporteSimcoCasoModel);
        return listReporteCaso;
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
