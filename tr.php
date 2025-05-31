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
    $tel = $_POST['tel'];
    $cal = $_POST['calle'];
    
    
    $instruction_SQL = "INSERT INTO proveedor(Clave, Nombre, Telefono, direccion) VALUES('$cl', '$nom', '$tel', '$cal')";

    if ($conexion->query($instruction_SQL) === TRUE) {
        echo "Datos insertados correctamente.";
    } else {
        echo "Error al insertar: " . $conexion->error;
    }
}










?> 