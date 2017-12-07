/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.WS;

import com.AccionesDePersonal.LN.cOperacionesLN;
import javax.jws.Oneway;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author alexa
 */
@WebService(serviceName = "wsAccionesPersonal")
public class wsAccionesPersonal {

    public Integer prueba(@WebParam(name = "resolucion") final String resolucion, @WebParam(name = "cedula") final String cedula, @WebParam(name = "apellido") final String apellido, @WebParam(name = "nombre") final String nombre) {

        cOperacionesLN oOperacion = new cOperacionesLN();
        return oOperacion.save(resolucion, cedula, apellido, nombre);
    }
}
