<?php
$res = mysqli_query($db, "SELECT messages.* , users.login FROM  `messages` , users WHERE users.id = messages.id_author");

require('views/messages.phtml');

?>