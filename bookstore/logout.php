<?php
session_start();
unset($_SESSION['bookstorelogin']);
header("location:../index.php");
?>
