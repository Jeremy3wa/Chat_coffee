<?php
// Etape 0
// titre, content, auteur
// Etape 1
if (isset($_POST['content']))
{
	// Etape 2
	$content = $_POST['content'];// 4095
	if (strlen($content) > 4095)
	{
		$errors[] = "Contenu trop long (> 4095)";
	}
	else if (strlen($content) < 2)
	{
		$errors[] = "Contenu trop court (< 2)";
	}
	// Etape 3
	if (count($errors) == 0)
	{
		$content = mysqli_real_escape_string($db, $content);
		$res = mysqli_query($db, "INSERT INTO messages (content, id_author) VALUES('".$content."', '".$_SESSION['id']."')");
		if ($res)
		{
		/*
			INSERT INTO articles (titre, content, auteur) VALUES('titre', 'contenu', 'auteur')
			INSERT INTO articles (titre, content, auteur) VALUES('$titre', '$content', '$auteur')
			"INSERT INTO articles (titre, content, auteur) VALUES('$titre', '$content', '$auteur')"
			"INSERT INTO articles (titre, content, auteur) VALUES('.$titre.', '.$content.', '.$auteur.')"
			"INSERT INTO articles (titre, content, auteur) VALUES('".$titre."', '".$content."', '".$auteur."')"
			*/
			// "INSERT INTO " => '".$toto."'
			// Etape 4
			header('Location: index.php');
			exit;
		}
		else
		{
			$errors[] = "Erreur interne";
		}
	}
}
?>