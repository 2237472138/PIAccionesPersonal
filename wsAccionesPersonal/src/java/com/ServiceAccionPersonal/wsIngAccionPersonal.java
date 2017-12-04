/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServiceAccionPersonal;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author sttef
 */
@WebService(serviceName = "wsIngAccionPersonal")
public class wsIngAccionPersonal {


    /**
     * Web service operation
     */
    @WebMethod(operationName = "getNombreTrabajador")
    public String getNombreTrabajador(@WebParam(name = "nombre_trab") String nombre_trab) {
        return "Nombre: " + nombre_trab;
    }
}
