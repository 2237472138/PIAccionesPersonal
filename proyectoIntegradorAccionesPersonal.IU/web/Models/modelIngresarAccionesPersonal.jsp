<%-- 
    Document   : modelIngresarAccionesPersonal.jsp
    Created on : Dec 6, 2017, 1:13:01 AM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    /*com.AccionesDePersonal.WSC.WsAccionesPersonal_Service service = new com.AccionesDePersonal.WSC.WsAccionesPersonal_Service();
    com.AccionesDePersonal.WSC.WsAccionesPersonal port = service.getWsAccionesPersonalPort();*/
try {
        
   
    String opcion = request.getParameter("opcion");
    String cedula = request.getParameter("cedula");

    if (cedula != null && opcion != null) {
        if (cedula != null && opcion.equals("verificar")) {
            //consulta          
            String apellido = "Aguayo";
            String nombre = "Stteffano";

           /* java.lang.String apellidoAP = port.getApellido(cedula);
            java.lang.String cedulaAP = port.getCedula(cedula);
            java.lang.String nombreAP = port.getNombre(cedula);*/

            response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre);
        } else {
            if (cedula != null && opcion.equals("guardar")) {

                String apellido = request.getParameter("apellido");
                String nombre = request.getParameter("nombre");
                String explicacion = request.getParameter("explicacion");
                String resolucion = request.getParameter("resolucion");
                String fecha = request.getParameter("fecha");
                
                //n consulta de guardado
                //java.lang.Integer result = port.guardarDatosAP(resolucion, cedula, apellido, nombre);
                    response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre+"&explicacion="+explicacion+"&resolucion="+resolucion+"&opcion=inicio"+"&fecha="+fecha);
            }

        }
        
        if (cedula != null && opcion.equals("mostrar")) {

                String apellido = request.getParameter("apellido");
                String nombre = request.getParameter("nombre");
                String explicacion = request.getParameter("explicacion");
                String resolucion = request.getParameter("resolucion");
                String opcion2 = "mostrarg";
                 response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre+"&explicacion="+explicacion+"&resolucion="+resolucion+"&btn="+opcion2);
                
                //n consulta de guardado
                //java.lang.Integer result = port.guardarDatosAP(resolucion, cedula, apellido, nombre);

            }

   
    }
    } catch (Exception e) {}
%>