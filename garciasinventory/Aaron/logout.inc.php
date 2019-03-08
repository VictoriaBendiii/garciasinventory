<?php

if (isset($_POST['logut'])){
    session_start();
    session_unset();
    session_destroy();
     $_SESSION = array();
    header("Location: ../index.php");
    exit();
}


 ?>
