<?php 

	# [|-|] D E V E L O P E D B Y R I C A R D O M A R I N [|-|] #

	//Adjustamos nuestra sesión general
	session_start();
	//Adjuntamos el archivo de conexion
	require 'kernel/core.php';
	//Adjuntamos el archivo de funciones
	require 'kernel/mysqli.php';
	//Adjuntamos el archivo para header
	require 'kernel/headers.php';
	//Adjuntamos nuestro core
  	require 'kernel/includes/core.tpl';
	//Sesión grabada para las IDS de usuarios
	$USERID = $_SESSION['ID'];
	//Developed by RicardoMarin
	Developed(BN('developed'));

	$_POST 		= MYSQL_::Adds($_POST);
	$_GET 		= MYSQL_::Adds($_GET);
	$_REQUEST 	= MYSQL_::Adds($_REQUEST);
	$_SERVER 	= MYSQL_::Adds($_SERVER);
	$_COOKIE 	= MYSQL_::Adds($_COOKIE);

	if($_SESSION == TRUE)
	{
		$USERID  =  $_SESSION['ID'];
	}

?>