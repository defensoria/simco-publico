/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.reporte;

import gob.pe.defensoria.dto.CasoDTO;
import java.util.List;

/**
 *
 * @author carlos
 */
public class CasoPaginatorJSON {
    
    private List<CasoDTO> lista;
    
    private Integer paginado;
    
    private Long total;

    public List<CasoDTO> getLista() {
        return lista;
    }

    public void setLista(List<CasoDTO> lista) {
        this.lista = lista;
    }

    public Integer getPaginado() {
        return paginado;
    }

    public void setPaginado(Integer paginado) {
        this.paginado = paginado;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }
    
    
    
}
