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
    @WebMethod(operationName = "GuardarDatos")
    public void GuardarDatos(@WebParam(name = "resolucion") String resolucion, @WebParam(name = "cedula") String cedula, @WebParam(name = "apellido") String apellido, @WebParam(name = "nombre") String nombre) {
        //TODO write your implementation code here:
        cOperacionesLN oConsulta = new cOperacionesLN();
        oConsulta.save(resolucion,cedula,apellido,nombre);
        
        
    }
}
