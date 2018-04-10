<?php
	include('includes/connexion.inc.php');
	require('smarty/libs/Smarty.class.php');
	$smarty=new Smarty();


	/* CHECK ERREURS*/
	$controle = false ;
if(isset($_POST['mail'])){
	$sql='SELECT pseudo, email FROM utilisateurs';
	$stmt=$pdo->query($sql);
	$controle=true;
	while($data=$stmt->fetch())
	{
		if($data['pseudo']==$_POST['nom'] || $data['email']==$_POST['mail'])
		{
			$controle=false;
			$smarty->assign('erreur', true);
		}

		if($_POST['nom']=="" || $_POST['mail']=="" || $_POST['mdp']=="")
		{
			$controle=false;
			$smarty->assign('vide', true);
		}
	}
}
	/* INSCRIPTION SI ERREUR = OK*/
	if($controle==true)
	{
		$sql = "INSERT INTO utilisateurs(pseudo, email, password) VALUES ('{$_POST['nom']}','{$_POST['mail']}', :mdp)";
		$prep = $pdo->prepare($sql);
		$prep->bindValue(':mdp', md5($_POST['mdp']));
		$prep->execute();
		$smarty->assign('erreur', false);
	}

	$smarty->display('Vue/inscription.tpl');
?>