
function buscar() {

    var palabra = document.getElementById('txtBuscar').value;       //lo que venga de mi vista el # de adp de mi vista
    var tsk = 'buscar';                                             //le asigno la tarea buscar para realizar dar una accion en mi controlador

    $.ajax({
        url: "ControladorModificarAP.jsp",
        type: "GET",
        data: {tsk: tsk, palabra: palabra},
        success: function (datos) {
            document.getElementById("btnBuscar").style.visibility = "hidden";
            return(alert("tarea: " + tsk + " palabra: " + palabra));
            //var data = JSON.parse(datos);
            //document.getElementById("divContenido").style.visibility = "visible";          
            $("#contenidodinamico").html(datos);
        },
        error: function (error) {
            $("#contenidoDinamico").html("Palabla NO encontrada");
        }
    });
//return(alert("estoy en el modificar"));
}