/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.AD;

/**
 *
 * @author alexa
 */
public class cConsultasAD {

    public String strSQLInsert(String resolucion, String cedula, String apellido, String nombre) {
        String result = "INSERT INTO prueba(resolucion, cedula, apellido, nombre)"
                + "VALUES(" + resolucion + "," + cedula + "," + apellido + "," + nombre + ")";
        return result;

    }

}
