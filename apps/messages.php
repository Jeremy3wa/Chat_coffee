<?php
$res = mysqli_query($db, "SELECT messages.*, users.login, users.avatar FROM  `messages` , users WHERE users.id = messages.id_author");

require('views/messages.phtml');

?>