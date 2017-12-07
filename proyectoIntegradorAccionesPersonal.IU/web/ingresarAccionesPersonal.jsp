<%String cedula = request.getParameter("cedula");
    String apellido = request.getParameter("apellido");
    String nombre = request.getParameter("nombre");

response.sendRedirect("documento.jsp?cedula="+cedula+"&apellido="+apellido+"&nombre="+nombre);

%>
<form  action="Controllers/controllerIngresarAccionesPersonal.jsp" method="post">
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">C&eacute;dula:</label>
        <div class="col-xs-10">
            <input class="form-control" type="text" placeholder="Número de cédula" id="example-text-input"  name="cedula" value="<%=cedula%>">
        </div>
    </div>
    <button type="submit" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Guardar cambios" name="btn" value="verificar">
        verificar | <i class="fa fa-fw"></i>
    </button> 
</form>

<div class="form-group row">
    <label for="example-text-input" class="col-xs-2 col-form-label">Resolucion:</label>
    <div class="col-xs-10">
        <input class="form-control" type="text" placeholder="Resolucion No" id="example-text-input"  name="resolucion" >
    </div>
</div>

<div class="form-group row">
    <label for="example-text-input" class="col-xs-2 col-form-label">Apellido:</label>
    <div class="col-xs-10">
        <input class="form-control" type="text" placeholder="Apellidos completos" id="example-text-input" name="apellido" disabled="true" value="<%=apellido%> >
               </div>
               </div>
               <div class="form-group row">
               <label for="example-text-input" class="col-xs-2 col-form-label">Nombre:</label>
        <div class="col-xs-10">
            <input class="form-control" type="text" placeholder="Nombres completos" id="example-text-input" name="nombre" disabled="true" value="<%=nombre%> >
                   </div>
                   </div>

                   <div class="form-group row">
                   <label for="example-text-input" class="col-xs-2 col-form-label">No Afiliacion Al IEES:</label>
            <div class="col-xs-10">
                <input class="form-control" type="text" placeholder="Nombres completos" id="example-text-input" name="nombre" disabled="true">
            </div>
        </div>

        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Explicacion:</label>
            <div class="col-xs-10">
                <textarea rows="4" cols="100">
                </textarea>
            </div>

        </div>


        <div class="form-group row">
            <div class="col-xs-9">
            </div>
            <div class="col-xs-3">
                <!-- posibles valores: fa-check, fa-times o fa-exclamation -->
                <button type="submit" id="btn" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Guardar cambios" value="guardar">
                    Crear Accion | <i class="fa fa-fw"></i>
                </button>
            </div>
        </div>

