<?php
$res = mysqli_query($db, "SELECT messages.* , users.login FROM  `messages` , users WHERE users.id = messages.id_author ORDER BY messages.date DESC");

require('views/messages.phtml');

?>