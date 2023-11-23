<%-- 
    Document   : inicio
    Created on : Oct 19, 2023, 7:11:51 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if (session.getAttribute("Usuario")!=null) {       
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Ingenico</title>
   <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="./assets/Images/portfolio/Ingenico.png">
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
        rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./assets/css/style.css" rel="stylesheet" />
</head>
<body id="page-top">
 <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="#page-top"><img src="./assets/Images/Inicio/Logo fruno blanco (1).png" width="170px"
                    alt="Logo fruno"></a>
    </div>
    </nav>
   <!-- Masthead-->
    <header class="masthead">
        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                <div class="col-lg-8 align-self-end">
                    <div>
  </div>
                    <h1 class="text-white font-weight-bold">Bienvenido</h1>
                    <hr class="divider" style="color: #fff;
                         background-color: #fff" />
                </div>
                <div class="col-lg-8 align-self-baseline">
                    <p class="text-white-75 mb-5"> Control del área de taller Ingenico</p>
                </div>
            </div>
        </div>
    </header>
    <!-- Controles   -->
   <section class="page-section" >
          <!--  <div class="container px-4 px-lg-5">
            <h2 class="text-center mt-0">Tipos de control</h2>
            <hr class="divider" />
               <div class="ControlesMenu">
                <a href="PruebaDiaria.html">
                    <div class="ESDBoton text-center">
                        <div class="mb-2"><i class="bi bi-calendar2-check-fill"></i></i></div>
                        <h3 class="h4 mb-20">Prueba Diaria ESD</h3>
                        <p class="text-muted mb-0">Verifique el funcionamiento <br>de su pulsera y talonera</p>
                    </div>
                </a>
 <a href="ControlDual.html">
                    <div class="DualBoton text-center">
                        <div class="mb-2"><i class="bi bi-file-lock2"></i></i></i></div>
                        <h3 class="h4 mb-20">Control Dual</h3>
                        <p class="text-muted mb-0">Para encargados especificos</p>
                    </div>
                </a>
 <div style="text-align: center;">
                    <button class="HerramientasBoton">
                        <div class="mb-2"><i class="bi bi-tools"></i></i></i></div>
                        <h3 class="h4 mb-20">Control y revision</h3>
                        <p class="text-muted mb-0"></p>
                    </button>
                    <div class="links">
                        <a href="#">Torques</a>
                        <a href="#">Estacion de Soldado</a>
                        <a href="#">Estacion de Multimetro</a>
                    </div>
                </div>
    -->
            </div>
            <div style="text-align: center;">
                <button class="InventarioBoton">
                    <div class="mb-2"><i class="bi bi-journal-text"></i></i></div>
                    <h3 class="h4 mb-20">Entrega Suministros</h3>
                    <p class="text-muted mb-0">Registro de entrada y salida <br> de suministros al taller</p>
                </button>
                <div class="links">
                    <a href="./User.jsp">Usuario</a>
                </div> 
            </div>
 </div>
 </div>
  </div>
        </div>

    </section>

</body>

</html>
<%
}else{
response.sendRedirect("index.jsp");
}

%>
