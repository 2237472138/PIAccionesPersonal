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
    
    public Integer save(String resolucion,String cedula,String apellido,String nombre) {
        Integer result = -1;
         cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            String strSQL = oConsultasAD.strSQLInsert(resolucion, cedula, apellido, nombre);
            if (ad.Connectar() == 2) {
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
}
