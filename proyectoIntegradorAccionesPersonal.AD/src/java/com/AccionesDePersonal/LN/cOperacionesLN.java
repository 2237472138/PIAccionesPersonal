/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.LN;

import java.util.logging.Logger;
import com.ConexionBaseDatos.cAccesoDatos;
import com.ConexionBaseDatos.cConexion;
import com.AccionesDePersonal.AD.cConsultasAD;

/**
 *
 * @author alexa
 */
public class cOperacionesLN {

    private String strSQL;

    public Integer save(String resolucion, String cedula, String apellido, String nombre) {
        String resolucion1 = resolucion;
        String cedula1 = resolucion;
        String apellido1 = resolucion;
        String nombre1 = resolucion;

        Integer result = -1;
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            String strSQL = oConsultasAD.strSQLInsert(resolucion1, cedula1, apellido1, nombre1);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return result;
        }
    }

    public String getResolucion() {
        Integer result = -1;
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            String strSQL = oConsultasAD.strSQLSelectResolucion();
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return strSQL;
        }
    }

    public String getCedula() {
        Integer result = -1;
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            String strSQL = oConsultasAD.strSQLSelectCedula();
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return strSQL;
        }
    }

    public String getApellido() {
        Integer result = -1;
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            String strSQL = oConsultasAD.strSQLSelectApellido();
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return strSQL;
        }
    }

    public String getNombre() {
        Integer result = -1;
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            String strSQL = oConsultasAD.strSQLSelectNombre();
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return strSQL;
        }
    }
}
