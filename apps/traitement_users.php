<?php
// Etape 0
// titre, contenue, auteur
if (isset($_GET['page']) && $_GET['page'] == "logout")
{
	session_destroy();
	header('Location: index.php');
	exit;
}
if (isset($_POST['action']))
{
	$action = $_POST['action'];
	if ($action == "register")
	{
// Etape 1
		if (isset($_POST['login'], $_POST['password'], $_POST['email'], $_POST['avatar'], $_POST['date']))
		{
			// Etape 2
			$login = $_POST['login'];// 63
			$password = $_POST['password'];// 4095
			$email = $_POST['email'];// 63
			$email = $_POST['avatar'];
			$date = $_POST['date'];
			if (strlen($login) > 31)
			{
				$errors[] = "login trop long (> 31)";
			}
			else if (strlen($login) < 5)
			{
				$errors[] = "login trop court (< 5)";
			}
			if (strlen($password) > 61)
			{
				$errors[] = "password trop long (> 63)";
			}
			else if (strlen($password) < 8)
			{
				$errors[] = "MDP trop court (< 8)";
			}
			if (strlen($email) > 31)
			{
				$errors[] = "email trop long (> 31)";
			}
			else if (strlen($email) < 5)
			{
				$errors[] = "Auteur trop court (< 5)";
			}
			// Etape 3
			if (count($errors) == 0)
			{
				$login = mysqli_real_escape_string($db, $login);
				$email = mysqli_real_escape_string($db, $email);
				$date = mysqli_real_escape_string($db, $date);
				$password = mysqli_real_escape_string($db, $password);
				$hash = password_hash($password, PASSWORD_BCRYPT, ["cost"=>12]);
				$res = mysqli_query($db, "INSERT INTO users (email, password, login, date) VALUES('".$email."', '".$hash."', '".$login."','".$avatar."', '".$date."')");
				if ($res)
				{
				/*
					INSERT INTO articles (titre, contenue, auteur) VALUES('titre', 'contenu', 'auteur')
					INSERT INTO articles (titre, contenue, auteur) VALUES('$titre', '$contenue', '$auteur')
					"INSERT INTO articles (titre, contenue, auteur) VALUES('$titre', '$contenue', '$auteur')"
					"INSERT INTO articles (titre, contenue, auteur) VALUES('.$titre.', '.$contenue.', '.$auteur.')"
					"INSERT INTO articles (titre, contenue, auteur) VALUES('".$titre."', '".$contenue."', '".$auteur."')"
					*/
					// "INSERT INTO " => '".$toto."'
					// Etape 4
					header('Location: index.php?page=login');
					exit;
				}
				else
				{
					$errors[] = "Erreur interne";
				}
			}
		}
	}
	if ($action == "login")
	{
		if (isset($_POST['login'], $_POST['password']))
		{
			$login = $_POST['login'];
			$password = $_POST['password'];
			if (count($errors) == 0)
			{
				$login = mysqli_real_escape_string($db, $login);
				// $hash = password_hash($password1, PASSWORD_BCRYPT, ["cost"=>15]);
				$res = mysqli_query($db, "SELECT * FROM users WHERE login='".$login."'");
				if ($res)
				{
					$user = mysqli_fetch_assoc($res);
					// $user['id'], $user['email'], $user['login'], $user['password'], $user['birthdate']
					if ($user)
					{
						if (password_verify($password, $user['password']))
						{
							$_SESSION['id'] = $user['id'];
							$_SESSION['login'] = $user['login'];
							$_SESSION['admin'] = $user['admin'];
							$_SESSION['avatar'] = $user['avatar'];
							// Etape 4
							header('Location: index.php?page=articles');
							exit;
						}
						else
						{
							$errors[] = "Mot de passe incorrect";
						}
					}
					else
					{
						$errors[] = "Login inconnu";
					}
				}
				else
				{
					$errors[] = "Erreur interne";
				}
			}
		}
	}
}
?>