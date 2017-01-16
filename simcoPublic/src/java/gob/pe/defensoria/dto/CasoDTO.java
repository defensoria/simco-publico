/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
/**
 *
 * @author carlos
 */
public class CasoDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    private String nIdCaso;
    
    private String cNomcaso;
    
    private String cDescprelimcaso;
    
    private String cCodigocaso;
    
    private String cTipocaso;
    
    private String cJustificacion;
    
    private String cObservaciones;
    
    private String cEstadoregistro;
    
    private Date dFechacreacion;
    
    private Date dFechamodificacion;
    
    private String cTipoasunto;
    
    private String cTipoestado;
    
    private String cAdjuntiadefensorial;
    
    private String cUsuregistro;
    
    private String cUsumodificacion;
    
    private String cSistesisanalisis;
    
    private String cTipodialogo;
    
    private String cTipomecanismo;
    
    private String cTipoparticipacion;
    
    private String cIddepart;
    
    private String cIdprov;
    
    private String cIddistr;
    
    private String cSubtipocaso;
    
    private String cPrimernivel;
    
    private String cSegundonivel;
    
    private String cTercernivel;
    
    private String cMomentodialogo;
    
    private BigInteger nVersion;
    
    private Character cIndvigente;
    
    private Date dFechapublicacion;
    
    private BigDecimal nInversioninvolucrada;
    
    private Date dFechainicio;
    
    private Date dFechafin;
    
    private String pagina;

    public CasoDTO() {
    }

    public CasoDTO(String nIdCaso) {
        this.nIdCaso = nIdCaso;
    }

    public String getNIdCaso() {
        return nIdCaso;
    }

    public void setNIdCaso(String nIdCaso) {
        this.nIdCaso = nIdCaso;
    }

    public String getCNomcaso() {
        return cNomcaso;
    }

    public void setCNomcaso(String cNomcaso) {
        this.cNomcaso = cNomcaso;
    }

    public String getCDescprelimcaso() {
        return cDescprelimcaso;
    }

    public void setCDescprelimcaso(String cDescprelimcaso) {
        this.cDescprelimcaso = cDescprelimcaso;
    }

    public String getCCodigocaso() {
        return cCodigocaso;
    }

    public void setCCodigocaso(String cCodigocaso) {
        this.cCodigocaso = cCodigocaso;
    }

    public String getCTipocaso() {
        return cTipocaso;
    }

    public void setCTipocaso(String cTipocaso) {
        this.cTipocaso = cTipocaso;
    }

    public String getCJustificacion() {
        return cJustificacion;
    }

    public void setCJustificacion(String cJustificacion) {
        this.cJustificacion = cJustificacion;
    }

    public String getCObservaciones() {
        return cObservaciones;
    }

    public void setCObservaciones(String cObservaciones) {
        this.cObservaciones = cObservaciones;
    }

    public String getCEstadoregistro() {
        return cEstadoregistro;
    }

    public void setCEstadoregistro(String cEstadoregistro) {
        this.cEstadoregistro = cEstadoregistro;
    }

    public Date getDFechacreacion() {
        return dFechacreacion;
    }

    public void setDFechacreacion(Date dFechacreacion) {
        this.dFechacreacion = dFechacreacion;
    }

    public Date getDFechamodificacion() {
        return dFechamodificacion;
    }

    public void setDFechamodificacion(Date dFechamodificacion) {
        this.dFechamodificacion = dFechamodificacion;
    }

    public String getCTipoasunto() {
        return cTipoasunto;
    }

    public void setCTipoasunto(String cTipoasunto) {
        this.cTipoasunto = cTipoasunto;
    }

    public String getCTipoestado() {
        return cTipoestado;
    }

    public void setCTipoestado(String cTipoestado) {
        this.cTipoestado = cTipoestado;
    }

    public String getCAdjuntiadefensorial() {
        return cAdjuntiadefensorial;
    }

    public void setCAdjuntiadefensorial(String cAdjuntiadefensorial) {
        this.cAdjuntiadefensorial = cAdjuntiadefensorial;
    }

    public String getCUsuregistro() {
        return cUsuregistro;
    }

    public void setCUsuregistro(String cUsuregistro) {
        this.cUsuregistro = cUsuregistro;
    }

    public String getCUsumodificacion() {
        return cUsumodificacion;
    }

    public void setCUsumodificacion(String cUsumodificacion) {
        this.cUsumodificacion = cUsumodificacion;
    }

    public String getCSistesisanalisis() {
        return cSistesisanalisis;
    }

    public void setCSistesisanalisis(String cSistesisanalisis) {
        this.cSistesisanalisis = cSistesisanalisis;
    }

    public String getCTipodialogo() {
        return cTipodialogo;
    }

    public void setCTipodialogo(String cTipodialogo) {
        this.cTipodialogo = cTipodialogo;
    }

    public String getCTipomecanismo() {
        return cTipomecanismo;
    }

    public void setCTipomecanismo(String cTipomecanismo) {
        this.cTipomecanismo = cTipomecanismo;
    }

    public String getCTipoparticipacion() {
        return cTipoparticipacion;
    }

    public void setCTipoparticipacion(String cTipoparticipacion) {
        this.cTipoparticipacion = cTipoparticipacion;
    }

    public String getCIddepart() {
        return cIddepart;
    }

    public void setCIddepart(String cIddepart) {
        this.cIddepart = cIddepart;
    }

    public String getCIdprov() {
        return cIdprov;
    }

    public void setCIdprov(String cIdprov) {
        this.cIdprov = cIdprov;
    }

    public String getCIddistr() {
        return cIddistr;
    }

    public void setCIddistr(String cIddistr) {
        this.cIddistr = cIddistr;
    }

    public String getCSubtipocaso() {
        return cSubtipocaso;
    }

    public void setCSubtipocaso(String cSubtipocaso) {
        this.cSubtipocaso = cSubtipocaso;
    }

    public String getCPrimernivel() {
        return cPrimernivel;
    }

    public void setCPrimernivel(String cPrimernivel) {
        this.cPrimernivel = cPrimernivel;
    }

    public String getCSegundonivel() {
        return cSegundonivel;
    }

    public void setCSegundonivel(String cSegundonivel) {
        this.cSegundonivel = cSegundonivel;
    }

    public String getCTercernivel() {
        return cTercernivel;
    }

    public void setCTercernivel(String cTercernivel) {
        this.cTercernivel = cTercernivel;
    }

    public String getCMomentodialogo() {
        return cMomentodialogo;
    }

    public void setCMomentodialogo(String cMomentodialogo) {
        this.cMomentodialogo = cMomentodialogo;
    }

    public BigInteger getNVersion() {
        return nVersion;
    }

    public void setNVersion(BigInteger nVersion) {
        this.nVersion = nVersion;
    }

    public Character getCIndvigente() {
        return cIndvigente;
    }

    public void setCIndvigente(Character cIndvigente) {
        this.cIndvigente = cIndvigente;
    }

    public Date getDFechapublicacion() {
        return dFechapublicacion;
    }

    public void setDFechapublicacion(Date dFechapublicacion) {
        this.dFechapublicacion = dFechapublicacion;
    }

    public BigDecimal getNInversioninvolucrada() {
        return nInversioninvolucrada;
    }

    public void setNInversioninvolucrada(BigDecimal nInversioninvolucrada) {
        this.nInversioninvolucrada = nInversioninvolucrada;
    }

    public Date getDFechainicio() {
        return dFechainicio;
    }

    public void setDFechainicio(Date dFechainicio) {
        this.dFechainicio = dFechainicio;
    }

    public Date getDFechafin() {
        return dFechafin;
    }

    public void setDFechafin(Date dFechafin) {
        this.dFechafin = dFechafin;
    }

    public String getPagina() {
        return pagina;
    }

    public void setPagina(String pagina) {
        this.pagina = pagina;
    }
    
}