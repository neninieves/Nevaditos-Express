<?php

$sql = "SELECT * FROM Pedidos";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<h2>" . $row["nombre"] . "</h2>";
        echo "<p>" . $row["descripcion"] . "</p>";
        echo "<p> Precio: $" . $row["precio"] . "</p>";
    }
} else {
    echo "No hay postres disponibles.";
}
?>