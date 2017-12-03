<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.Gson"%>

<%
    try {
        String events = ""
                + "    ["
                + "        {"
                + "            \"id\": \"211\","
                + "            \"title\": \"Otras actividades de gestión relacionadas con los procesos académicos ordinarios de la Institución\","
                + "            \"start\": \"2017-06-19T15:00:00\","
                + "            \"end\": \"2017-06-19T18:00:00\""
                + "        }"
                + "    ]";

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("cache-control", "no-cache");
        
        response.getWriter().write(events);
    } catch (Exception e) {
        log(e.getMessage());
    }
%>