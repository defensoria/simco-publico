/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.service;

import gob.pe.defensoria.dto.ActorDTO;
import gob.pe.defensoria.dto.CasoDTO;
import gob.pe.defensoria.ejb.SimcoFacade;
import gob.pe.defensoria.reporte.ReporteSimcoActividad;
import gob.pe.defensoria.reporte.ReporteSimcoActor;
import gob.pe.defensoria.reporte.ReporteSimcoCaso;
import gob.pe.defensoria.reporte.ReporteSimcoVictima;
import gob.pe.defensoria.servlet.Filtro;
import gob.pe.defensoria.type.AnhosEnum;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.faces.model.SelectItem;
import org.apache.commons.lang3.StringUtils;

/**
 *
 * @author carlos
 */
@Stateless
public class SimcoService {
    
    @EJB
    private SimcoFacade simcoFacade;
    
    public List<CasoDTO> buscarCasoXnombreCodigo(Filtro filtroCaso){
        List<Object[]> lista = simcoFacade.buscarCasoXnombreCodigo(filtroCaso);
        List<CasoDTO> lista1 = new ArrayList<>();
            for(Object[] os : lista){
                CasoDTO dto = new CasoDTO();
                dto.setNIdCaso(os[0].toString());
                dto.setCCodigocaso(os[1].toString());
                dto.setCNomcaso(os[2].toString());
                dto.setPagina(os[3].toString());
                lista1.add(dto);
            }
        return lista1;
    }
    
    public List<ActorDTO> buscarActorXNombre(Filtro filtroActor){
        List<Object[]> lista = simcoFacade.buscarActorXnombre(filtroActor);
        List<ActorDTO> lista1 = new ArrayList<>();
            for(Object[] os : lista){
                ActorDTO dto = new ActorDTO();
                dto.setId(Long.parseLong(os[0].toString()));
                dto.setTipoGeneral(os[1].toString());
                dto.setNombre(os[2].toString());
                if(StringUtils.equals(os[1].toString(), "PE")){
                    if(os[3] != null)
                        dto.setDocumento((os[3].toString()));
                }else{
                    if(os[4] != null)
                        dto.setDocumento((os[4].toString()));
                }
                dto.setPagina(os[5].toString());    
                lista1.add(dto);
            }
        return lista1;
    }
    
    public String cargarTipoDocumento(String codigoPadre) {
        List<Object[]> listaTipoDocumento = simcoFacade.listarParametro(codigoPadre);
        StringBuilder sb = new StringBuilder();
        sb.append("<option value=''>Seleccione</option>");
        for (Object[] obj : listaTipoDocumento) {
            sb.append("<option value='" + obj[3].toString() + "'>" + obj[2].toString() + "</option>");
        }
        return sb.toString();
    }
    
