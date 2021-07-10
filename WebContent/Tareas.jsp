<%@page import="entity.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap 5.0 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Bootstrap 5.0 POOPER -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<!-- Bootstrap 5.0 JS  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<!-- Responsive meta tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Include Master Page -->
<%@include file="MasterPage.jsp" %>
<!-- Include Navbar for Admins -->
<%@include file="NavbarAdmin.jsp" %>

<!--  Despues de tanto buscar encontre la solucion POR FIN!! -->
<!-- https://stackoverflow.com/questions/32602992/why-i-am-getting-class-not-found-exception-for-class-fornamecom-mysql-jdbc-dri -->

</head>
<body>
	<script>
	 $(document).ready(function() {
	        var table = $('#clientes').DataTable( {
	            language: {
	            	"decimal":        "",
	                "emptyTable":     "No hay información disponible en la tabla",
	                "info":           "Mostrando _START_ a _END_ de _TOTAL_ registros",
	                "infoEmpty":      "Mostrando 0 a 0 de 0 registro(s)",
	                "infoFiltered":   "(filtrado de _MAX_ registros totales)",
	                "infoPostFix":    "",
	                "thousands":      ".",
	                "loadingRecords": "Cargando...",
	                "processing":     "Procesando...",
	                "search":         "Buscar:",
	                "zeroRecords":    "No se encontraron resultados",
	                "paginate": {
	                    "first":      "Primera",
	                    "last":       "Última",
	                    "next":       "Siguiente",
	                    "previous":   "Anterior"
	                }
	            },
	            lengthChange: false
	        });
		});
	</script>
	
	<div class="container">
		<div class="d-flex justify-content-center py-5">
			<h2> Lista de Tareas </h2>
		</div>
	</div>
	
	<div class="container">
		<div class="row py-5"> 
        <table id="clientes" class="table table-hover nowrap">
          <thead>
            <tr>
              <th scope="col" class="text-center">Dni</th>
              <th scope="col" class="text-center">Fecha Creacion</th>
              <th scope="col" class="text-center">Fecha Cierre</th>
              <th scope="col" class="text-center">Descripcion</th>
              <th scope="col" class="text-center">Tipo de tarea</th>
            </tr>
          </thead>
            <tbody>
            <% if(request.getAttribute("listaTareas") != null) { 
            	ArrayList<Tarea> listaTareas = (ArrayList<Tarea>) request.getAttribute("listaTareas");
            	for(Tarea t : listaTareas) { %>
            <tr>
            	<td class="dt-body-center"><%=t.getDni() %></td>
            	<td class="dt-body-center"><%=t.getFechaCreacion() %></td>
            	<td class="dt-body-center"><%=t.getFechaCierre() %></td>
            	<td class="dt-body-center"><%=t.getDescripcion() %></td>
            	<td class="dt-body-center"><%=t.getTipoDeTarea().getNombre() %></td>
            <tr>
                <% } 
                } %>
      		</tbody>
      	</table>
      	</div>
      </div>
</body>
</html>