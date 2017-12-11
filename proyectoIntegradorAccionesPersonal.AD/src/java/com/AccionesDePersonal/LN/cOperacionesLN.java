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

    private String strSQL, strSQL1;

    public String save(String resolucion, String cedula, String nombre, String apellido) {
        Integer result = -1,result1 = -1;
        String mensaje = "No se guardo en la base de datos";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLInsertAccionPersonal(resolucion, cedula);
            strSQL1 = oConsultasAD.strSQLInsertTrabajador(cedula,apellido, nombre);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);     //si nos da error cambiar el nombre de la variable
                result1 = ad.EjecutarUpdate(strSQL1);
                mensaje = "Datos Guardados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getResolucion() {
        Integer result = -1;
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectResolucion();
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
