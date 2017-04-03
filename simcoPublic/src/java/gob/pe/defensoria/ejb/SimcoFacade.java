/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gob.pe.defensoria.ejb;

import gob.pe.defensoria.reporte.ReporteSimcoActividad;
import gob.pe.defensoria.reporte.ReporteSimcoActor;
import gob.pe.defensoria.reporte.ReporteSimcoCaso;
import gob.pe.defensoria.reporte.ReporteSimcoVictima;
import gob.pe.defensoria.servlet.Filtro;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.apache.commons.lang3.StringUtils;

/**
 *
 * @author carlos
 */
@Stateless
public class SimcoFacade {

    @PersistenceContext(unitName = "simcoPublicoPU")
    private EntityManager em;

    public List<Object[]> buscarCasoXnombreCodigo(Filtro filtroCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT DISTINCT A.* FROM ( ");
        sb.append("    SELECT B.* FROM ( ");
        sb.append("    SELECT TO_CHAR(D.N_ID_CASO), D.C_CODIGOCASO, D.C_NOMCASO, ROWNUM NUMFILA  FROM SIMCO_REPORTE_CASO D ");
        sb.append("    INNER JOIN SIMCO_REPORTE_CODIGO X ON D.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ");
        sb.append("    WHERE UPPER(D.C_CODIGOCASO||D.C_NOMCASO) LIKE ? AND D.C_INDVIGENTE = 'A' AND D.C_TIPOESTADO IN ('04','05')");
        sb.append("    ) B WHERE NUMFILA BETWEEN ? AND ?) A  ORDER BY A.NUMFILA ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, '%' + filtroCaso.getNombre().toUpperCase() + '%');
        query.setParameter(2, filtroCaso.getIni());
        query.setParameter(3, filtroCaso.getFin());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public Object contarCasoXnombreCodigo(Filtro filtroCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(DISTINCT N_ID_CASO) FROM SIMCO_REPORTE_CASO A ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ");
        sb.append("WHERE UPPER(A.C_CODIGOCASO||A.C_NOMCASO) LIKE ? AND A.C_INDVIGENTE = 'A' AND A.C_INDAPROBADO = 'A' AND A.C_TIPOESTADO IN ('04','05') ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, '%' + filtroCaso.getNombre().toUpperCase() + '%');
        Object contador = query.getSingleResult();
        return contador;
    }

    public List<Object[]> buscarActorXnombre(Filtro filtroActor) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT DISTINCT A.* FROM ( ");
        sb.append("    SELECT B.* FROM ( ");
        sb.append("    SELECT TO_CHAR(D.N_ID_ACTOR), D.C_TIPOGENERAL, D.C_NOMACTOR||' '||D.C_APELLIDOPATACTOR||' '||D.C_APELLIDOMATACTOR, D.C_DNIACTOR, D.C_RUCACTOR, ROWNUM NUMFILA FROM SIMCO_REPORTE_ACTOR D  ");
        sb.append("    INNER JOIN SIMCO_REPORTE_CODIGO X ON D.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A'  ");
        sb.append("    WHERE UPPER(D.C_NOMACTOR||D.C_APELLIDOPATACTOR||D.C_APELLIDOMATACTOR) LIKE ?  ");
        sb.append("    ) B WHERE NUMFILA BETWEEN ? AND ?) A ORDER BY A.NUMFILA");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, '%' + filtroActor.getNombre().toUpperCase() + '%');
        query.setParameter(2, filtroActor.getIni());
        query.setParameter(3, filtroActor.getFin());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public Object contarActorXnombreCodigo(Filtro filtroActor) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(DISTINCT N_ID_ACTOR) FROM SIMCO_REPORTE_ACTOR A ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ");
        sb.append("WHERE UPPER(A.C_NOMACTOR||A.C_APELLIDOPATACTOR||A.C_APELLIDOMATACTOR) LIKE ?  ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, '%' + filtroActor.getNombre().toUpperCase() + '%');
        Object contador = query.getSingleResult();
        return contador;
    }

    public List<Object[]> listarParametro(String codigoPadre) {
        StringBuilder sb = new StringBuilder();
        sb.append(" SELECT * FROM SIMCO_PARAMETRO WHERE PADRE_PARAMETRO = ? ");
        if (StringUtils.equals(codigoPadre, "120")) {
            sb.append(" AND VALOR_PARAMETRO NOT IN ('01','02','03','06','07') ");
        }
        sb.append(" ORDER BY NUM_PARAMETRO");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, codigoPadre);
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public List<Object[]> listarRegion() {
        StringBuilder sb = new StringBuilder();
        sb.append("select * FROM SIMCO_UBIGEO_DPTO ORDER BY C_DESCDPTO");
        Query query = em.createNativeQuery(sb.toString());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public List<Object[]> reporteActividad(ReporteSimcoActividad reporteSimcoActividad) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT distinct A.N_ID_ACTIVIDAD, A.C_CODIGOACTIVIDAD, A.C_NOMACTIVIDAD, TO_CHAR(A.D_FECREGISTRO, 'DD/MM/YYYY') FECHA_REGISTRO, A.C_TIPO, ");
        sb.append("B.NOMBRE_PARAMETRO TIPOACTUACIONDEFENSORIAL, A.C_TIPOACONTECIMIENTO, A.C_TIPOVIOLENCIA, A.C_RESULTADOVIOLENCIA, ");
        sb.append("D.C_DESCDPTO, J.C_DESCPROV, K.C_DESCDSTRO, F.C_CODIGOCASO, F.C_NOMCASO, G.NOMBRE_PARAMETRO TIPOCASO,  ");
        sb.append("H.NOMBRE_PARAMETRO TIPOACTIVIDAD, I.C_CODIGOACTIVIDAD COD_ACONTECIMIENTO_VINCULADO,I.C_NOMACTIVIDAD NOM_ACONTECIMIENTO_VINCULADO, A.C_TIPO_ACTIVIDAD ");
        sb.append("FROM SIMCO_REPORTE_ACTIVIDAD A  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO B ON B.VALOR_PARAMETRO = A.C_TIPO_ACTIVIDAD AND B.PADRE_PARAMETRO = 10 AND A.C_TIPO = 'AD' ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DPTO D ON A.CIDDEPART = D.C_ID_DPTO ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_PROV J ON A.CIDPROV = J.C_ID_PROV AND D.C_ID_DPTO = J.C_ID_DPTO ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DSTRO K ON A.CIDDISTR = K.C_ID_DSTRO AND D.C_ID_DPTO = K.C_ID_DPTO AND J.C_ID_PROV = K.C_ID_PROV  ");
        sb.append("LEFT JOIN SIMCO_REPORTE_CASO_ACTIVIDAD E ON E.N_ID_ACTIVIDAD = A.N_ID_ACTIVIDAD AND E.C_ESTADOACTCASO = 'ACT' ");
        sb.append("LEFT JOIN SIMCO_REPORTE_CASO F ON F.N_ID_CASO = E.N_ID_CASO AND F.C_INDVIGENTE = 'A' ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO G ON G.VALOR_PARAMETRO = F.C_TIPOCASO AND G.PADRE_PARAMETRO = 90         ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO H ON H.VALOR_PARAMETRO = F.C_SUBTIPOCASO AND H.PADRE_PARAMETRO = 130 ");
        sb.append("LEFT JOIN ( ");
        sb.append("SELECT I1.* FROM SIMCO_REPORTE_ACTIVIDAD I1  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X1 ON I1.N_ID_CODIGOCARGA = X1.N_ID_REPORTE AND X1.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X1.C_MES = TO_CHAR(SYSDATE, 'MM') AND X1.C_IND_ACTIVO = 'A'  ");
        sb.append("WHERE I1.C_TIPO = 'AC'  ");
        sb.append(") I ON A.N_ID_ACONTECIMIENTO = I.N_ID_ACTIVIDAD ");
        sb.append("LEFT JOIN ( ");
        sb.append("SELECT L1.* FROM SIMCO_REPORTE_ACTIVIDAD_ACTOR L1  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X2 ON L1.N_ID_CODIGOCARGA = X2.N_ID_REPORTE AND X2.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X2.C_MES = TO_CHAR(SYSDATE, 'MM') AND X2.C_IND_ACTIVO = 'A'  ");
        sb.append(") L ON A.N_ID_ACTIVIDAD = L.N_ID_ACTIVIDAD   ");
        sb.append("LEFT JOIN ( ");
        sb.append("SELECT M1.* FROM SIMCO_REPORTE_ACTOR M1  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X3 ON M1.N_ID_CODIGOCARGA = X3.N_ID_REPORTE AND X3.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X3.C_MES = TO_CHAR(SYSDATE, 'MM') AND X3.C_IND_ACTIVO = 'A'  ");
        sb.append(") M ON M.N_ID_ACTOR = L.N_ID_ACTOR  ");
        sb.append("WHERE 1 = 1 ");

        if (StringUtils.isNoneBlank(reporteSimcoActividad.getAnho()) && !StringUtils.equals(reporteSimcoActividad.getAnho().trim(), "0")) {
            sb.append(" AND TO_CHAR(F.D_FECHACREACION, 'yyyy') = " + reporteSimcoActividad.getAnho() + "");
        }
        if (StringUtils.isNotBlank(reporteSimcoActividad.getCodigoCaso())) {
            sb.append(" AND F.C_CODIGOCASO = '" + reporteSimcoActividad.getCodigoCaso() + "'");
        }
        if (StringUtils.isNotBlank(reporteSimcoActividad.getTipologiaCaso())) {
            sb.append(" AND F.C_TIPOCASO  = " + reporteSimcoActividad.getTipologiaCaso() + "");
        }
        if (StringUtils.isNotBlank(reporteSimcoActividad.getIdRegion())) {
            sb.append(" AND F.C_IDDEPART  = " + reporteSimcoActividad.getIdRegion() + "");
        }
        if (StringUtils.isNotBlank(reporteSimcoActividad.getEstado())) {
            sb.append(" AND F.C_TIPOESTADO  = " + reporteSimcoActividad.getEstado() + "");
        }
        if (StringUtils.isNotBlank(reporteSimcoActividad.getTipoAcontecimiento())) {
            sb.append(" AND A.C_TIPOACONTECIMIENTO  = " + reporteSimcoActividad.getTipoAcontecimiento() + "");
        }
        if (StringUtils.isNotBlank(reporteSimcoActividad.getTipoActor().trim())) {
            sb.append(" AND M.C_TIPOGENERAL = '" + reporteSimcoActividad.getTipoActor().trim() + "'");
        }
        sb.append(" ORDER BY A.N_ID_ACTIVIDAD ");
        Query query = em.createNativeQuery(sb.toString());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public Integer actorXactividadSimpleBuscarCount(Long idActividad) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT  TO_CHAR(COUNT(DISTINCT A.N_ID_ACTOR)) FROM SIMCO_REPORTE_ACTOR A ");
        sb.append("INNER JOIN SIMCO_REPORTE_ACTIVIDAD_ACTOR B ON A.N_ID_ACTOR = B.N_ID_ACTOR ");
        sb.append("INNER JOIN SIMCO_REPORTE_ACTIVIDAD C ON C.N_ID_ACTIVIDAD = B.N_ID_ACTIVIDAD ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND B.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND C.N_ID_CODIGOCARGA = X.N_ID_REPORTE ");
        sb.append("AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ");
        Query query = em.createNativeQuery(sb.toString());
        Object o = query.getSingleResult();
        Integer count = 0;
        count = Integer.parseInt(o.toString());
        return count;
    }

    public String consultarParametroValor(String valorParametro, String codigoPadreParametro) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT NOMBRE_PARAMETRO FROM SIMCO_PARAMETRO ");
        sb.append("    WHERE VALOR_PARAMETRO = " + valorParametro + " ");
        sb.append("    AND PADRE_PARAMETRO = " + codigoPadreParametro + " ");
        Query query = em.createNativeQuery(sb.toString());
        Object o = query.getSingleResult();
        String nombre = null;

        nombre = o.toString();

        return nombre;
    }

    public List<String> actividadVictimaBuscar(Long idActividad) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT trim(A.C_TIPO) FROM SIMCO_REPORTE_ACTIVIDAD_VICT A ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ");
        sb.append("WHERE A.N_ID_ACTIVIDAD =  " + idActividad);
        Query query = em.createNativeQuery(sb.toString());
        List<Object> lst = query.getResultList();
        List<String> listaString = new ArrayList<>();
        for (Object o : lst) {
            listaString.add(o.toString());
        }
        return listaString;
    }

    public List<Object[]> reporteCaso(ReporteSimcoCaso reporteSimcoCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT DISTINCT A.N_ID_CASO, A.C_CODIGOCASO, A.C_NOMCASO, TO_CHAR(A.D_FECHAINICIO, 'dd/mm/yyyy') FECHA_INICIO, TO_CHAR(A.D_FECHAFIN, 'dd/mm/yyyy') FECHA_FIN,  ");
        sb.append("B.C_DESCDPTO, M.C_DESCPROV, N.C_DESCDSTRO, C.NOMBRE_PARAMETRO TIPOCASO, D.NOMBRE_PARAMETRO TIPOESTADO, E.NOMBRE_PARAMETRO TIPOACTIVIDAD,  ");
        sb.append("F.NOMBRE_PARAMETRO FASE, G.ACUERDOS, O.C_NOMBRE PRIMERNIVEL, P.C_NOMBRE SEGUNDONIVEL, Q.C_NOMBRE TERCERNIVEL,   ");
        sb.append("TO_CHAR(A.D_FECHAMODIFICACION, 'dd/mm/yyyy') FECHA_MODIFICACION, R.NOMBRE_PARAMETRO MOMENTO_DIALOGO, S.NOMBRE_PARAMETRO MECANISMO_DIALOGO,   ");
        sb.append("T.NOMBRE_PARAMETRO PARTICIPACION, A.N_INVERSIONINVOLUCRADA, A.D_FECHACREACION  ");
        sb.append("FROM SIMCO_REPORTE_CASO A  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A'  ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DPTO B ON A.C_IDDEPART = B.C_ID_DPTO  ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_PROV M ON A.C_IDPROV = M.C_ID_PROV AND B.C_ID_DPTO = M.C_ID_DPTO  ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DSTRO N ON A.C_IDDISTR = N.C_ID_DSTRO AND B.C_ID_DPTO = N.C_ID_DPTO AND M.C_ID_PROV = N.C_ID_PROV  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO C ON C.VALOR_PARAMETRO = A.C_TIPOCASO AND C.PADRE_PARAMETRO = 90  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO D ON D.VALOR_PARAMETRO = A.C_TIPOESTADO AND D.PADRE_PARAMETRO = 120   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO E ON E.VALOR_PARAMETRO = A.C_SUBTIPOCASO AND E.PADRE_PARAMETRO = 130  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO F ON F.VALOR_PARAMETRO = A.C_TIPODIALOGO AND F.PADRE_PARAMETRO = 210  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO R ON R.VALOR_PARAMETRO = A.C_MOMENTODIALOGO AND R.PADRE_PARAMETRO = 240  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO S ON S.VALOR_PARAMETRO = A.C_TIPOMECANISMO AND S.PADRE_PARAMETRO = 220  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO T ON T.VALOR_PARAMETRO = A.C_TIPOPARTICIPACION AND T.PADRE_PARAMETRO = 230  ");
        sb.append("LEFT JOIN SIMCO_REG_PRIMER_NIVEL O ON O.C_ID_CODIGOPRIMERO = A.C_PRIMERNIVEL  ");
        sb.append("LEFT JOIN SIMCO_REG_SEGUNDO_NIVEL P ON P.C_IDCODIGOSEGUNDO = A.C_SEGUNDONIVEL  ");
        sb.append("LEFT JOIN SIMCO_REG_TERCER_NIVEL Q ON Q.C_ID_CODIGOTERCERO = A.C_TERCERNIVEL  ");
        sb.append("LEFT JOIN (  ");
        sb.append("SELECT COUNT(*) ACUERDOS, D1.N_ID_CASO FROM SIMCO_REG_DET_ACTA_ACUERDO A1  ");
        sb.append("INNER JOIN SIMCO_REG_ACTA_ACUERDO B1 ON A1.N_ID_ACTA = B1.N_ID_ACTA  ");
        sb.append("INNER JOIN SIMCO_REG_ACTIVIDAD_ACTAS C1 ON B1.N_ID_ACTA = C1.N_ID_ACTA  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CASO_ACTIVIDAD D1 ON C1.N_ID_ACTIVIDAD = D1.N_ID_ACTIVIDAD  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X1 ON D1.N_ID_CODIGOCARGA = X1.N_ID_REPORTE AND X1.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X1.C_MES = TO_CHAR(SYSDATE, 'MM') AND X1.C_IND_ACTIVO = 'A'  ");
        sb.append("GROUP BY D1.N_ID_CASO  ");
        sb.append(") G ON A.N_ID_CASO = G.N_ID_CASO  ");
        sb.append("LEFT JOIN (  ");
        sb.append("SELECT A2.C_TIPOACONTECIMIENTO, B2.N_ID_CASO, A2.N_ID_ACTIVIDAD FROM SIMCO_REPORTE_ACTIVIDAD A2  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CASO_ACTIVIDAD B2 ON A2.N_ID_ACTIVIDAD = B2.N_ID_ACTIVIDAD  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X2 ON A2.N_ID_CODIGOCARGA = X2.N_ID_REPORTE AND B2.N_ID_CODIGOCARGA = X2.N_ID_REPORTE AND X2.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X2.C_MES = TO_CHAR(SYSDATE, 'MM') AND X2.C_IND_ACTIVO = 'A'  ");
        sb.append(") J ON A.N_ID_CASO = J.N_ID_CASO  ");
        sb.append("LEFT JOIN ( ");
        sb.append("SELECT K.* FROM SIMCO_REPORTE_ACTIVIDAD_ACTOR K  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X3 ON  K.N_ID_CODIGOCARGA = X3.N_ID_REPORTE AND X3.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X3.C_MES = TO_CHAR(SYSDATE, 'MM') AND X3.C_IND_ACTIVO = 'A'  ");
        sb.append(") K ON J.N_ID_ACTIVIDAD = K.N_ID_ACTIVIDAD  ");
        sb.append("LEFT JOIN ( ");
        sb.append("SELECT L.* FROM SIMCO_REPORTE_ACTOR L   ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X4 ON L.N_ID_CODIGOCARGA = X4.N_ID_REPORTE AND X4.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X4.C_MES = TO_CHAR(SYSDATE, 'MM') AND X4.C_IND_ACTIVO = 'A'  ");
        sb.append(") L ON K.N_ID_ACTOR = L.N_ID_ACTOR ");
        sb.append("WHERE A.C_INDVIGENTE = 'A' AND A.C_INDAPROBADO = 'A' AND A.C_TIPOESTADO IN ('04','05') ");

        if (StringUtils.isNoneBlank(reporteSimcoCaso.getAnho()) && !StringUtils.equals(reporteSimcoCaso.getAnho().trim(), "0")) {
            sb.append(" AND TO_CHAR(A.D_FECHAINICIO, 'yyyy') = ").append(reporteSimcoCaso.getAnho()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoCaso.getTipologia())) {
            sb.append(" AND A.C_TIPOCASO  = ").append(reporteSimcoCaso.getTipologia()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoCaso.getIdRegion())) {
            sb.append(" AND A.C_IDDEPART  = ").append(reporteSimcoCaso.getIdRegion()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoCaso.getEstado())) {
            sb.append(" AND A.C_TIPOESTADO  = ").append(reporteSimcoCaso.getEstado()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoCaso.getTipoAcontecimiento())) {
            sb.append(" AND J.C_TIPOACONTECIMIENTO  = ").append(reporteSimcoCaso.getTipoAcontecimiento()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoCaso.getTipoActor().trim())) {
            sb.append(" AND L.C_TIPOGENERAL = '").append(reporteSimcoCaso.getTipoActor().trim()).append("'");
        }
        sb.append(" ORDER BY FECHA_INICIO ");
        Query query = em.createNativeQuery(sb.toString());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public List<Object[]> reporteVictima(ReporteSimcoVictima reporteSimcoVictima) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT DISTINCT  A.C_APEPATERNO||' '||A.C_APEMATERNO||' '||A.C_NOMBRE NOMBRE_COMPLETO, A.N_EDAD, A.C_SEXO, B.NOMBRE_PARAMETRO TIPO_VICTIMA, ");
        sb.append("C.NOMBRE_PARAMETRO TIPOESTADO, D.C_NOMACTIVIDAD, D.C_TIPOACONTECIMIENTO, E.C_DESCDPTO, A.N_NOIDENTIFICADO, G.C_CODIGOCASO, G.C_NOMCASO,  ");
        sb.append("H.NOMBRE_PARAMETRO TIPOCASO, I.NOMBRE_PARAMETRO TIPOACTIVIDAD, D.C_NOMACTIVIDAD, D.C_CODIGOACTIVIDAD, J.C_DESCPROV, K.C_DESCDSTRO, A.C_DNI,  D.N_ID_ACTIVIDAD, A.N_ID_VICTIMAS  ");
        sb.append("FROM SIMCO_REPORTE_ACTIVIDAD_VICT A  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A'  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO B ON B.VALOR_PARAMETRO = A.C_TIPO AND B.PADRE_PARAMETRO = 200   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO C ON C.VALOR_PARAMETRO = A.C_TIPOESTADO AND C.PADRE_PARAMETRO = 190   ");
        sb.append("INNER JOIN   ");
        sb.append("(SELECT * FROM SIMCO_REPORTE_ACTIVIDAD S  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X3 ON S.N_ID_CODIGOCARGA = X3.N_ID_REPORTE AND X3.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X3.C_MES = TO_CHAR(SYSDATE, 'MM') AND X3.C_IND_ACTIVO = 'A'   ");
        sb.append(") D ON A.N_ID_ACTIVIDAD = D.N_ID_ACTIVIDAD AND D.C_TIPO = 'AC'  ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DPTO E ON D.CIDDEPART = E.C_ID_DPTO  ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_PROV J ON D.CIDPROV = J.C_ID_PROV AND E.C_ID_DPTO = J.C_ID_DPTO ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DSTRO K ON D.CIDDISTR = K.C_ID_DSTRO AND E.C_ID_DPTO = K.C_ID_DPTO AND J.C_ID_PROV = K.C_ID_PROV  ");
        sb.append("LEFT JOIN (SELECT * FROM SIMCO_REPORTE_CASO_ACTIVIDAD S1    ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X4 ON S1.N_ID_CODIGOCARGA = X4.N_ID_REPORTE AND X4.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X4.C_MES = TO_CHAR(SYSDATE, 'MM') AND X4.C_IND_ACTIVO = 'A'   ");
        sb.append(") F  ON F.N_ID_ACTIVIDAD = D.N_ID_ACTIVIDAD AND F.C_ESTADOACTCASO = 'ACT' ");
        sb.append("LEFT JOIN  ");
        sb.append("(SELECT * FROM SIMCO_REPORTE_CASO S2  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X5 ON S2.N_ID_CODIGOCARGA = X5.N_ID_REPORTE AND X5.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X5.C_MES = TO_CHAR(SYSDATE, 'MM') AND X5.C_IND_ACTIVO = 'A'   ");
        sb.append(")G ON G.N_ID_CASO = F.N_ID_CASO AND G.C_INDVIGENTE= 'A' AND G.N_ID_CASO IS NOT NULL ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO H ON H.VALOR_PARAMETRO = G.C_TIPOCASO AND H.PADRE_PARAMETRO = 90          ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO I ON I.VALOR_PARAMETRO = G.C_SUBTIPOCASO AND I.PADRE_PARAMETRO = 130  ");
        sb.append("LEFT JOIN (  ");
        sb.append("SELECT J.* FROM SIMCO_REPORTE_ACTIVIDAD_ACTOR J   ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X1 ON J.N_ID_CODIGOCARGA = X1.N_ID_REPORTE AND X1.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X1.C_MES = TO_CHAR(SYSDATE, 'MM') AND X1.C_IND_ACTIVO = 'A'   ");
        sb.append(") J1 ON J1.N_ID_ACTIVIDAD = D.N_ID_ACTIVIDAD ");
        sb.append("LEFT JOIN (  ");
        sb.append("SELECT K.* FROM SIMCO_REPORTE_ACTOR K   ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X2 ON K.N_ID_CODIGOCARGA = X2.N_ID_REPORTE AND X2.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X2.C_MES = TO_CHAR(SYSDATE, 'MM') AND X2.C_IND_ACTIVO = 'A'   ");
        sb.append(") K1 ON K1.N_ID_ACTOR = J1.N_ID_ACTOR   ");
        sb.append("WHERE 1 = 1 ");

        if (StringUtils.isNoneBlank(reporteSimcoVictima.getAnho()) && !StringUtils.equals(reporteSimcoVictima.getAnho().trim(), "0")) {
            sb.append(" AND TO_CHAR(A.D_FECHAREGISTRO, 'yyyy') = ").append(reporteSimcoVictima.getAnho()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoVictima.getCodigoCaso())) {
            sb.append(" AND G.C_CODIGOCASO = '").append(reporteSimcoVictima.getCodigoCaso()).append("'");
        }
        if (StringUtils.isNotBlank(reporteSimcoVictima.getTipologiaCaso())) {
            sb.append(" AND G.C_TIPOCASO  = ").append(reporteSimcoVictima.getTipologiaCaso()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoVictima.getIdRegion())) {
            sb.append(" AND G.C_IDDEPART  = ").append(reporteSimcoVictima.getIdRegion()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoVictima.getEstado())) {
            sb.append(" AND G.C_TIPOESTADO  = ").append(reporteSimcoVictima.getEstado()).append("");
        }
        if (StringUtils.isNotBlank(reporteSimcoVictima.getTipoAcontecimiento())) {
            sb.append(" AND D.C_TIPOACONTECIMIENTO  = ").append(reporteSimcoVictima.getTipoAcontecimiento()).append("");
        }
        if (reporteSimcoVictima.getIdActor() != null) {
            sb.append(" AND K1.N_ID_ACTOR  = " + reporteSimcoVictima.getIdActor());
        }
        if (StringUtils.isNotBlank(reporteSimcoVictima.getTipoActor())) {
            sb.append(" AND K1.C_TIPOGENERAL  = '" + reporteSimcoVictima.getTipoActor() + "'");
        }
        Query query = em.createNativeQuery(sb.toString());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public List<Object[]> reporteActor(ReporteSimcoActor reporteSimcoActor) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT DISTINCT A.C_NOMACTOR||' '||nvl(A.C_APELLIDOPATACTOR, '')||' '||nvl(A.C_APELLIDOMATACTOR, '') NOMACTOR, A.C_TIPOGENERAL,   ");
        sb.append("B.C_DESCDPTO, A.N_ID_ACTOR, A.C_DNIACTOR, A.C_RUCACTOR, M1.C_NOMBREPARAMETRO DES_TIPOPOBLACION, M2.C_NOMBREPARAMETRO DES_SUBTIPO1POBLACION,   ");
        sb.append("M3.C_NOMBREPARAMETRO DES_SUBTIPO2POBLACION, M7.C_NOMBREPARAMETRO DES_TIPOORGANIZACION,  M8.C_NOMBREPARAMETRO DES_SUBTIPO1ORGANIZACION,    ");
        sb.append("M9.C_NOMBREPARAMETRO DES_SUBTIPO2ORGANIZACION, M10.C_NOMBREPARAMETRO DES_TIPOEMPRESA, M11.C_NOMBREPARAMETRO DES_SUBTIPO1EMPRESA,   ");
        sb.append("M12.C_NOMBREPARAMETRO DES_SUBTIPO2EMPRESA,M13.C_NOMBREPARAMETRO DES_SUBTIPO3EMPRESA, M4.C_NOMBREPARAMETRO DES_TIPOESTADO, M5.C_NOMBREPARAMETRO DES_SUBTIPO1ESTADO,   ");
        sb.append("M6.C_NOMBREPARAMETRO DES_SUBTIPO2ESTADO, A.C_CLASIFICACION, F.NOMBRE_PARAMETRO DES_EMPRESAAMBITO, A.C_SEXO, G.C_DESCPROV, H.C_DESCDSTRO    ");
        sb.append("FROM SIMCO_REPORTE_ACTOR A   ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A'  ");
        sb.append("INNER JOIN ( ");
        sb.append("SELECT C1.* FROM SIMCO_REPORTE_ACTIVIDAD_ACTOR C1  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X1 ON C1.N_ID_CODIGOCARGA = X1.N_ID_REPORTE AND X1.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X1.C_MES = TO_CHAR(SYSDATE, 'MM') AND X1.C_IND_ACTIVO = 'A'  ");
        sb.append(") C ON A.N_ID_ACTOR = C.N_ID_ACTOR  ");
        sb.append("INNER JOIN ( ");
        sb.append("SELECT D1.* FROM SIMCO_REPORTE_CASO_ACTIVIDAD D1  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X2 ON D1.N_ID_CODIGOCARGA = X2.N_ID_REPORTE AND X2.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X2.C_MES = TO_CHAR(SYSDATE, 'MM') AND X2.C_IND_ACTIVO = 'A'  ");
        sb.append(") D ON C.N_ID_ACTIVIDAD = D.N_ID_ACTIVIDAD  ");
        sb.append("INNER JOIN( ");
        sb.append("SELECT E1.* FROM SIMCO_REPORTE_CASO E1 ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X3 ON E1.N_ID_CODIGOCARGA = X3.N_ID_REPORTE AND X3.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X3.C_MES = TO_CHAR(SYSDATE, 'MM') AND X3.C_IND_ACTIVO = 'A' ");
        sb.append("WHERE E1.C_INDVIGENTE= 'A' AND E1.C_INDAPROBADO = 'A' ");
        sb.append(") E ON D.N_ID_CASO = E.N_ID_CASO ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DPTO B ON A.C_IDDEPARTAMENTO = B.C_ID_DPTO ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_PROV G ON A.C_IDPROVINCIA = G.C_ID_PROV AND A.C_IDDEPARTAMENTO = G.C_ID_DPTO ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DSTRO H ON A.C_IDDISTRITO = H.C_ID_DSTRO AND A.C_IDDEPARTAMENTO = H.C_ID_DPTO AND A.C_IDPROVINCIA = H.C_ID_PROV ");
        sb.append("LEFT JOIN ( ");
        sb.append("SELECT A2.C_TIPOACONTECIMIENTO, B2.N_ID_CASO, A2.N_ID_ACTIVIDAD FROM SIMCO_REPORTE_ACTIVIDAD A2 ");
        sb.append("INNER JOIN SIMCO_REPORTE_CASO_ACTIVIDAD B2 ON A2.N_ID_ACTIVIDAD = B2.N_ID_ACTIVIDAD ");
        sb.append(") F ON E.N_ID_CASO = F.N_ID_CASO ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M1 ON A.C_TIPOPOBLACION = M1.C_VALORPARAMETRO AND M1.N_GRUPO = 1 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M2 ON A.C_SUBTIPO1POBLACION = M2.C_VALORPARAMETRO AND M2.N_GRUPO = 2 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M3 ON A.C_SUBTIPO2POBLACION = M3.C_VALORPARAMETRO AND M3.N_GRUPO = 3 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M4 ON A.C_TIPOESTADO = M4.C_VALORPARAMETRO AND M4.N_GRUPO = 4 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M5 ON A.C_SUBTIPO1ESTADO = M5.C_VALORPARAMETRO AND M5.N_GRUPO = 5 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M6 ON A.C_SUBTIPO2ESTADO = M6.C_VALORPARAMETRO AND M6.N_GRUPO = 6 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M7 ON A.C_TIPOORGANIZACION = M7.C_VALORPARAMETRO AND M7.N_GRUPO = 7 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M8 ON A.C_SUBTIPO1ORGANIZACION = M8.C_VALORPARAMETRO AND M8.N_GRUPO = 8 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M9 ON A.C_SUBTIPO2ORGANIZACION = M9.C_VALORPARAMETRO AND M9.N_GRUPO = 9 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M10 ON A.C_TIPOEMPRESA = M10.C_VALORPARAMETRO AND M10.N_GRUPO = 10 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M11 ON A.C_SUBTIPO1EMPRESA = M11.C_VALORPARAMETRO AND M11.N_GRUPO = 11 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M12 ON A.C_SUBTIPO2EMPRESA = M12.C_VALORPARAMETRO AND M12.N_GRUPO = 12 ");
        sb.append("LEFT JOIN SIMCO_MAESTROS M13 ON A.C_SUBTIPO3EMPRESA = M13.C_VALORPARAMETRO AND M13.N_GRUPO = 13 ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO F ON F.VALOR_PARAMETRO = A.C_EMPRESAAMBITO AND F.PADRE_PARAMETRO = 170 ");
        sb.append("WHERE 1 = 1  ");

        if (StringUtils.isNoneBlank(reporteSimcoActor.getAnho()) && !StringUtils.equals(reporteSimcoActor.getAnho().trim(), "0")) {
            sb.append(" AND TO_CHAR(E.D_FECHAINICIO, 'YYYY') = " + reporteSimcoActor.getAnho());
        }
        if (StringUtils.isNotBlank(reporteSimcoActor.getCodigoCaso())) {
            sb.append(" AND E.C_CODIGOCASO = '" + reporteSimcoActor.getCodigoCaso() + "'");
        }
        if (StringUtils.isNotBlank(reporteSimcoActor.getTipologia())) {
            sb.append(" AND E.C_TIPOCASO = " + reporteSimcoActor.getTipologia());
        }
        if (StringUtils.isNotBlank(reporteSimcoActor.getIdRegion())) {
            sb.append(" AND E.C_IDDEPART = " + reporteSimcoActor.getIdRegion());
        }
        if (StringUtils.isNotBlank(reporteSimcoActor.getEstado())) {
            sb.append(" AND E.C_TIPOESTADO = " + reporteSimcoActor.getEstado());
        }
        if (StringUtils.isNotBlank(reporteSimcoActor.getTipoAcontecimiento())) {
            sb.append(" AND F.C_TIPOACONTECIMIENTO = " + reporteSimcoActor.getTipoAcontecimiento());
        }
        if (reporteSimcoActor.getIdActor() != null) {
            sb.append(" AND A.N_ID_ACTOR  = " + reporteSimcoActor.getIdActor());
        }
        if (StringUtils.isNotBlank(reporteSimcoActor.getTipoActor())) {
            sb.append(" AND A.C_TIPOGENERAL  = '" + reporteSimcoActor.getTipoActor() + "'");
        }
        Query query = em.createNativeQuery(sb.toString());
        List<Object[]> lst = query.getResultList();
        return lst;
    }

    public Integer contarActorAcontecimiento(Long idActor) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(DISTINCT A.N_ID_ACTIVIDAD) FROM SIMCO_REPORTE_ACTIVIDAD A  ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A'  ");
        sb.append("INNER JOIN (SELECT B1.* FROM SIMCO_REPORTE_ACTIVIDAD_ACTOR B1   ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON B1.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ) B ");
        sb.append("ON A.N_ID_ACTIVIDAD = B.N_ID_ACTIVIDAD ");
        sb.append("WHERE A.C_TIPO = 'AC' AND B.N_ID_ACTOR = ? ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, idActor);
        Object cont = query.getSingleResult();
        return Integer.parseInt(cont.toString());
    }

    public List<Object[]> contadorCasosEstado(String estadoCaso, String anho) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(A.N_ID_CASO) TOTAL, TO_CHAR(A.D_FECHAINICIO, 'YYYY-MM') MES  FROM SIMCO_REPORTE_CASO A   ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO B ON A.N_ID_CODIGOCARGA = B.N_ID_REPORTE AND B.C_ANHO||B.C_MES = TO_CHAR(SYSDATE, 'YYMM') AND B.C_IND_ACTIVO = 'A' ");
        sb.append("WHERE A.C_INDVIGENTE= 'A' AND C_INDAPROBADO = 'A' AND A.C_TIPOESTADO = ? AND TO_CHAR(A.D_FECHAINICIO, 'YYYY') = ?  ");
        sb.append("GROUP BY TO_CHAR(A.D_FECHAINICIO, 'YYYY-MM') ORDER BY MES");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, estadoCaso);
        query.setParameter(2, anho);
        List<Object[]> lista = query.getResultList();
        return lista;
    }

