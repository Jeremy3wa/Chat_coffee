<?php
$res = mysqli_query($db, "SELECT * FROM users");
require ("views/register.phtml")
?>