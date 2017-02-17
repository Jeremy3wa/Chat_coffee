<?php
$res = mysqli_query($db, "SELECT messages.* , users.login FROM  `messages` , users WHERE users.id = messages.id_auteur AND messages.id_article=".$message['id']);
while ($messages = mysqli_fetch_assoc($res))
{
require('views/messages.phtml');

}
?>