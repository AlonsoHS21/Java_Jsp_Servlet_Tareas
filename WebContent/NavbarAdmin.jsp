<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include Master Page -->
<%@include file="MasterPage.jsp" %>

</head>
<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light"> <!-- TODO:Cambiar el tipo de letra -->
  <div class="container-fluid">
    <a class="navbar-brand">Task Manager</a> <!-- Solo va a ser texto plano -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="VistaAdmin.jsp">Admin view</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Create user</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Recover password</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ServletTareas">Task</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>