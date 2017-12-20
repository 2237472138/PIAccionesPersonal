/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.WS;

import com.AccionesDePersonal.LN.cOperacionesLN;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author alexa
 */
@WebService(serviceName = "wsAccionesPersonal")
public class wsAccionesPersonal {

    cOperacionesLN oOperacionesLN = new cOperacionesLN();

    /////////////////////servicio web para consultar por accion de personal//////////////////////////////
    @WebMethod(operationName = "cargarDatos")
    public String cargarDatos(String palabra) {
        String resp = "";
        try {
            resp = oOperacionesLN.cargarDatos(palabra);
        } catch (Exception e) {
        }
        return resp;
    }

//    @WebMethod(operationName = "getResolucionAp")
//    public String getResolucion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getResolucionAp(cedula);
//    }
//
//    @WebMethod(operationName = "getApellido")
//    public String getApellido(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getApellido(cedula);
//    }
//
//    @WebMethod(operationName = "getNombre")
//    public String getNombre(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getNombre(cedula);
//    }
//
//    @WebMethod(operationName = "getFechaCreada")
//    public String getFechaCreada(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getFechaCreada(cedula);
//    }
//
//    @WebMethod(operationName = "getFechaRige")
//    public String getFechaRige(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getFechaRige(cedula);
//    }
//
//    @WebMethod(operationName = "getExplicacionAp")
//    public String getExplicacionAp(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getExplicacionAp(cedula);
//    }
//
//    @WebMethod(operationName = "getNumeroTipo")
//    public String getNumeroTipo(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getNumeroTipo(cedula);
//    }
//
//    @WebMethod(operationName = "getObservacionesAp")
//    public String getObservacionesAp(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getObservacionesAp(cedula);
//    }
//
//    @WebMethod(operationName = "getRectorAp")
//    public String getRectorAp(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getRectorAp(cedula);
//    }
//
//    @WebMethod(operationName = "getDirectorThAp")
//    public String getDirectorThAp(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getDirectorThAp(cedula);
//    }
//
//    @WebMethod(operationName = "getNumeroIessTrabajador")
//    public String getNumeroIessTrabajador(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getNumeroIessTrabajador(cedula);
//    }
//
//    @WebMethod(operationName = "getDependenciaSituacion")
//    public String getDependenciaSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getDependenciaSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "getPuestoSituacion")
//    public String getPuestoSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getPuestoSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "getLugarSituacion")
//    public String getLugarSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getLugarSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "getEstadoSituacion")
//    public String getEstadoSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getEstadoSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "getPartIndSituacion")
//    public String getPartIndSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getPartIndSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "getPartPresuSituacion")
//    public String getPartPresuSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getPartPresuSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "getRemuMenSituacion")
//    public String getRemuMenSituacion(@WebParam(name = "cedula") String cedula) {
//        return oOperacionesLN.getRemuMenSituacion(cedula);
//    }
//
//    @WebMethod(operationName = "GuardarDatosAP")
//    public String GuardarDatosAP(@WebParam(name = "resolucion") String resolucion, @WebParam(name = "cedula") String cedula, @WebParam(name = "nombre") String nombre, @WebParam(name = "apellido") String apellido) {
//        return oOperacionesLN.save(resolucion, cedula, nombre, apellido);
//    }
//
//    /**
//     * Web service operation
//     */
//    @WebMethod(operationName = "setExplicacionTipo")
//    public String setExplicacionTipo(@WebParam(name = "explicacion") String explicacion, @WebParam(name = "tipo") int tipo) {
//
//        return oOperacionesLN.setExplicacionTipo(explicacion, tipo);
//    }

}
