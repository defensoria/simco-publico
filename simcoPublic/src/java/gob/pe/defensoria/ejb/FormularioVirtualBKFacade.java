/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.ejb;


import gob.pe.defensoria.jpa.FormularioVirtualBk;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author carlos
 */
@Stateless
public class FormularioVirtualBKFacade {
    
    @PersistenceContext(unitName = "simcoPublicPU")
    private EntityManager em;
    
    public void guardar(FormularioVirtualBk fv){
        em.persist(fv);
    }
    
}
