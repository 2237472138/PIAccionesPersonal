<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="jquery.ui.datepicker-es.js"></script>



<script type="text/javascript">
    function cargaContenido() {
        $('#unidades').load("ingresarAccionesPersonal.jsp");
    }
 </script>
 

<script>
$(function () {
$.datepicker.setDefaults($.datepicker.regional["es"]);
$("#datepicker").datepicker({
firstDay: 1,
monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié;', 'Juv', 'Vie', 'Sáb'],
dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
weekHeader: 'Sm',
dateFormat: 'dd/mm/yy'
});
});
</script>


<main id="mainContainer" class="container">
    <div id="contenidoEncabezadoAsignatura" class="row">

        <!-- BOTON menu -->
        <div id="contenidoIcono" class="col-xs-1 p-0" >
            <a href="aplicaciones.html">
                <div class="d-inline-block icono_menu"></div>
            </a>
        </div>
        <div class="col-xs-9 contenidoTitulo" >
            <p id="titulo" class="text-small-caps">
                  ACCI&Oacute;N DE PERSONAL
            </p>
        </div>
        <div id="contenidoEncabezadoDetalle" class="col-xs-2 p-0">
            <p id="subtitulo" class="text-small-caps">
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento
            </p>
        </div>
    </div>    

    <div id="brrNavegacion" class="row">
        <div class="col-xs-6">
            <form class="form-inline">
                <select id="slcAsignatura2" class="selectpicker dda-select dda-select-100" >
                    <option data-icon="fa-fw" data-subtext="(EIS)">Programación Orientada a Objetos</option>
                    <option data-icon="fa-check" data-subtext="(EIS)">Tecnologías de la Información Aplicada a la Educación Superior</option>
                    <option data-icon="fa-fw" data-subtext="(EIS)" selected>Ingeniería de Software II</option>
                    <option data-icon="fa-warning" data-subtext="(EDG)">Proyecto Integrador III</option>
                </select>
            </form>
        </div>
    </div>

    <div  id="contenido" class="row">
        <div id="menuLateral"  class="col-xs-3">
            <div id="menuTipo">
                <span id="lnkReportes" class="dda-link dda-link-selected">
                    <i class="fa fa-pie-chart"></i>
                </span>
                <span id="lnkDocumentos" class="dda-link">
                    <i class="fa fa-file-text"></i>
                </span>
                <span id="lnkConfigurar" class="dda-link">
                    <i class="fa fa-cog"></i>
                </span>
            </div>


            <div id="menuLateralScrollbar">
                <!-- Menú Lateral-->
                <ul id="treeview">
                    <li id="mnuDatosGenerales" data-expanded="true">
                        Acci&oacute;n de Personal
                        <ul>
                            <li>Datos generales</li >
                            <li><a onclick="cargaContenido();" >A. Ingresar Acci&oacute;n de personal</a></li>                            
                            <li><a>A. Caracterización </a> </li>
                            <li><i class="fa fa-exclamation-triangle tag-warning"></i> B. Objetivo</li>
                            <li>C. Contenidos</li>
                            <li>D. Metodología</li>
                            <li>E. Recursos</li>
                            <li>F. Procedimientos de evaluaci&oacute;n</li>
                            <li>G. Bibliograf&iacute;a
                                <ul>
                                    <li>B&aacute;sica</li>
                                    <li>Complementaria</li>
                                </ul>
                            </li>
                            <li>H. Perfil del profesor</li>
                        </ul>
                    </li>
                    <li id="mnuSilabo">S&iacute;labo
                        <ul>
                            <li>1. Datos generales</li>
                            <li>2. Estructura y desarrollo</li>
                            <li>3. Escenario de aprendizaje</li>
                            <li>4. Criterios normativos para la evaluación</li>
                            <li>5. Bibliograf&iacute;a
                                <ul>
                                    <li>B&aacute;sica</li>
                                    <li>Complementaria</li>
                                </ul>
                            </li>
                            <li>6. Datos del profesor</li>
                        </ul>
                    </li>
                    <li id="mnuPlanificacion">Seguimiento del desarrollo acad&eacute;mico
                    </li>
                    <li id="mnuJornada">Jornada de trabajo semanal
                        <ul>
                            <li>1. Datos generales</li>
                            <li>2. Tipo de docente</li>
                            <li>3. Tiempo de dedicaci&oacute;n</li>
                            <li>4. Horas de dedicaci&oacute;n
                                <ul>
                                    <li>4.1. Docencia</li>
                                    <li>4.2. Investigaci&oacute;n</li>
                                    <li>4.3. Vinculaci&oacute;n</li>
                                    <li>4.4. Gesti&oacute;n</li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div id="contenidoPrincipal" class="col-xs-9">
            <!-- Botones para ampliar el área de trabajo -->
            <!-- Contenido Principal -->
            <div class="row dda-row">
                <div id="contenidoTitulo" class="col-xs-9">
                    Datos generales de la asignatura
                </div>
                <div id="contenidoInfo" class="col-xs-3 text-white">
                    <a id="lnkCargar" href="#" class="nav-link text-white fa fa-cloud-upload" data-toggle="tooltip" data-placement="bottom" title="Cargar PDF"></a>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <a id="lnkDescargar" href="#" class="nav-link text-white fa fa-cloud-download" data-toggle="tooltip" data-placement="bottom" title="Descargar PDF"></a>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <a id="lnkAyuda" href="#" class="nav-link text-white fa fa-question" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left"></a>
                </div>                    
            </div>


            <!--Ejemplo del formato-->

            <div class="row">
                <div id="contenidoDinamicoScrollbar" class="col-xs-12">

                    <!-- Contenido -->

                    <!-- Ejemplo de ártbol de contenidos -->

                    <!--     <div class="form-group row">
                             <label id="seccionEtiqueta" for="example-text-input" class="col-xs-2 form-control-label">Contenido:</label>
                             <div id="seccionContenido" class="col-xs-10">

                                 <div class="tema">
                                     <div class="input-group">
                                         <span class="input-group-addon">Tema: </span>
                                         <input type="text" class="form-control" placeholder="Título del tema">
                                         <span class="input-group-addon"><i class="fa fa-plus-circle"></i></span>
                                         <span class="input-group-addon"><i class="fa fa-minus-circle"></i></span>
                                     </div>
                                 </div>
                                 <div class="subtema">
                                     <div class="input-group">
                                         <span class="input-group-addon">Subtema: </span>
                                         <input type="text" class="form-control" placeholder="Título del subtema">
                                         <span class="input-group-addon"><i class="fa fa-minus-circle"></i></span>
                                     </div>
                                 </div>
                                 <div class="subtema">
                                     <div class="input-group">
                                         <span class="input-group-addon">Subtema: </span>
                                         <input type="text" class="form-control" placeholder="Título del subtema">
                                         <span class="input-group-addon"><i class="fa fa-minus-circle"></i></span>
                                     </div>
                                 </div>
                                 <div class="unidad">
                                     <div class="input-group">
                                         <span class="input-group-addon">Unidad: </span>
                                         <input type="text" class="form-control" placeholder="Título de la unidad">
                                         <span class="input-group-addon"><i class="fa fa-plus-circle"></i></span>
                                         <span class="input-group-addon"><i class="fa fa-minus-circle"></i></span>
                                     </div>
                                 </div>
                                 <div class="unidad">
                                     <div class="input-group">
                                         <span class="input-group-addon">Unidad: </span>
                                         <input type="text" class="form-control" placeholder="Título de la unidad">
                                         <span class="input-group-addon"><i class="fa fa-plus-circle"></i></span>
                                         <span class="input-group-addon"><i class="fa fa-minus-circle"></i></span>
                                     </div>
                                 </div>
                             </div>
                         </div>
                    -->
                    <!-- FIN de ejemplo de ártbol de contenidos -->
                    <%String cedula = request.getParameter("cedula");
                        String apellido = request.getParameter("apellido");
                        String nombre = request.getParameter("nombre");
                         String  explicacion= request.getParameter("explicacion");
                      String  resolucion= request.getParameter("resolucion"); 
                       String fecha = request.getParameter("fecha");
                    %>
                  
                    <form action="Controllers/controllerIngresarAccionesPersonal.jsp" method="post" >
                        <div id="unidades" class="unidad">   


                            <div class="form-group row">
                                <label for="example-text-input" class="col-xs-2 col-form-label">C&eacute;dula:</label>
                                <div class="col-xs-10">
                                    <input class="form-control" type="text" placeholder="Número de cédula" id="example-text-input"  name="cedula" value="<%=cedula%>" >
                                </div>
                            </div>
                            <button type="submit" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Guardar cambios" name="btn" value="verificar">
                                verificar | <i class="fa fa-fw"></i>
                            </button> 


                            <div class="form-group row">
                                <label for="example-text-input" class="col-xs-2 col-form-label">Resolucion:</label>
                                <div class="col-xs-10">
                                    <input class="form-control" type="text" placeholder="Resolucion No" id="example-text-input"  name="resolucion" value="<%=resolucion%>" >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="example-text-input" class="col-xs-2 col-form-label">Apellido:</label>
                                <div class="col-xs-10">
                                    <input class="form-control" type="text" placeholder="Apellidos completos" id="example-text-input" name="apellido" value="<%=apellido%>" >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-text-input" class="col-xs-2 col-form-label">Nombre:</label>
                                <div class="col-xs-10">
                                    <input class="form-control" type="text" placeholder="Nombres completos" id="example-text-input" name="nombre"  value="<%=nombre%>" >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="example-text-input" class="col-xs-2 col-form-label">No Afiliacion Al IEES:</label>
                                <div class="col-xs-10">
                                    <input class="form-control" type="text" placeholder="No Afiliacion al IEES" id="example-text-input" name="nombre" >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="example-text-input" class="col-xs-2 col-form-label">Explicacion:</label>
                                <div class="col-xs-10">
                                    <textarea rows="4" cols="100" name="explicacion" >
                                       <%=explicacion%>
                                    </textarea>
                                </div>

                            </div>

                            <!--calendario-->

                            <input type="text" id="datepicker" name="fecha"  value="<%=fecha%>"/>
                            
                           
                            <!--calendario-->


                        </div>
                        <div class="form-group row">
                            <div class="col-xs-9">
                            </div>
                            <div class="col-xs-3">
                                <!-- posibles valores: fa-check, fa-times o fa-exclamation -->
   
                                <button type="submit" id="btn" name="btn" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Crear" value="guardar">
                                    Crear | <i class="fa fa-fw"></i>
                                </button>
                            </div>
                        </div>
                                    
                                    
                          <div class="form-group row">
                            <div class="col-xs-9">
                            </div>
                            <div class="col-xs-3">
                                <!-- posibles valores: fa-check, fa-times o fa-exclamation -->
   
                                <button type="submit" id="btn" name="btn" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Mostrar" value="mostrar">
                                    Mostrar| <i class="fa fa-fw"></i>
                                </button>
                            </div>
                        </div>


                    </form>




                </div>
            </div>
            </form>

            </form>

            <!--      <div class="form-group row">
                     <label for="example-text-input" class="col-xs-2 col-form-label">Texto:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="text" placeholder="Texto de una sola línea" id="example-text-input">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-search-input" class="col-xs-2 col-form-label">Buscar:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="search" placeholder="Texto a buscar" id="example-search-input">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-email-input" class="col-xs-2 col-form-label">Email:</label>
                     <div class="col-xs-10">
                         <div class="input-group">
                             <input class="form-control text-xs-right" type="email" placeholder="usuario" id="example-email-input">
                             <div class="input-group-addon">@espoch.edu.ec</div>
                         </div>
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-url-input" class="col-xs-2 col-form-label">URL:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="url" placeholder="http://v4-alpha.getbootstrap.com/components/forms/" id="example-url-input">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-tel-input" class="col-xs-2 col-form-label">Tel&eacute;fono:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="tel" placeholder="1-(555)-555-5555" id="example-tel-input">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-password-input" class="col-xs-2 col-form-label">Clave:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="password" placeholder="clave" id="example-password-input">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-number-input" class="col-xs-2 col-form-label">N&uacute;mero:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="number" placeholder="42" id="example-number-input">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="example-date-input" class="col-xs-2 col-form-label">Fecha:</label>
                     <div class="col-xs-10">
                         <input class="form-control" type="date" placeholder="19-08-2010" id="example-date-input">
                     </div>
                 </div> -->
            <!--  
                 <div class="form-group row">
                     <label for="exampleSelect1" class="col-xs-2 col-form-label">Selecci&oacute;n:</label>
                     <div class="col-xs-10">
                         <select class="form-control" id="exampleSelect1">
                             <option>Valor 1</option>
                             <option>Valor 2</option>
                             <option>Valor 3</option>
                             <option>Valor 4</option>
                             <option>Valor 5</option>
                         </select>
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="exampleSelect2" class="col-xs-2 col-form-label">Selecci&oacute;n m&uacute;ltiple:</label>
                     <div class="col-xs-10">
                         <select multiple class="form-control" id="exampleSelect2">
                             <option>Valor 1</option>
                             <option>Valor 2</option>
                             <option>Valor 3</option>
                             <option>Valor 4</option>
                             <option>Valor 5</option>
                         </select>
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="exampleTextarea" class="col-xs-2 col-form-label">Texto:</label>
                     <div class="col-xs-10">
                         <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                     </div>
                 </div>
                 <div class="form-group row">
                     <label for="exampleInputFile" class="col-xs-2 col-form-label">Archivo:</label>
                     <div class="col-xs-10">
                         <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                         <small id="fileHelp" class="form-text text-muted">Archivo PDF...</small>
                     </div>
                 </div>
            <!-- Observaciones -->

            <!--   <div class="form-group row">
                 <label for="txtObservaciones" class="col-xs-2 col-form-label">Observaciones:</label>
                 <div class="col-xs-10">
                     <textarea class="form-control bg-warning" id="txtObservaciones" rows="5" disabled="disabled"></textarea>
                 </div>
             </div>
         </form>
            -->
            <!-- barra de botones -->

            <!-- Histórico de observaciones -->
            <!--<div class="form-group row">
                <label for="txtObservaciones" class="col-xs-2 col-form-label">Hist&oacute;rico:</label>
                <div class="col-xs-10">
                    <dl>
                        <dt>fecha 3</dt>
                        <dd class="ml-1">observaciones 1</dd>
                        <dd class="ml-1">observaciones 2</dd>
                        <dt>fecha 2</dt>
                        <dd class="ml-1">observaciones 1</dd>
                        <dd class="ml-1">observaciones 2</dd>
                        <dd class="ml-1">observaciones 3</dd>
                        <dt>fecha 1</dt>
                        <dd class="ml-1">observaciones 1</dd>
                        <dd class="ml-1">observaciones 2</dd>
                        <dd class="ml-1">observaciones 3</dd>
                        <dd class="ml-1">observaciones 4</dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>-->

            <!--Fin del Ejemplo del formato-->

            <div class="row dda-row">
                <div id="contenidoPie" class="col-xs-12">
                    <i id="msgIcon" class="fa fa-spinner"></i>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <span id="msgText">Mensaje sobre el estado del proceso</span>
                </div>
            </div>

        </div>            
</main>
<script src="js/documento/documento.js" type="text/javascript"></script>