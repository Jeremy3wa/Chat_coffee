<?php
$res = mysqli_query($db, "SELECT users.* FROM  `users`");

while ($user = mysqli_fetch_assoc($res))
{
	require('views/user_elem.phtml');
}
?>