    public String cargarTipoDocumento() {
        List<Object[]> listaTipoDocumento = simcoFacade.listarParametro("120");
        for(Object[] os : listaTipoDocumento){
            if(StringUtils.equals(os[3].toString(), "01"))
                listaTipoDocumento.remove(os);
            if(StringUtils.equals(os[3].toString(), "02"))
                listaTipoDocumento.remove(os);
            if(StringUtils.equals(os[3].toString(), "03"))
                listaTipoDocumento.remove(os);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("<option value=''>Seleccione</option>");
        for (Object[] obj : listaTipoDocumento) {
            sb.append("<option value='" + obj[3].toString() + "'>" + obj[2].toString() + "</option>");
        }
        return sb.toString();
    }
    
    public String listarRegion(){
        List<Object[]> listaRegion = simcoFacade.listarRegion();
        StringBuilder sb = new StringBuilder();
        sb.append("<option value=''>Seleccione</option>");
        for (Object[] obj : listaRegion) {
            sb.append("<option value='" + obj[0].toString() + "'>" + obj[1].toString() + "</option>");
        }
        return sb.toString();
    }
    
    public String cargarAnho(){
        StringBuilder sb = new StringBuilder();
        sb.append("<option value=''>Seleccione</option>");
        for (SelectItem i: AnhosEnum.getList()) {
            sb.append("<option value='" + i.getValue() + "'>" + i.getLabel() + "</option>");
        }
        return sb.toString();
    }
    
    public List<ReporteSimcoActividad> reporteActividad(ReporteSimcoActividad reporteSimcoActividad){
        List<Object[]> listaReporteActividad = simcoFacade.reporteActividad(reporteSimcoActividad);
        List<ReporteSimcoActividad> lista = new ArrayList<>();
        for (Object[] obj : listaReporteActividad) {
            ReporteSimcoActividad actividad = new ReporteSimcoActividad();
            actividad.setIdActividad(Long.parseLong(obj[0]== null? "" : obj[0].toString()));
            actividad.setCodigoActividad(obj[1]== null? "" : obj[1].toString());
            actividad.setNombreActividad(obj[2]== null? "" : obj[2].toString());
            actividad.setFecha(obj[3]== null? "" : obj[3].toString());
            actividad.setClaseActividad(obj[4]== null? "" : obj[4].toString());
            actividad.setTipoActuacionDefensorialDetalle(obj[5]== null? "" : obj[5].toString());
            actividad.setTipoAcontecimiento(obj[6]== null? "" : obj[6].toString());
            actividad.setTipoViolencia(obj[7]== null? "" : obj[7].toString());
            actividad.setResultadoViolencia(obj[8]== null? "" : obj[8].toString());
            actividad.setNombreRegion(obj[9]== null? "" : obj[9].toString());
            actividad.setNombreProvincia(obj[10]== null? "" : obj[10].toString());
            actividad.setNombreDistrito(obj[11]== null? "" : obj[11].toString());
            actividad.setCodigoCaso(obj[12]== null? "" : obj[12].toString());
            actividad.setNombreCaso(obj[13]== null? "" : obj[13].toString());
            actividad.setDetalleTipologiaCaso(obj[14]== null? "" : obj[14].toString());
            actividad.setActividadCaso(obj[15]== null? "" : obj[15].toString());
            actividad.setCodigoAcontecimientoVinculado(obj[16]== null? "" : obj[16].toString());
            actividad.setNombreAcontecimientoVinculado(obj[17]== null? "" : obj[17].toString());
            actividad.setTipoActuacionDefensorial(obj[18]== null? "" : obj[18].toString());
            lista.add(actividad);
        }
        return lista;
    }
    
    public String consultarParametroValor(String valorParametro, String codigoPadreParametro){
        return simcoFacade.consultarParametroValor(valorParametro, codigoPadreParametro);
    }
    
    public Map listaVictimas(Long idActividad) {
        if(idActividad != null){
            List<String> listaVictimas = simcoFacade.actividadVictimaBuscar(idActividad);
            return mapearTipos(listaVictimas);
        }
        return null;
    }
    
    public Map<String, String> mapearTipos(List<String> listaV) {
        Map tipoVictima = new HashMap();
        int nroMuertos = 0;
        int nroRetenido = 0;
        int nroHerido = 0;
        int nroDetenidos = 0;
        int nroOtros = 0;
        int nroDesaparecidos = 0;
        if (listaV != null) {
            for (String av : listaV) {
                if (StringUtils.equals(av, "01")) {
                    nroMuertos++;
                }
                if (StringUtils.equals(av, "02")) {
                    nroHerido++;
                }
                if (StringUtils.equals(av, "03")) {
                    nroRetenido++;
                }
                if (StringUtils.equals(av, "04")) {
                    nroDetenidos++;
                }
                if (StringUtils.equals(av, "05")) {
                    nroDesaparecidos++;
                }
                if (StringUtils.equals(av, "06")) {
                    nroOtros++;
                }
            }
        }
        tipoVictima.put("Muertos", nroMuertos);
        tipoVictima.put("Heridos", nroHerido);
        tipoVictima.put("Retenidos", nroRetenido);
        tipoVictima.put("Detenidos", nroDetenidos);
        tipoVictima.put("Desaparecidos", nroDesaparecidos);
        tipoVictima.put("Otros", nroOtros);
        return tipoVictima;
    }
    
    public List<ReporteSimcoCaso> reporteCaso(ReporteSimcoCaso reporteSimcoCaso){
        List<Object[]> listaReporteCaso = simcoFacade.reporteCaso(reporteSimcoCaso);
        List<ReporteSimcoCaso> lista = new ArrayList<>();
        for (Object[] obj : listaReporteCaso) {
            ReporteSimcoCaso caso = new ReporteSimcoCaso();
            caso.setIdCaso(Long.parseLong(obj[0]== null? "" : obj[0].toString()));
            caso.setCodigoCaso(obj[1]== null? "" : obj[1].toString());
            caso.setNombreCaso(obj[2]== null? "" : obj[2].toString());
            caso.setFechaInicioCaso(obj[3]== null? "" : obj[3].toString());
            caso.setFechaFinCaso(obj[4]== null? "" : obj[4].toString());
            caso.setRegionPrincial(obj[5]== null? "" : obj[5].toString());
            caso.setProvinciaPrincial(obj[6]== null? "" : obj[6].toString());
            caso.setDistritoPrincial(obj[7]== null? "" : obj[7].toString());
            caso.setTipologia(obj[8]== null? "" : obj[8].toString());
            caso.setEstado(obj[9]== null? "" : obj[9].toString());
            caso.setActividad(obj[10]== null? "" : obj[10].toString());
            caso.setFase(obj[11]== null? "" : obj[11].toString());
            caso.setAcuerdos(obj[14]== null? "" : obj[14].toString());
            caso.setPrimerNivel(obj[15]== null? "" : obj[15].toString());
            caso.setSegundoNivel(obj[16]== null? "" : obj[16].toString());
            caso.setTercerNivel(obj[17]== null? "" : obj[17].toString());
            caso.setFechaModificacion(obj[18]== null? "" : obj[18].toString());
            caso.setMomentoDialogo(obj[19]== null? "" : obj[19].toString());
            caso.setMecanismoDialogo(obj[20]== null? "" : obj[20].toString());
            caso.setParticipacion(obj[21]== null? "" : obj[21].toString());
            //caso.setInversionInvolucrada(obj[22]== null? "" : obj[22].toString());
            lista.add(caso);
        }
        return lista;
    }
    
    public List<ReporteSimcoVictima> reporteVictima(ReporteSimcoVictima reporteSimcoVictima){
        List<Object[]> listaReporteVictima = simcoFacade.reporteVictima(reporteSimcoVictima);
        List<ReporteSimcoVictima> lista = new ArrayList<>();
        for (Object[] obj : listaReporteVictima) {
            ReporteSimcoVictima victima = new ReporteSimcoVictima();
            victima.setNombreCompletoVictima(obj[0]== null? "" : obj[0].toString());
            victima.setEdadVictima(obj[1]== null? "" : obj[1].toString());
            victima.setSexoVictima(obj[2]== null? "" : obj[2].toString());
            victima.setTipoVictima(obj[3]== null? "" : obj[3].toString());
            victima.setTipoEstadoVictima(obj[4]== null? "" : obj[4].toString());
            victima.setNombreActividad(obj[5]== null? "" : obj[5].toString());
            victima.setTipoAcontecimiento(obj[6]== null? "" : obj[6].toString());
            victima.setDepartamento(obj[7]== null? "" : obj[7].toString());
            victima.setDni(obj[9]== null? "" : obj[9].toString());
            lista.add(victima);
        }
        return lista;
    }
    
    public List<ReporteSimcoActor> reporteActor(ReporteSimcoActor reporteSimcoActor){
        List<Object[]> listaReporteActor = simcoFacade.reporteActor(reporteSimcoActor);
        List<ReporteSimcoActor> lista = new ArrayList<>();
        for (Object[] obj : listaReporteActor) {
            ReporteSimcoActor actor = new ReporteSimcoActor();
            actor.setNombreActor(obj[0]== null? "" : obj[0].toString());
            actor.setTipoActor(obj[1]== null? "" : obj[1].toString());
            actor.setNombreDepartamento(obj[2]== null? "" : obj[2].toString());
            actor.setIdActor(Long.parseLong(obj[3].toString()));
            actor.setDocumento(obj[4]== null? "" : obj[4].toString());
            actor.setRuc(obj[5]== null? "" : obj[5].toString());
            actor.setTipoPoblacion(obj[6]== null? "" : obj[6].toString());
            actor.setSubTipo1Poblacion(obj[7]== null? "" : obj[7].toString());
            actor.setSubTipo2Poblacion(obj[8]== null? "" : obj[8].toString());
            actor.setTipoOrganizacion(obj[9]== null? "" : obj[9].toString());
            actor.setSubTipo1Organizacion(obj[10]== null? "" : obj[10].toString());
            actor.setSubTipo2Organizacion(obj[11]== null? "" : obj[11].toString());
            actor.setTipoEmpresa(obj[12]== null? "" : obj[12].toString());
            actor.setSubTipo1Empresa(obj[13]== null? "" : obj[13].toString());
            actor.setSubTipo2Empresa(obj[14]== null? "" : obj[14].toString());
            actor.setSubTipo3Empresa(obj[15]== null? "" : obj[15].toString());
            actor.setTipoEntidad(obj[16]== null? "" : obj[16].toString());
            actor.setSubTipo1Entidad(obj[17]== null? "" : obj[17].toString());
            actor.setSubTipo2Entidad(obj[18]== null? "" : obj[18].toString());
            actor.setClasificacion(obj[19]== null? "" : obj[19].toString());
            lista.add(actor);
        }
        return lista;
    }
    
    
    public Integer contarActorAcontecimiento(Long idActor) {
        return simcoFacade.contarActorAcontecimiento(idActor);
    }
    
    public Map<String, Integer> contadorCasosEstado(String estadoCaso, String anho){
        List<Object[]> lista = simcoFacade.contadorCasosEstado(estadoCaso, anho);
        Map<String, Integer> map = new HashMap<>();
        for(Object[] ob : lista){
            map.put(ob[1].toString(), Integer.parseInt(ob[0].toString()));
        }
        return map;
    }
    
    public Long contarCasoXnombreCodigo(Filtro filtroCaso){
        Object obj = simcoFacade.contarCasoXnombreCodigo(filtroCaso);
        BigDecimal  bg2 = (BigDecimal) obj;
        return bg2.longValue();
    }
    
    public Long contarActorXnombreCodigo(Filtro filtroActor){
        Object obj = simcoFacade.contarActorXnombreCodigo(filtroActor);
        BigDecimal  bg2 = (BigDecimal) obj;
        return bg2.longValue();
    }
    
    public Long contadorCasosEstadoGeneral(String estadoCaso, String anho, String mes){
        Object obj = simcoFacade.contadorCasosEstadoGeneral(estadoCaso, anho, mes);
        BigDecimal  bg2 = (BigDecimal) obj;
        return bg2.longValue();
    }
    
    public Long contadorActaAcuerdo(Long idActividad){
        Object obj = simcoFacade.contadorActaAcuerdo(idActividad);
        BigDecimal  bg2 = (BigDecimal) obj;
        return bg2.longValue();
    }
    
    public ReporteSimcoCaso buscarCaso(Long idCaso){
        Object[] obj = simcoFacade.buscarCaso(idCaso);
        ReporteSimcoCaso rsc = new ReporteSimcoCaso();
        rsc.setIdCaso(Long.parseLong(obj[0].toString()));
        rsc.setFechaPublicacion(obj[1] == null? "": obj[1].toString());
        rsc.setNombreCaso(obj[2] == null? "": obj[2].toString());
        rsc.setRegionPrincial(obj[3] == null? "": obj[3].toString());
        rsc.setProvinciaPrincial(obj[4] == null? "": obj[4].toString());
        rsc.setDistritoPrincial(obj[5] == null? "": obj[5].toString());
        rsc.setTipologia(obj[6] == null? "": obj[6].toString());
        rsc.setEstado(obj[7] == null? "": obj[7].toString());
        rsc.setActividad(obj[8] == null? "": obj[8].toString());
        rsc.setFase(obj[9] == null? "": obj[9].toString());
        return rsc;
    }
    
    public List<ReporteSimcoActor> actoresPorCaso(Long idCaso){
        List<Object[]> listaReporteActorPorCaso = simcoFacade.buscarActorPorCaso(idCaso);
        List<ReporteSimcoActor> lista = new ArrayList<>();
        for (Object[] obj : listaReporteActorPorCaso) {
            ReporteSimcoActor ac = new ReporteSimcoActor();
            if(StringUtils.equals(obj[8].toString(), "PE")){
                StringBuilder nombre = new StringBuilder();
                if(obj[5] != null){
                    nombre.append(obj[5].toString()+" ");
                }
                if(obj[6] != null){
                    nombre.append(obj[6].toString()+" ");
                }
                if(obj[7] != null){
                    nombre.append(obj[7].toString());
                }
                ac.setNombreActor(nombre.toString());
            }else{
                if(obj[5] != null){
                    ac.setNombreActor(obj[5].toString());
                }
            }
            ac.setTipoActor(obj[2] == null? "" : obj[2].toString());
            lista.add(ac);
        }
        return lista;
    }
    
    public List<ReporteSimcoActividad> actividadesPorCaso(Long idCaso){
        List<Object[]> listaReporteActividad = simcoFacade.actividadesPorCaso(idCaso);
        List<ReporteSimcoActividad> lista = new ArrayList<>();
        for (Object[] obj : listaReporteActividad) {
            ReporteSimcoActividad actividad = new ReporteSimcoActividad();
            actividad.setIdActividad(Long.parseLong(obj[0].toString()));
            actividad.setTipoActividad(obj[1] == null? "" :obj[1].toString());
            actividad.setNombreActividad(obj[2] == null? "" :obj[2].toString());
            actividad.setRutaUsuarioRegistro(obj[3] == null? "" :obj[3].toString());
            actividad.setUsuarioRegistro(obj[4] == null? "" :obj[4].toString());
            actividad.setFechaInicio(obj[5] == null? "" :obj[5].toString());
            actividad.setRuta(obj[6] == null? "" :obj[6].toString());
            actividad.setFechaRegistro(obj[7] == null? "" :obj[7].toString());
            actividad.setFechaModificacion(obj[8] == null? "" :obj[8].toString());
            actividad.setDescripcion(obj[9] == null? "" :obj[9].toString());
            lista.add(actividad);
        }
        return lista;
    }
    
    public Long contadorAcontecimientoPorCaso(Long idCaso){
        Object obj = simcoFacade.contadorAcontecimientosPorCaso(idCaso);
        BigDecimal  bg2 = (BigDecimal) obj;
        return bg2.longValue();
    }
    
    public Long contadorActuacionesDefensorialesPorCaso(Long idCaso){
        Object obj = simcoFacade.contadorActuacionesDefensorialesPorCaso(idCaso);
        BigDecimal  bg2 = (BigDecimal) obj;
        return bg2.longValue();
    }
}

