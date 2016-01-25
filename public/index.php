<?php
/**
 * Sistema basado en layout + llamadas a templates correspondientes
 */
require_once './../config.php'; //importante: configuracion de directorios

$titulo = 'Index';

//Controller
require_once CONTROLLERS_PATH.'AccommodationController.php';
$listado = new AccommodationController();
$template = $listado->viewListAll();

if (isset($_POST['submit'])) {
	$tres_primeras = substr($_POST['busqueda'], 0,3);
	$list = $listado->listAll($_POST['busqueda']);
}

//fin: carga layout principal
include "/../app/views/layouts/based_layout.php";
?>