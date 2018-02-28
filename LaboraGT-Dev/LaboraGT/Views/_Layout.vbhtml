﻿<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>@ViewData("Title")</title>
   
    @Styles.Render("~/Content/semantic")
    
</head>
<body>
        <div class="ui left vertical menu sidebar inverted ">
            <div class="item">
                <h2 class="ui center aligned icon header inverted">
                    <i class="chess king icon"></i> 
                    Labora GT 
                </h2>
            </div>
            <!--<a class="item"><i class="user icon"></i> Usuarios </a>
            <a class="item"><i class="map icon"></i> Ubicaciones </a>
            <a class="item"><i class="video play icon"></i> Vídeos </a>
            -->
            <div class="item">
                Parametrización 
                <i class="whmcs icon"></i>
                <div class="menu">
                    <a class="item">Parentezcos</a>
                    <a class="item">Profesiones</a>
                    <a class="item">Tipos de Referencia</a>
                    <a class="item">Tipos de dirección</a>
                    <a class="item">Estados Civiles</a>
                    <a class="item">Niveles Academicos</a>
                    <a class="item">Paises</a>
                    <a class="item">Bancos</a>
                    <a class="item">Tipos de Servicios</a>
                    <a class="item">Formas de Pago</a>
                    <a class="item">Tipos de Bonos</a>
                    <a class="item">Tipos de Descuentos</a>
                    <a class="item">Tipos de Impuestos</a>
                    <a class="item">Paises</a>
                    <a class="item">Áreas</a>
                </div>
            </div>
            <div class="item">
                Administración 
                <i class="cogs icon"></i>
                <div class="menu">
                    <a class="item">Empresas</a>
                    <a class="item">Puestos</a>
                </div>
            </div>
        </div>
        <div class="pusher">            <!-- Site content !--> 
            <div class="ui segment inverted teal vertical">
                <div class="ui container">
                    <div class="ui secondary inverted   menu">
                        <a class="item btn my-menu active">
                            <i class="bars icon"></i>
                            Menú
                        </a>
                        <div class="ui right dropdown item config" tabindex="0">
                            <i class="user circle icon"></i>Administrador
                             <i class="dropdown icon"></i> 
                            <div class="menu transition hidden" tabindex="-1">
                                <a class="item"><i class="cog icon"></i>Configurar</a>
                                <a class="item"><i class="power off icon"></i> Salir </a>
                            </div>
                        </div>
                            </div>
                    </div>
                </div>
            </div> <!-- End Site Content-->
        @RenderBody()

    @Scripts.Render("~/bundles/jquery")
    @Scripts.Render("~/bundles/semantic")
    <script>
        $(document).ready(function () {

            $(".btn.my-menu").click(function () {
                $('.sidebar')
                  .sidebar('setting', 'transition', 'overlay')
                  .sidebar('toggle');
            });

            //habilitacion de dropdown
             $('.ui.dropdown').dropdown();
            
        });
    </script>
</body>
</html>
