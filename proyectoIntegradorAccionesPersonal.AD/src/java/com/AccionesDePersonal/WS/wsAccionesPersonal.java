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

    /**
     * Web service operation
     */
    //1400788020
    @WebMethod(operationName = "getResolucion")
    public String getResolucion(@WebParam(name = "resolucion") String resolucion) {
        cOperacionesLN oOperacionesLN = new cOperacionesLN();
        return oOperacionesLN.getResolucion();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getCedula")
    public String getCedula(@WebParam(name = "cedula") String cedula) {
        cOperacionesLN oOperacionesLN = new cOperacionesLN();
        return oOperacionesLN.getCedula();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getApellido")
    public String getApellido(@WebParam(name = "apellido") String apellido) {
        cOperacionesLN oOperacionesLN = new cOperacionesLN();
        return oOperacionesLN.getApellido();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getNombre")
    public String getNombre(@WebParam(name = "nombre") String nombre) {
        cOperacionesLN oOperacionesLN = new cOperacionesLN();
        return oOperacionesLN.getNombre();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GuardarDatosAP")
    public String GuardarDatosAP(@WebParam(name = "resolucion") String resolucion, @WebParam(name = "cedula") String cedula, @WebParam(name = "nombre") String nombre, @WebParam(name = "apellido") String apellido) {

        cOperacionesLN oOperacionesLN = new cOperacionesLN();

        return oOperacionesLN.save(resolucion, cedula, nombre, apellido);
    }

}
