<?php

session_start();

$_SESSION['usuario'] = $usuario; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $Correo = $_POST['Correo'];
    $contraseña = password_hash($_POST['contraseña'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO Usuarios (nombre, apellido, correo, contraseña) VALUES ('$nombre', '$apellido', '$email', '$contraseña')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro exitoso.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Correo = $_POST['Correo'];
    $contraseña = $_POST['contraseña'];

    $sql = "SELECT * FROM Usuarios WHERE Correo='$Correo'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($contraseña, $row['contraseña'])) {
            echo "Bienvenido, " . $row['nombre'];
        } else {
            echo "Contraseña incorrecta.";
        }
    } else {
        echo "No se encontró el usuario.";
    }
}
?>