/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.servlet;

import com.google.gson.Gson;
import gob.pe.defensoria.dto.ActorDTO;
import gob.pe.defensoria.dto.CasoDTO;
import gob.pe.defensoria.reporte.ActorPaginatorJSON;
import gob.pe.defensoria.reporte.CasoPaginatorJSON;
import gob.pe.defensoria.service.SimcoService;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;
/**
 *
 * @author carlos
 */

public class ServletAjax extends HttpServlet {
    
@EJB
private SimcoService simcoService;    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nombreCaso = null;
        String nombreActor = null;
        Integer paginaActor = null;
        Integer paginaCaso = null;
        
        if(request.getParameter("nombreCaso") != null){
            nombreCaso = request.getParameter("nombreCaso").trim();
            if(request.getParameter("nroPaginaCaso") != null)
            paginaCaso = Integer.parseInt(request.getParameter("nroPaginaCaso"));
            listaCasos(paginaCaso, nombreCaso, response);
        }
        
        if(request.getParameter("nombreActor") != null){
            nombreActor = request.getParameter("nombreActor").trim();
            if(request.getParameter("nroPaginaActor") != null)
            paginaActor = Integer.parseInt(request.getParameter("nroPaginaActor"));
            listaActores(paginaActor, nombreActor, response);
        }
        
    }
    
    public void listaCasos(Integer pagina, String nombre, HttpServletResponse response) throws IOException {
        if(pagina == null)
            pagina = 1;
        int paginado = 5;
        Integer ini = paginado * (pagina - 1) + 1;
        Integer fin = paginado * pagina;
        if (pagina == 0) {
            ini = 1;
            fin = 5;
            pagina = 1;
        }
        Filtro filtroCaso = new Filtro();
        filtroCaso.setIni(ini);
        filtroCaso.setFin(fin);
        filtroCaso.setNombre(nombre);
        List<CasoDTO> lista;
        List<CasoDTO> listadoCasos = null;
        Long contador = 0L;
        try {
            contador = simcoService.contarCasoXnombreCodigo(filtroCaso);
            
            lista = simcoService.buscarCasoXnombreCodigo(filtroCaso);
            if (lista.size() > 0) {
                listadoCasos = lista;
            }else{
                filtroCaso.setIni(filtroCaso.getIni()-paginado);
                filtroCaso.setFin(filtroCaso.getFin()-paginado);
                listadoCasos = simcoService.buscarCasoXnombreCodigo(filtroCaso);
                pagina = pagina - 1;
            }
            response.setContentType("text/json");
            Gson g = new Gson();
            CasoPaginatorJSON json= new CasoPaginatorJSON();
            json.setPaginado(pagina);
            json.setTotal(contador);
            json.setLista(listadoCasos);
            
	response.getWriter().write(g.toJson(json));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void listaActores(Integer pagina, String nombre, HttpServletResponse response) throws IOException {
        if(pagina == null)
            pagina = 1;
        int paginado = 5;
        Integer ini = paginado * (pagina - 1) + 1;
        Integer fin = paginado * pagina;
        if (pagina == 0) {
            ini = 1;
            fin = 5;
            pagina = 1;
        }
        Filtro filtroActor = new Filtro();
        filtroActor.setIni(ini);
        filtroActor.setFin(fin);
        filtroActor.setNombre(nombre);
        List<ActorDTO> lista;
        List<ActorDTO> listadoActores = null;
        Long contador = 0L;
        try {
            contador = simcoService.contarActorXnombreCodigo(filtroActor);
            
            lista = simcoService.buscarActorXNombre(filtroActor);
            if (lista.size() > 0) {
                listadoActores = lista;
            }else{
                filtroActor.setIni(filtroActor.getIni()-paginado);
                filtroActor.setFin(filtroActor.getFin()-paginado);
                listadoActores = simcoService.buscarActorXNombre(filtroActor);
                pagina = pagina - 1;
            }
            response.setContentType("text/json");
            Gson g = new Gson();
            ActorPaginatorJSON json= new ActorPaginatorJSON();
            json.setPaginado(pagina);
            json.setTotal(contador);
            json.setLista(listadoActores);
            
	response.getWriter().write(g.toJson(json));
        } catch (Exception e) {
            e.printStackTrace();
        }
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
