/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.AD;
<<<<<<< HEAD
=======

import java.util.Calendar;

/**
 *
 * @author alexa
 */
public class cConsultasAD {

    public String strSQLInsertAccionPersonal(String resolucion, String cedula) {

        String nulo = "xxxx";
        String numero_ap = "510.M.DTH.2020";
        Integer numero_tipo = 5;
        Calendar cal = Calendar.getInstance();

        String fecha = cal.get(cal.DATE) + "/" + cal.get(cal.MONTH) + "/" + cal.get(cal.YEAR);

        String result = "INSERT INTO public.accion_personal(\n"
                + "            fecha_creada_ap, resolucion_ap, fecha_rige_ap, explicacion_ap, \n"
                + "            numero_ap, cedula_trabajador, numero_tipo, cedula_usuario, observaciones_ap, \n"
                + "            digitalizado_ap, rector_ap, director_th_ap)\n"
                + "    VALUES (' " + fecha + "', ' " + resolucion + "', ' " + fecha + "', ' " + nulo + "', \n"
                + "            ' " + numero_ap + "', ' " + cedula + "'," + numero_tipo + ", ' " + nulo + "', ' " + nulo + "', \n"
                + "            ' " + nulo + "', ' " + nulo + "', ' " + nulo + "')";
        return result;

    }

    public String strSQLInsertTrabajador(String cedula, String apellido, String nombre) {
        int iess = 500;
        String result = "INSERT INTO public.trabajador(\n"
                + "	cedula_trabajador, nombre_trabajador, apellido_trabajador, n_afi_iees_trabajador)\n"
                + "	VALUES (' " + cedula + "', ' " + nombre + "',  ' " + apellido + "'," + iess + ")";
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
