<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>HL ~ Inicio</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,400italic,500italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
<link rel="icon" type="image/png" href="img/favicon.gif" />
<script type="text/javascript" src="js/redesociales.js"></script>
</head>

<body>
<div id="fb-root"></div>
<div id="contenedor-menu">

        <nav>
          <ul>
          
        <li><img src="<?php echo Site ?>/img/icon-1.png"> <a href="<?php echo Site ?>/index/">Inicio</a></li>
            <li><img src="<?php echo Site ?>/img/icon-2.png"> <a href="<?php echo Site ?>/forum/"" target="_blank">Foro</a></li>
                        <li><img src="<?php echo Site ?>/img/icon-3.png"> <a href="<?php echo Site ?>/events">Concursos</a></li>
            
            <li><img src="<?php echo Site ?>/img/icon-8.png"> <a href="<?php echo Site ?>/habbo/"" target="_blank">Habbo</a></li>
            
            <li><img src="<?php echo Site ?>/img/icon-6.png"> <a href="<?php echo Site ?>/team">Equipo</a></li>
            
                        <li><img src="<?php echo Site ?>/img/icon-7.png"> <a href="<?php echo Site ?>/extras">Extras</a></li>
            
            <li><img src="<?php echo Site ?>/img/icon-5.png"> <a href="<?php echo Site ?>/catalogo/all">Catálogo</a></li>
            
    
            <?php 
              //Enlaces mediante sesion
              if($_SESSION == TRUE)
              {
                echo '<li><a href="'.Site.'/account/'.$USERID.'">'.userD($USERID,'user').'</a>
                  
                </li>


                      <li><a href="'.Site.'/salir">Salir</a></li>';

              }
              else
              {
                echo '<li><a href="'.Site.'/registro">Registro</a></li>
                      <li><a href="'.Site.'/acceder">Acceder</a></li>';
              }
            ?>

<?php 
        if(userD($USERID,'rank') >= 5)
        {
          echo '
                  <li><a href="'.Site.'/bmpanel/index.php">Administración</a></li>
                </div>';
        }
      ?>
          </ul>
  

</div>
</div>

<div id="header">


<div id="contenedor-header">


<a href="#"><div id="logo"></div></a>

<div id="login">


<div id="avatar"><img src="img/nohabbo.png" width="47" height="103"  style="margin-left: 19px; margin-top: 13px;"> </div>

<div id="usuario">Usuario</div>
<div id="contraseña">Contraseña</div>

<a href="#"><div id="entra">Acceder</div></a>
<a href="#"><div id="registrate">Regístrate</div></a>

<a href="#"><div id="olvidaste-contraseña"><u>¿Olvidaste tu contraseña?</u></div></a>


</div>


</div>


</div>


<div id="linea-decoracion"></div>

