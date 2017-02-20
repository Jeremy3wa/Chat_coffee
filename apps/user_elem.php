<?php
$res = mysqli_query($db, "SELECT users.* FROM  `users` WHERE last+10>CURRENT_TIMESTAMP");

while ($user = mysqli_fetch_assoc($res))
{
	require('views/user_elem.phtml');
}
?>