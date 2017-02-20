<?php
$errors = [];
$db = mysqli_connect("192.168.1.52", "tchat", "tchat", "tchat");
session_start();// http://php.net/manual/fr/function.session-start.php

$access = ["login", "register", "messages", "message_elem"];
$page = "messages";
if (isset($_GET['page']) && in_array($_GET['page'], $access)) // http://php.net/manual/fr/function.in-array.php
{
    $page = $_GET['page'];
}

require('apps/traitement_users.php');
require('apps/traitement_messages.php');
require('apps/skel.php');
?>

