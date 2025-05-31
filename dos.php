<?php
$server = "localhost";
$user = "root";
$pass = "";
$db = "tienda";


$conexion = new mysqli($server, $user, $pass, $db);


if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
} else {
    echo "Conectado correctamente";
    }
if (isset($_POST['gu'])) { 


    $cl = $_POST['cl'];
    $nom = $_POST['nom'];
    $prec = $_POST['pre'];
    $st = $_POST['st'];
    
    
    $instruction_SQL = "INSERT INTO productos(Clave, Nombre,Clave2 Precio, Stock) VALUES('$cl', '$nom', '$prec', '$st')";

    if ($conexion->query($instruction_SQL) === TRUE) {
        echo "Datos insertados correctamente.";
    } else {
        echo "Error al insertar: " . $conexion->error;
    }
}










?> 