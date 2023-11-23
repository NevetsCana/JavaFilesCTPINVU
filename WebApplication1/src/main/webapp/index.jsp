<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Iniciar Sesi&autentico</title>

        <!-- Font Icon -->

        <link rel="icon" type="image/x-icon" href="./assets/Images/portfolio/web.png">

        <!-- Main css -->
        <link rel="stylesheet" href="./assets/css/style_1.css">
    </head>
    <body>
        <div class="main">

            <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure>
                                <img src="./assets/Images/portfolio/20943447.jpg" alt="sing up image">
                            </figure>

                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Ingresar</h2>
                            <form method="post" action="srvUsuario?accion=verificar" autocomplete="off" class="register-form"
                                  id="login-form">
                                <div class="form-group">
                                    <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label> <input 
                                        type="text" name="txtUsu" id="txtUsu" 
                                        placeholder="Nombre" />
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="txtPass" id="txtPass" value=""
                                        placeholder="Contraseña"/>
                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="verificar" id="verificar"
                                           class="form-submit" value="Verificar"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
    </body>
</html>
