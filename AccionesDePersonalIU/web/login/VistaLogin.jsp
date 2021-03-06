<%-- 
    Document   : login
    Created on : 03/12/2017, 11:12:29
    Author     : alexa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>DDA | Dirección de Desarrollo Académico</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="shortcut icon" href="../favicon.ico?v=2">

        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.css" crossorigin="anonymous" rel="stylesheet" />
        <script src="https://use.fontawesome.com/7c719b02b1.js"></script>

        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.js" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <main>
            <div id="loginContainer" class="container p-0">
                <div id="loginMain" class="row">
                    <div id="loginMainLeft" class="col-xs-6">
                        <div class="container text-xs-center h-100">
                            <div id="escudoESPOCH" class="row">
                                <img src="../images/escudo_ESPOCH.png" alt="Escudo ESPOCH"/>
                            </div>
                        </div>
                    </div>

                    <div id="loginMainRight" class="col-xs-6">
                        <div class="container text-xs-center h-100">
                            <div id="nombreSistema" class="row">
                                <div id="nombre">
                                    Sistema de<br>
                                    Desarrollo Acad&eacute;mico
                                </div>
                            </div>
                            <div id="formContainer" class="row">
                                <div class="col-xs-12 text-xs-center">	
                                    <div class="row">
                                        <div id="loginTitulo">Ingreso de Usuario</div>
                                        <form id="formText" action="../aplicaciones.html" autocomplete="off" method="POST">
                                            <div>
                                                <input type="text" id="ddaCuenta" placeholder="Cuenta" size="20">
                                            </div>
                                            <div>
                                                <input type="password" id="ddaClave" placeholder="Clave" size="20">
                                            </div>
                                            <div id="formContainerButton">
                                                <button id="formButton" type="submit">Iniciar Sesión</button>
                                            </div>
                                        </form>
                                        <div id="loginError">
                                            ERROR: Mensaje de error Mensaje de error Mensaje de error
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="checkbox">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div id="informacionESPOCH" class="row">
                                <hr>
                                <i class="fa fa-map-marker" aria-hidden="true"></i> Panamericana Sur km 1 &#189;, Riobamba, Chimborazo, Ecuador
                                <br>
                                <i class="fa fa-phone"></i> 593 (03) 2998-200 &nbsp;&nbsp;|&nbsp;&nbsp; 
                                <i class="fa fa-print"></i> (03) 2317-001 &nbsp;&nbsp;|&nbsp;&nbsp;
                                <i class="fa fa-envelope-o"></i> EC060155
                            </div>
                        </div>
                    </div>
                </div>
                <!-- PIE de la parte derecha -->
            </div>
        </main>

        <!-- DDA -->
        <link href="../css/dda.login.css" rel="stylesheet" type="text/css" property='stylesheet'/>

        <!-- Bootstrap Toogle http://www.bootstraptoggle.com/ -->
        <link href="../css/bootstrap-toggle.css" rel="stylesheet" type="text/css" property='stylesheet'/>
        <script src="../js/bootstrap-toggle.js" type="text/javascript"></script>
    </body>
</html>
