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


    $nombre = $_POST['nom'];
    $fec = $_POST['fec'];
    $tel = $_POST['tel'];
    $rfc = $_POST['rfc'];
    $cp = $_POST['cod'];
    $mun = $_POST['mun'];
    $es = $_POST['est'];
    $col = $_POST['col'];
    $cal = $_POST['calle'];
    
    $instruction_SQL = "INSERT INTO cliente(Nombre, Telefono, RFC, F_Nac, Municipio, Estado, Colonia, Calle, Codigo) VALUES('$nombre', '$tel', '$rfc', '$fec', '$mun', '$es', '$col', '$cal', '$cp')";

    if ($conexion->query($instruction_SQL) === TRUE) {
        echo "Datos insertados correctamente.";
    } else {
        echo "Error al insertar: " . $conexion->error;
    }
}










?> 