    public Object contadorCasosEstadoGeneral(String estadoCaso, String anho, String mes) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(A.N_ID_CASO) TOTAL FROM SIMCO_REPORTE_CASO A ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO B ON A.N_ID_CODIGOCARGA = B.N_ID_REPORTE AND B.C_ANHO||B.C_MES = TO_CHAR(SYSDATE, 'YYMM') AND B.C_IND_ACTIVO = 'A'  ");
        sb.append("WHERE A.C_INDVIGENTE= 'A' AND C_INDAPROBADO = 'A' AND A.C_TIPOESTADO = ? AND TO_CHAR(A.D_FECHAINICIO, 'YYYY') = ?  AND TO_CHAR(A.D_FECHAINICIO, 'MM') = ?");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, estadoCaso);
        query.setParameter(2, anho);
        query.setParameter(3, mes);
        Object contador = query.getSingleResult();
        return contador;
    }

    public Object contadorActaAcuerdo(Long idActividad) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(A.N_ID_ACUERDO) FROM SIMCO_REG_DET_ACTA_ACUERDO A ");
        sb.append("INNER JOIN SIMCO_REG_ACTA_ACUERDO B ON A.N_ID_ACTA = B.N_ID_ACTA  ");
        sb.append("INNER JOIN SIMCO_REG_ACTIVIDAD_ACTAS C ON B.N_ID_ACTA = C.N_ID_ACTA ");
        sb.append("WHERE C.N_ID_ACTIVIDAD = ? ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(3, idActividad);
        Object contador = query.getSingleResult();
        return contador;
    }
    
    public Object[] buscarCaso(Long idCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT A.N_ID_CASO, TO_CHAR(A.D_FECHAPUBLICACION, 'dd/mm/yyyy'), A.C_NOMCASO, ");
        sb.append("B.C_DESCDPTO, M.C_DESCPROV, N.C_DESCDSTRO, C.NOMBRE_PARAMETRO TIPOCASO, D.NOMBRE_PARAMETRO TIPOESTADO, E.NOMBRE_PARAMETRO TIPOACTIVIDAD, ");
        sb.append("F.NOMBRE_PARAMETRO FASE, O.C_NOMBRE PRIMERNIVEL, P.C_NOMBRE SEGUNDONIVEL, Q.C_NOMBRE TERCERNIVEL, ");
        sb.append("R.NOMBRE_PARAMETRO MOMENTO_DIALOGO, S.NOMBRE_PARAMETRO MECANISMO_DIALOGO,  T.NOMBRE_PARAMETRO PARTICIPACION ");
        sb.append("FROM SIMCO_REPORTE_CASO A ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A'  ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DPTO B ON A.C_IDDEPART = B.C_ID_DPTO   ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_PROV M ON A.C_IDPROV = M.C_ID_PROV AND B.C_ID_DPTO = M.C_ID_DPTO   ");
        sb.append("LEFT JOIN SIMCO_UBIGEO_DSTRO N ON A.C_IDDISTR = N.C_ID_DSTRO AND B.C_ID_DPTO = N.C_ID_DPTO AND M.C_ID_PROV = N.C_ID_PROV   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO C ON C.VALOR_PARAMETRO = A.C_TIPOCASO AND C.PADRE_PARAMETRO = 90   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO D ON D.VALOR_PARAMETRO = A.C_TIPOESTADO AND D.PADRE_PARAMETRO = 120    ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO E ON E.VALOR_PARAMETRO = A.C_SUBTIPOCASO AND E.PADRE_PARAMETRO = 130  ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO F ON F.VALOR_PARAMETRO = A.C_TIPODIALOGO AND F.PADRE_PARAMETRO = 210   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO R ON R.VALOR_PARAMETRO = A.C_MOMENTODIALOGO AND R.PADRE_PARAMETRO = 240   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO S ON S.VALOR_PARAMETRO = A.C_TIPOMECANISMO AND S.PADRE_PARAMETRO = 220   ");
        sb.append("LEFT JOIN SIMCO_PARAMETRO T ON T.VALOR_PARAMETRO = A.C_TIPOPARTICIPACION AND T.PADRE_PARAMETRO = 230   ");
        sb.append("LEFT JOIN SIMCO_REG_PRIMER_NIVEL O ON O.C_ID_CODIGOPRIMERO = A.C_PRIMERNIVEL   ");
        sb.append("LEFT JOIN SIMCO_REG_SEGUNDO_NIVEL P ON P.C_IDCODIGOSEGUNDO = A.C_SEGUNDONIVEL   ");
        sb.append("LEFT JOIN SIMCO_REG_TERCER_NIVEL Q ON Q.C_ID_CODIGOTERCERO = A.C_TERCERNIVEL ");
        sb.append("WHERE A.N_ID_CASO = ? ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, idCaso);
        List<Object[]> os = query.getResultList();
        return os.get(0);
    }
    
    public List<Object[]> actividadesPorCaso(Long idCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT A.N_ID_ACTIVIDAD, A.C_TIPO, A.C_NOMACTIVIDAD, C.C_RUTA, C.NOM_USUARIO||' '||C.APE_PATERNO||' '||C.APE_MATERNO, TO_CHAR(A.D_FECHAREALIZACIONINI, 'DD/MM/YYYY'), ");
        sb.append("A.C_RUTA, TO_CHAR(A.D_FECREGISTRO, 'DD/MM/YYYY'), TO_CHAR(A.D_FECMODIFICACION, 'DD/MM/YYYY'), A.C_DESCRIPACTIVIDAD ");
        sb.append("FROM SIMCO_REG_ACTIVIDAD A ");
        sb.append("INNER JOIN SIMCO_REG_CASO_ACTIVIDAD B ON A.N_ID_ACTIVIDAD = B.N_ID_ACTIVIDAD ");
        sb.append("INNER JOIN SIMCO_SEG_USUARIO C ON A.C_USUREGISTRO = C.CODIGO_USUARIO ");
        sb.append("WHERE B.C_ESTADOACTCASO = 'ACT' AND B.N_ID_CASO = ? ");
        sb.append("ORDER BY A.D_FECHAREALIZACIONINI DESC");
        
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, idCaso);
        List<Object[]> lista = query.getResultList();
        return lista;
    }
    
    public Object contadorAcontecimientosPorCaso(Long idCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(A.N_ID_ACTIVIDAD) FROM SIMCO_REG_ACTIVIDAD A ");
        sb.append("INNER JOIN SIMCO_REG_CASO_ACTIVIDAD B ON A.N_ID_ACTIVIDAD = B.N_ID_ACTIVIDAD ");
        sb.append("WHERE B.C_ESTADOACTCASO = 'ACT' AND A.C_TIPO = 'AC' AND B.N_ID_CASO = ? ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, idCaso);
        Object contador = query.getSingleResult();
        return contador;
    }
    
    public Object contadorActuacionesDefensorialesPorCaso(Long idCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(A.N_ID_ACTIVIDAD) FROM SIMCO_REG_ACTIVIDAD A ");
        sb.append("INNER JOIN SIMCO_REG_CASO_ACTIVIDAD B ON A.N_ID_ACTIVIDAD = B.N_ID_ACTIVIDAD ");
        sb.append("WHERE B.C_ESTADOACTCASO = 'ACT' AND A.C_TIPO = 'AD' AND B.N_ID_CASO = ? ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, idCaso);
        Object contador = query.getSingleResult();
        return contador;
    }

    public List<Object[]> buscarActorPorCaso(Long idCaso) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT A.N_ID_CASO, A.N_ID_ACTOR, CASE WHEN A.C_TIPO = '01' THEN 'Primario' WHEN A.C_TIPO = '02' THEN 'Secundario' WHEN A.C_TIPO = '03' THEN 'Terciario' ELSE ' ' END TIPOACTOR, ");
        sb.append("A.C_ESTADO, A.D_FECREGISTRO, B.C_NOMACTOR, B.C_APELLIDOPATACTOR, B.C_APELLIDOMATACTOR , B.C_TIPOGENERAL  ");
        sb.append("FROM (SELECT A1.* FROM SIMCO_REPORTE_CASO_ACTOR A1 ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON A1.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ) A ");
        sb.append("INNER JOIN (SELECT B1.* FROM SIMCO_REPORTE_ACTOR B1 ");
        sb.append("INNER JOIN SIMCO_REPORTE_CODIGO X ON B1.N_ID_CODIGOCARGA = X.N_ID_REPORTE AND X.C_ANHO = TO_CHAR(SYSDATE,'YY') AND X.C_MES = TO_CHAR(SYSDATE, 'MM') AND X.C_IND_ACTIVO = 'A' ) B ");
        sb.append("ON A.N_ID_ACTOR = B.N_ID_ACTOR ");
        sb.append("WHERE A.N_ID_CASO= ? AND A.C_ESTADO = 'ACT' ");
        sb.append("ORDER BY A.C_TIPO, B.C_NOMACTOR ");
        Query query = em.createNativeQuery(sb.toString());
        query.setParameter(1, idCaso);
        List<Object[]> lista = query.getResultList();
        return lista;
    }
    
    
}
