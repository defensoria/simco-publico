/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.servlet;

import gob.pe.defensoria.reporte.ReporteSimcoActor;
import gob.pe.defensoria.service.SimcoService;
import gob.pe.defensoria.util.ConstantesUtil;
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
public class ReporteSimcoActorServlet extends HttpServlet {

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
            request.getRequestDispatcher("/reporteSimcoActor.jsp").forward(request, response);
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
            ReporteSimcoActor rsa = new ReporteSimcoActor();
            rsa.setAnho(selectAnho);
            rsa.setCodigoCaso(codigoCaso);
            if(StringUtils.isNotBlank(codigoActor)){
                rsa.setIdActor(Long.parseLong(codigoActor));
            }
            rsa.setTipologia(selectTipoCaso);
            rsa.setIdRegion(selectRegion);
            rsa.setEstado(selectEstadoCaso);
            rsa.setTipoAcontecimiento(selectTipoAcontecimiento);
            rsa.setTipoActor(selectTipoActor);
        String tipoReporte = request.getParameter("tipoReporte");
        try {
            if(StringUtils.isNotBlank(btnBuscar)){
            datatable = reporteActores(rsa);
            if(StringUtils.isBlank(datatable)){
                request.setAttribute("result", "0");
            }
            request.setAttribute("datatable", datatable);
            tipoReporte = "";
        }else{
            request.setAttribute("datatable", "");
        }
        if(StringUtils.equals(tipoReporte, "1")){
            reporteSimcoActorExcel(rsa, response, request);
            return;
        }
        if(StringUtils.equals(tipoReporte, "2")){
            reporteSimcoActorPdf(rsa, response, request);
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
        request.getRequestDispatcher("/reporteSimcoActor.jsp").forward(request, response);
        } catch (JRException | IOException | ServletException e) {
            e.printStackTrace();
        }
    }
    
    public String reporteActores(ReporteSimcoActor reporteSimcoActor) {
        List<ReporteSimcoActor> listReporteActor = service.reporteActor(reporteSimcoActor);
        for (ReporteSimcoActor a : listReporteActor) {
            if (StringUtils.equals(a.getTipoActor(), "PE")) {
                a.setDescripcionTipoActor("Población");
            }
            if (StringUtils.equals(a.getTipoActor(), "EN")) {
                a.setDescripcionTipoActor("Entidad estatal");
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "OR")) {
                a.setDescripcionTipoActor("Organización");
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "EM")) {
                a.setDescripcionTipoActor("Empresa");
            }

