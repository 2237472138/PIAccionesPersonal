<%-- 
    Document   : ControladorModificarAP
    Created on : 18/12/2017, 15:46:07
    Author     : alexa
--%>

<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        String strTSK = request.getParameter("tsk");

        if (strTSK.equals("buscar")) {
            String palabra = request.getParameter("palabra");
            response.sendRedirect("ControladorModificarAP.jsp?strTSK=" + strTSK + "&palabra=" + palabra);
        }
    } catch (Exception e) {
        out.print("Error de Generacion Controlador");
    }

    //MODELO
//            appprueba.ad.AppPruebaWS_Service service = new appprueba.ad.AppPruebaWS_Service();
//            appprueba.ad.AppPruebaWS port = service.getAppPruebaWSPort();
//            String resp = port.cargarDatos(palabra);
//            //List<String> lista = gson new ArrayList<>();
//            Gson gson = new Gson();
//            Type listType = new TypeToken<ArrayList<String>>() {
//            }.getType();
//            List<String> lista = new Gson().fromJson(resp, listType);
//            
//            String toHTML="";
//            for(int i = 0; i < lista.size();i++){
//                toHTML += "<a>" + i + ".- " + lista.get(i) + "</a><br>";
//            }
//
//            response.setContentType("text/plain");
//            response.getWriter().write(toHTML);
//
//            //response.sendRedirect("index.html");

%>
