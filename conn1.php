<?php

include("conn.php");

$from = $_POST['f'];
$to = $_POST['t'];
$credits = $_POST['c'];


mysqli_query($conn,"UPDATE users SET current_credit = current_credit - '$credits' WHERE name = '$from'");
mysqli_query($conn,"UPDATE users SET current_credit = current_credit + '$credits' WHERE name = '$to'");
mysqli_query($conn,"INSERT INTO transfers VALUES ('$from','$to','$credits')");

?>