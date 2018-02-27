<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>@ViewData("Title")</title>
   
    @Styles.Render("~/Content/semantic")
    
</head>
<body>
    <div>
        <div class="ui left vertical menu sidebar">
            <a class="item">
                Item 1
            </a>
            <a class="item">
                Item 2
            </a>
            <a class="item">
                Item 3
            </a>
        </div>
        <div class="pusher">
            <!-- Site content !-->
            <div class="ui segment ">
                <div class="ui container">
                    <div class="ui secondary  menu">
                        <a class="item active">
                            <i class="bars icon"></i>
                            Menu
                        </a>
                        
                        <div class="right menu">
                            
                            <div class="ui item">
                                <div class="ui pointing dropdown link item">
                                    
                                    <span class="text">
                                        <i class="user circle icon"></i>Administrador
                                    </span>
                                    <i class="dropdown icon"></i>
                                    <div class="menu">
                                        <a class="item"><i class="cog icon"></i>Configurar</a>
                                        <a class="item"><i class="power off icon"></i> Salir </a>
                                    </div>
                                </div>
                            </div>

                                <div class="ui dropdown item">
                                    <div class="text">File</div>
                                    <i class="dropdown icon"></i>
                                    <div class="menu">
                                        <div class="item">New</div>
                                        <div class="item"><span class="description">ctrl + o</span> Open... </div>
                                        <div class="item"><span class="description">ctrl + s</span> Save as... </div>
                                        <div class="item"><span class="description">ctrl + r</span> Rename </div>
                                        <div class="item">Make a copy</div>
                                        <div class="item"><i class="folder icon"></i> Move to folder </div>
                                        <div class="item"><i class="trash icon"></i> Move to trash </div>
                                        <div class="divider"></div>
                                        <div class="item">Download As...</div>
                                        <div class="item">
                                            <i class="dropdown icon"></i> Publish To Web <div class="menu">
                                                <div class="item">Google Docs</div>
                                                <div class="item">Google Drive</div>
                                                <div class="item">Dropbox</div>
                                                <div class="item">Adobe Creative Cloud</div>
                                                <div class="item">Private FTP</div>
                                                <div class="item">Another Service...</div>
                                            </div>
                                        </div>
                                        <div class="item">E-mail Collaborators</div>
                                    </div>
                            </div>

                    </div>
                </div>
            </div>
        </div>
        @RenderBody()
    </div>
    @Scripts.Render("~/bundles/jquery")
    @Scripts.Render("~/bundles/semantic")
    <script>
        $(document).ready(function () {

            $(".ui.button").click(function () {
                $('.ui.sidebar').first()
                .sidebar('attach events', '.toggle.button');
                $('.toggle.button').removeClass('disabled');

               

            });

            $(".ui.dropdown.item").click(function () {
                console.log("click");
                $('.ui.dropdown').dropdown({action: 'hide'});

            });
            
        });
    </script>
</body>
</html>
