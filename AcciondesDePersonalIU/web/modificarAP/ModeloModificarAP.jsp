<%-- 
    Document   : ModeloModificarAP
    Created on : 18/12/2017, 15:45:42
    Author     : alexa
--%>

<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="com.google.gson.reflect.TypeToken"%>


<%
    try {
        String palabra = request.getParameter("palabra");
        String strTSK = request.getParameter("strTSK");

        if (strTSK.equals("buscar")) {

            //////////////////////////////////////////////////////////////
            //MODELO
////            appprueba.ad.AppPruebaWS_Service service = new appprueba.ad.AppPruebaWS_Service();
////            appprueba.ad.AppPruebaWS port = service.getAppPruebaWSPort();
////            String resp = port.cargarDatos(palabra);
//            //List<String> lista = gson new ArrayList<>();
//            Gson gson = new Gson();
//            Type listType = new TypeToken<ArrayList<String>>() {
//            }.getType();
////            List<String> lista = new Gson().fromJson(resp, listType);
//
//            String toHTML = "";
//            for (int i = 0; i < lista.size(); i++) {
//                toHTML += "<a>" + i + ".- " + lista.get(i) + "</a><br>";
//            }

//            response.setContentType("text/plain");
//            response.getWriter().write(toHTML);

            //response.sendRedirect("index.html");
            //////////////////////////////////////////////////////////////
//            com.calculadoraWS.WsCalculadora_Service service = new com.calculadoraWS.WsCalculadora_Service();
//            com.calculadoraWS.WsCalculadora port = service.getWsCalculadoraPort();
//            c = port.sumar(a1, b1);
//            response.sendRedirect("calcC.jsp?c=" + c + "&a=" + a + "&b=" + b);
        }
        // final response.sendRedirect("calcC.jsp?c=" + c + "&a=" + a + "&b=" + b);
    } catch (Exception e) {
        out.print(e);
    }
%>