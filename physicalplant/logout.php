<?php
session_start();
unset($_SESSION['physicalplantlogin']);
header("location:../index.php");
?>
