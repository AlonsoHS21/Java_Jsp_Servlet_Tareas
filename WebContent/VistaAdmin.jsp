<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Icons8 -->
 <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<!-- CSS -->
<link href="Recursos/style_vistaAdmin.css" rel="stylesheet" type="text/css">
<!-- Include Master Page -->
<%@include file="MasterPage.jsp" %>
<!-- Include Navbar for Admins -->
<%@include file="NavbarAdmin.jsp" %>

<title>Vista Admin</title>

</head>
<body>
<main>
     <div class="cards">
         <div class="card-single">
             <div>
                 <h1>4</h1>
                 <span>Total users</span>
             </div>
             <div>
                 <span class="las la-users"></span>
             </div>
         </div>
         
         <div class="card-single">
             <div>
                 <h1>2</h1> 
                 <span>Password recovery requests</span>
             </div>
             <div>
                 <span class="las la-users"></span>
             </div>
         </div>

         <div class="card-single">
             <div>
                 <h1>3</h1> 
                 <span>New users</span> <!-- TODO: dependiendo la fecha
				de creacion de la cuenta podria comparar con la fecha actual y si el tiempo es mayor a 7 dias ya pasaria 
				a ser un usuario viejo -->
             </div>
             <div>
                 <span class="las la-users"></span>
             </div>
         </div>

         <div class="card-single">
             <div>
                 <h1>5</h1> 
                 <span>Pending tasks</span>
             </div>
             <div>
                 <span class="las la-users"></span>
             </div>
         </div>
     </div>

     <div class="recent-grid">
         <div class="projects">
             <div class="card">
                 <div class="card-header">
                     <h3>Informes estadisticos</h3>
                 </div>
                 <div class="card-body">
                    <div class="table-responsive">
                     <table width="100%">
                         <thead>
                             <tr>
                                 <td>Completed tasks</td>
                                 <td></td>
                                 <td></td>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                 <td>34032738</td>
                                 <td>123132313213213</td>
                                 <td>
                                     <span class="status green"></span>
                                     Aceptado 
                             </tr>
                             <tr>
                                 <td>34032738</td>
                                 <td>123132313213213</td>
                                 <td>
                                     <span class="status green"></span>
                                     Aceptado 
                                 </td>
                             </tr>
                             <tr>
                                 <td>34032738</td>
                                 <td>123132313213213</td>
                                 <td>
                                     <span class="status grey"></span>
                                     Pendiente 
                                 </td>
                             </tr>
                             <tr>
                                 <td>34032738</td>
                                 <td>123132313213213</td>
                                 <td>
                                     <span class="status grey"></span>
                                     Pendiente 
                                 </td>
                             </tr>
                             <tr>
                                 <td>34032738</td>
                                 <td>123132313213213</td>
                                 <td>
                                     <span class="status red"></span>
                                     Rechazado 
                                 </td>
                             </tr>
                             <tr>
                                 <td>34032738</td>
                                 <td>123132313213213</td>
                                 <td>
                                     <span class="status red"></span>
                                     Rechazado 
                                 </td>
                             </tr>
                         </tbody>
                     </table>
                    </div>
                 </div>
             </div>
         </div>
         <div class="customers">
             <div class="card">
                 <div class="card-header">
                     <h3>Nuevos clientes</h3> 
                     <button>Mas detalles<span class="las la-arrow-right"> 
                     </span></button>
                 </div>
                 <div class="card-body">
                     <div class="costumer">
                         <div class="info">
                             <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeGINlGtetp2-gZRw4gLauZ5-2rhTpmNR4A&usqp=CAU" width="40px" height="40px" alt="user-image">
                             <div>
                                 <h4>Ramon Valdes</h4>
                                 <small>pruebaemail@email.com</small> 
                             </div>
                         </div>
                         <div class="contact">
                             <span class="las la-user-circle"></span> 
                             <span class="las la-comment"></span>
                             <span class="las la-phone"></span>
                         </div>
                     </div>
                     <div class="costumer">
                         <div class="info">
                             <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeGINlGtetp2-gZRw4gLauZ5-2rhTpmNR4A&usqp=CAU" width="40px" height="40px" alt="user-image">
                             <div>
                                 <h4>Ramon Valdes</h4> 
                                 <small>pruebaemail@email.com</small>
                             </div>
                         </div>
                         <div class="contact">
                             <span class="las la-user-circle"></span> 
                             <span class="las la-user-circle"></span>
                             <span class="las la-user-circle"></span>
                         </div>
                     </div>
                     <div class="costumer">
                         <div class="info">
                             <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfeGINlGtetp2-gZRw4gLauZ5-2rhTpmNR4A&usqp=CAU" width="40px" height="40px" alt="user-image">
                             <div>
                                 <h4>Ramon Valdes</h4> 
                                 <small>pruebaemail@email.com</small> 
                             </div>
                         </div>
                         <div class="contact">
                             <span class="las la-user-circle"></span>
                             <span class="las la-user-circle"></span>
                             <span class="las la-user-circle"></span>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </main>

</body>
</html>