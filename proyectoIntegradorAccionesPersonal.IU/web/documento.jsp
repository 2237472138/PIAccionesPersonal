<%-- 
    Document   : plantilla
    Created on : 05-jul-2017, 14:31:51
    Author     : Jorge Menendez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%String cedula = request.getParameter("cedula");
    String apellido = request.getParameter("apellido");
    String nombre = request.getParameter("nombre");%>
    
     
<html ng-app="ddaPlantilla" >
    <head>
        <title>ESPOCH | DDA</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="shortcut icon" href="favicon.ico?v=2">

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.css" crossorigin="anonymous" rel="stylesheet" />
        <script src="https://use.fontawesome.com/7c719b02b1.js"></script>

        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" crossorigin="anonymous"></script>

        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.js" crossorigin="anonymous"></script>

        <!-- Bootstrap-select -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
    </head>
    <body >
        <div>
            <jsp:include page="views/header.jsp" />
            <jsp:include page="views/documento/main.jsp" />
            <jsp:include page="views/footer.jsp" />

        </div>

        <!-- ShieldUI CSS para el MENU LATERAL (treeview)-->
        <link href="css/treeview.min.css" rel="stylesheet" type="text/css"/>

        <!-- ShieldUI JS para el MENU LATERAL (treeview)-->
        <script src="js/shieldui-core.min.js" type="text/javascript"></script>
        <script src="js/shieldui-treeview.min.js" type="text/javascript"></script>

        <!-- DDA CSS -->
        <link href="css/dda.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.select.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.asignaturas.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.aplicaciones.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.aplicaciones.docencia.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.aplicaciones.investigacion.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.aplicaciones.vinculacion.css" rel="stylesheet" type="text/css"/>
        <link href="css/dda.aplicaciones.gestion.css" rel="stylesheet" type="text/css"/>

        <!-- DDA JS -->
        <script src="js/dda.js" type="text/javascript"></script>
        <script src="js/dda.aplicaciones.js" type="text/javascript"></script>
        <script src="js/dda.select.js" type="text/javascript"></script>
        <!--calendario-->
        
        
    </body>
</html>
