/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.jpa;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author carlos
 */
@Entity
@Table(name = "SIMCO_REG_CASO")
@XmlRootElement
public class Caso implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "N_ID_CASO")
    private Long nIdCaso;
    @Size(max = 100)
    @Column(name = "C_NOMCASO")
    private String cNomcaso;
    @Size(max = 4000)
    @Column(name = "C_DESCPRELIMCASO")
    private String cDescprelimcaso;
    @Size(max = 15)
    @Column(name = "C_CODIGOCASO")
    private String cCodigocaso;
    @Size(max = 2)
    @Column(name = "C_TIPOCASO")
    private String cTipocaso;
    @Size(max = 4000)
    @Column(name = "C_JUSTIFICACION")
    private String cJustificacion;
    @Size(max = 4000)
    @Column(name = "C_OBSERVACIONES")
    private String cObservaciones;
    @Size(max = 3)
    @Column(name = "C_ESTADOREGISTRO")
    private String cEstadoregistro;
    @Column(name = "D_FECHACREACION")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dFechacreacion;
    @Column(name = "D_FECHAMODIFICACION")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dFechamodificacion;
    @Size(max = 2)
    @Column(name = "C_TIPOASUNTO")
    private String cTipoasunto;
    @Size(max = 2)
    @Column(name = "C_TIPOESTADO")
    private String cTipoestado;
    @Size(max = 500)
    @Column(name = "C_ADJUNTIADEFENSORIAL")
    private String cAdjuntiadefensorial;
    @Size(max = 30)
    @Column(name = "C_USUREGISTRO")
    private String cUsuregistro;
    @Size(max = 30)
    @Column(name = "C_USUMODIFICACION")
    private String cUsumodificacion;
    @Size(max = 4000)
    @Column(name = "C_SISTESISANALISIS")
    private String cSistesisanalisis;
    @Size(max = 2)
    @Column(name = "C_TIPODIALOGO")
    private String cTipodialogo;
    @Size(max = 2)
    @Column(name = "C_TIPOMECANISMO")
    private String cTipomecanismo;
    @Size(max = 2)
    @Column(name = "C_TIPOPARTICIPACION")
    private String cTipoparticipacion;
    @Size(max = 2)
    @Column(name = "C_IDDEPART")
    private String cIddepart;
    @Size(max = 2)
    @Column(name = "C_IDPROV")
    private String cIdprov;
    @Size(max = 2)
    @Column(name = "C_IDDISTR")
    private String cIddistr;
    @Size(max = 2)
    @Column(name = "C_SUBTIPOCASO")
    private String cSubtipocaso;
    @Size(max = 2)
    @Column(name = "C_PRIMERNIVEL")
    private String cPrimernivel;
    @Size(max = 2)
    @Column(name = "C_SEGUNDONIVEL")
    private String cSegundonivel;
    @Size(max = 2)
    @Column(name = "C_TERCERNIVEL")
    private String cTercernivel;
    @Size(max = 2)
    @Column(name = "C_MOMENTODIALOGO")
    private String cMomentodialogo;
    @Column(name = "N_VERSION")
    private BigInteger nVersion;
    @Column(name = "C_INDVIGENTE")
    private Character cIndvigente;
    @Column(name = "D_FECHAPUBLICACION")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dFechapublicacion;
    @Column(name = "N_INVERSIONINVOLUCRADA")
    private BigDecimal nInversioninvolucrada;
    @Column(name = "D_FECHAINICIO")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dFechainicio;
    @Column(name = "D_FECHAFIN")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dFechafin;

    public Caso() {
    }

    public Caso(Long nIdCaso) {
        this.nIdCaso = nIdCaso;
    }

    public Long getNIdCaso() {
        return nIdCaso;
    }

    public void setNIdCaso(Long nIdCaso) {
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nIdCaso != null ? nIdCaso.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Caso)) {
            return false;
        }
        Caso other = (Caso) object;
        if ((this.nIdCaso == null && other.nIdCaso != null) || (this.nIdCaso != null && !this.nIdCaso.equals(other.nIdCaso))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gob.pe.defensoria.jpa.Caso[ nIdCaso=" + nIdCaso + " ]";
    }
    
}
