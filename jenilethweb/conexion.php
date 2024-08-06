<?php

$server = "localhost";
$user = "root";
$pass = "";
$db = "nevaditos express";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_error) {
    die("Conexion Fallida" . $conexion->connect_error);
} else {
    echo "conectado";
}

?>