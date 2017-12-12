/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.AD;


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

    public String strSQLSelectResolucionAp(String numero_ap) {
        String result = "SELECT resolucion_ap\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectApellido(String cedula) {
        String result = "SELECT apellido_trabajador\n"
                + "FROM trabajador AS t\n"
                + "INNER JOIN accion_personal AS ap ON (t.'" + cedula + "' = ap.'" + cedula + "')";
        return result;
    }

    public String strSQLSelectNombre(String cedula) {
        String result = "SELECT nombre_trabajador\n"
                + "FROM trabajador AS t\n"
                + "INNER JOIN accion_personal AS ap ON (t.'" + cedula + "' = ap.'" + cedula + "')";
        return result;
    }

    public String strSQLSelectFechaCreada(String numero_ap) {
        String result = "SELECT fecha_creada_ap\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectFechaRige(String numero_ap) {
        String result = "SELECT fecha_rige_ap\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectExplicacionAp(String numero_ap) {
        String result = "SELECT descripcion_rol\n"
                + "FROM tipo AS ti\n"
                + "INNER JOIN accion_personal AS ap ON (ti.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectNumeroTipo(String numero_ap) {
        String result = "SELECT numero_tipo\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectObservacionesAp(String numero_ap) {
        String result = "SELECT observaciones_ap\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectRectorAp(String numero_ap) {
        String result = "SELECT rector_ap\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;

    }

    public String strSQLSelectDirectorThAp(String numero_ap) {
        String result = "SELECT director_th_ap\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectIessTrabajador(String cedula) {
        String result = "SELECT n_afi_iees_trabajador\n"
                + "FROM trabajador AS t\n"
                + "INNER JOIN accion_personal AS ap ON (t.'" + cedula + "' = ap.'" + cedula + "')";
        return result;
    }

    public String strSQLSelectDependeciaSituacion(String numero_ap) {
        String result = "SELECT dependencia_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectPuestoSituacion(String numero_ap) {
        String result = "SELECT puesto_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectLugarSituacion(String numero_ap) {
        String result = "SELECT lugar_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectEstadoSituacion(String numero_ap) {
        String result = "SELECT estado_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectPartIndSituacion(String numero_ap) {
        String result = "SELECT part_ind_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectPresuSituacion(String numero_ap) {
        String result = "SELECT part_presu_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

    public String strSQLSelectRemuMenSituacion(String numero_ap) {
        String result = "SELECT remuneracion_men_situacion\n"
                + "FROM situacion AS s\n"
                + "INNER JOIN accion_personal AS ap ON (s.'" + numero_ap + "' = ap.'" + numero_ap + "')";
        return result;
    }

}
