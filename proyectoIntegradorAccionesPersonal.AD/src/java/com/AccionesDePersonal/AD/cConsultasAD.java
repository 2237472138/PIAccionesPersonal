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
        String resolucion1 = resolucion;
        String cedula1 = resolucion;
        String apellido1 = resolucion;
        String nombre1 = resolucion;

        String result = "INSERT INTO accionp(\n"
                + "            resolucion, cedula, apellido, nombre)\n"
                + "    VALUES (" + resolucion1 + "," + cedula1 + ", " + apellido1 + ", " + nombre1 + ");";
        return result;

    }

    public String strSQLSelectResolucion() {
        String result = "SELECT resolucion\n"
                + "  FROM accionp;";
        return result;
    }

    public String strSQLSelectCedula() {
        String result = "SELECT cedula\n"
                + "  FROM accionp;";
        return result;
    }

    public String strSQLSelectApellido() {
        String result = "SELECT apellido\n"
                + "  FROM accionp;";
        return result;
    }

    public String strSQLSelectNombre() {
        String result = "SELECT nombre\n"
                + "  FROM accionp;";
        return result;
    }
}
