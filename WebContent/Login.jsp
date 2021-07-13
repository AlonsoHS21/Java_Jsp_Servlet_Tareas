<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include Master Page -->
<%@include file="MasterPage.jsp" %>
<!-- Include Navbar for Admins -->
<%@include file="NavbarAdmin.jsp" %>

<title>Iniciar Sesion</title>

</head>
<body>

        <!-- <form action="ServletLogin" method="post">
          <fieldset>
                    	
          <div class="d-flex justify-content-center py-5">
          		<div class="p-2 flex-grow-2 bd-highlight">	
          			<img src="https://debmedia.com/blog/wp-content/uploads/2020/06/20-05-1-Oportunidades-para-mejorar-la-atenci%C3%B3n-al-cliente-en-un-banco-despu%C3%A9s-de-la-pandemia-pre.jpg" >
          		</div>
           <div class="p-4 bd-highlight">
		
         	 <h2 class="d-flex justify-content-center py-4">Iniciar Sesion</h2>
         	 
            <div class="row">
              	 <label for="nombre" class="col-sm-12 col-form-label">Nombre de usuario</label>
               	 <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="txtNombreUsuario">
              </div>
              
             <div class="row"> 
                <label for="apellido" class="col-sm-3 col-form-label">Contraseña</label>
                <input type="password" class="form-control" id="apellido" placeholder="Contraseña" name="txtContrasenia">
            </div>
            
            <div class="row py-4">
            		<input type="submit" value="Loguearse" name="btnLogin" class="btn btn-primary">
            </div>
            
          </div>
            </div>
           </fieldset>
         </form>  -->
         
         
         <form action="ServletLogin" method="POST">
         	<section class="login py-5 bg-light">
         	
         	</section>
         
         
         </form>
         
</body>
</html>