            if (StringUtils.equals(a.getTipoActor(), "PE")) {
                a.setSubtipo(a.getTipoPoblacion());
                a.setSubtipo1(a.getSubTipo1Poblacion());
                a.setSubtipo2(a.getSubTipo2Poblacion());
            }
            if (StringUtils.equals(a.getTipoActor(), "EN")) {
                a.setSubtipo(a.getTipoEntidad());
                a.setSubtipo1(a.getSubTipo1Entidad());
                a.setSubtipo2(a.getSubTipo2Entidad());
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "OR")) {
                a.setSubtipo(a.getTipoOrganizacion());
                a.setSubtipo1(a.getSubTipo1Organizacion());
                a.setSubtipo2(a.getSubTipo2Organizacion());
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "EM")) {
                a.setSubtipo(a.getTipoEmpresa());
                a.setSubtipo1(a.getSubTipo1Empresa());
                a.setSubtipo2(a.getSubTipo2Empresa());
                a.setSubtipo3(a.getSubTipo3Empresa());
            }

            a.setContadorActorAcontecimiento(service.contarActorAcontecimiento(a.getIdActor()));
        }
        
        return generarDatatable(listReporteActor);
    }

    private String generarDatatable(List<ReporteSimcoActor> lista){
        StringBuilder sb = new StringBuilder();
        if(lista.size() > 0){
            sb.append("<td style='background : #0088CC; color : white; width: 2%'>Nro</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 21%'>Nombre del actor</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 8%'>Categoría</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 12%'>Tipo de actor</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 12%'>Subtipo 1</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 12%'>Subtipo 2</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 12%'>Subtipo 3</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 10%'>Departamento</td>");
        sb.append("<td style='background : #0088CC; color : white; width: 11%'>Número de conflitos en los que participa</td>");
        }
        int i = 0;
        for(ReporteSimcoActor rsa : lista){
            i++;
            sb.append("<tr>");
                sb.append("<td>").append(i).append("</td>");
                sb.append("<td>").append(rsa.getNombreActor()).append("</td>");
                if(StringUtils.isNotBlank(rsa.getDescripcionTipoActor()))
                   sb.append("<td>").append(rsa.getDescripcionTipoActor()).append("</td>");
                else
                   sb.append("<td></td>"); 
                if(StringUtils.isNotBlank(rsa.getSubtipo()))
                    sb.append("<td>").append(rsa.getSubtipo()).append("</td>");
                else
                   sb.append("<td></td>"); 
                if(StringUtils.isNotBlank(rsa.getSubtipo1()))
                    sb.append("<td>").append(rsa.getSubtipo1()).append("</td>");
                else
                   sb.append("<td></td>"); 
                if(StringUtils.isNotBlank(rsa.getSubtipo2()))
                    sb.append("<td>").append(rsa.getSubtipo2()).append("</td>");
                else
                   sb.append("<td></td>"); 
                if(StringUtils.isNotBlank(rsa.getSubtipo3()))
                    sb.append("<td>").append(rsa.getSubtipo3()).append("</td>");
                else
                   sb.append("<td></td>"); 
                if(StringUtils.isNotBlank(rsa.getNombreDepartamento()))
                    sb.append("<td>").append(rsa.getNombreDepartamento()).append("</td>");
                else
                   sb.append("<td></td>"); 
                if(rsa.getContadorActorAcontecimiento() != null)
                    sb.append("<td>").append(rsa.getContadorActorAcontecimiento()).append("</td>");
                else
                   sb.append("<td></td>"); 
            sb.append("</tr>");
        }
        return sb.toString();
    }
    
    private void reporteSimcoActorExcel(ReporteSimcoActor reporteSimcoActorModel, HttpServletResponse httpServletResponse,  HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoActor(reporteSimcoActorModel, 1, request);
        httpServletResponse.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteActor.xlsx");
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
    
    public void reporteSimcoActorPdf(ReporteSimcoActor reporteSimcoActorModel, HttpServletResponse httpServletResponse, HttpServletRequest request) throws JRException, IOException {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String fecha = simpleDateFormat.format(date);
        initJasperSimcoActor(reporteSimcoActorModel, 2,request);
        FacesContext facesContext = FacesContext.getCurrentInstance();
        httpServletResponse.setContentType("application/pdf");
        httpServletResponse.addHeader("Content-disposition", "attachment; filename=" + fecha + "_reporteSimcoActividad.pdf");
        ServletOutputStream servletOutputStream = httpServletResponse.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, servletOutputStream);
        facesContext.responseComplete();
        facesContext.renderResponse();
    }
    
    private void initJasperSimcoActor(ReporteSimcoActor reporteSimcoActorModel, int tipo,HttpServletRequest request) throws JRException {
        List<ReporteSimcoActor> lista = listarSimcoActor(reporteSimcoActorModel);
        JRBeanCollectionDataSource beanCollectionDataSource = new JRBeanCollectionDataSource(lista);
        if(tipo == 1)
            jasperPrint = JasperFillManager.fillReport(retornaRutaPath(request).concat("/web/jasper/reporteSimcoActorPortal.jasper"), new HashMap(), beanCollectionDataSource);
        else
            jasperPrint = JasperFillManager.fillReport(retornaRutaPath(request).concat("/web/jasper/reporteSimcoActorPortalPDF.jasper"), new HashMap(), beanCollectionDataSource);
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
    
    public List<ReporteSimcoActor> listarSimcoActor(ReporteSimcoActor reporteSimcoActor) {
        List<ReporteSimcoActor> listReporteActor = service.reporteActor(reporteSimcoActor);
        for (ReporteSimcoActor a : listReporteActor) {
            if (StringUtils.equals(a.getTipoActor(), "PE")) {
                a.setDescripcionTipoActor("Población");
            }
            if (StringUtils.equals(a.getTipoActor(), "EN")) {
                a.setDescripcionTipoActor("Entidad estatal");
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "OR")) {
                a.setDescripcionTipoActor("Organización");
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "EM")) {
                a.setDescripcionTipoActor("Empresa");
            }

            if (StringUtils.equals(a.getTipoActor(), "PE")) {
                a.setSubtipo(a.getTipoPoblacion());
                a.setSubtipo1(a.getSubTipo1Poblacion());
                a.setSubtipo2(a.getSubTipo2Poblacion());
            }
            if (StringUtils.equals(a.getTipoActor(), "EN")) {
                a.setSubtipo(a.getTipoEntidad());
                a.setSubtipo1(a.getSubTipo1Entidad());
                a.setSubtipo2(a.getSubTipo2Entidad());
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "OR")) {
                a.setSubtipo(a.getTipoOrganizacion());
                a.setSubtipo1(a.getSubTipo1Organizacion());
                a.setSubtipo2(a.getSubTipo2Organizacion());
            }
            if (StringUtils.equals(a.getTipoActor(), "EM") && StringUtils.equals(a.getClasificacion(), "EM")) {
                a.setSubtipo(a.getTipoEmpresa());
                a.setSubtipo1(a.getSubTipo1Empresa());
                a.setSubtipo2(a.getSubTipo2Empresa());
                a.setSubtipo3(a.getSubTipo3Empresa());
            }

            a.setContadorActorAcontecimiento(service.contarActorAcontecimiento(a.getIdActor()));
        }
        
        return listReporteActor;
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
