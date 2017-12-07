<%-- 
    Document   : modelIngresarAccionesPersonal.jsp
    Created on : Dec 6, 2017, 1:13:01 AM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    com.AccionesDePersonal.WSC.WsAccionesPersonal_Service service = new com.AccionesDePersonal.WSC.WsAccionesPersonal_Service();
    com.AccionesDePersonal.WSC.WsAccionesPersonal port = service.getWsAccionesPersonalPort();

    String opcion = request.getParameter("opcion");
    String cedula = request.getParameter("cedula");

    if (cedula != null && opcion.equals("verificar")) {
        //consulta
        String apellido = "Aguayo";
        String nombre = "Stteffano";

        response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre);
    }

    if (cedula != null && opcion != null) {
        //consulta
    }
    String resolucion = request.getParameter("resolucion");
    String apellido = request.getParameter("apellido");
    String nombre = request.getParameter("nombre");

    Integer resultAP = port.guardarDatosAP(resolucion, cedula, apellido, nombre);

    //INFORMACION DE LA TABLA DE ACCIONES DE PERSONAL
    /*java.lang.String apellidoAP = port.getApellido(apellido);
    java.lang.String cedulaAP = port.getCedula(cedula);
    java.lang.String nombreAP = port.getNombre(nombre);
    java.lang.String resolucionAP = port.getResolucion(resolucion);*/

%>