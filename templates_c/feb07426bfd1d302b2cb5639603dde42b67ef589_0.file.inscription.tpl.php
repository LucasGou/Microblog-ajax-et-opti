<?php
/* Smarty version 3.1.30, created on 2018-03-27 16:51:05
  from "/Applications/MAMP/htdocs/Microblog/Vue/inscription.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5aba5a5982b081_89521819',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'feb07426bfd1d302b2cb5639603dde42b67ef589' => 
    array (
      0 => '/Applications/MAMP/htdocs/Microblog/Vue/inscription.tpl',
      1 => 1522155938,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../includes/haut.inc.php' => 1,
    'file:../includes/bas.inc.php' => 1,
  ),
),false)) {
function content_5aba5a5982b081_89521819 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../includes/haut.inc.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


<?php echo '<script'; ?>
 src="vendor/jquery/jquery.js"> <?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="js/verif_inscription.js"> <?php echo '</script'; ?>
>
<header>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="intro-text">
                    <span class="name">INSCRIPTION</span>
                    <hr class="star-light">
                </div>
            </div>
        </div>
    </div>
</header>
<br>
    <!-- Formulaire d'inscription -->

<div class="row">
        <div class="col-sm-3"></div>
        <div style="text-align: center;background-color: #EEE; padding: 20px; color : black" class="col-sm-6">

            <h1>inscrivez vous monsieur </h1>
            <form novalidate id ="formulaire" action="inscription.php" method="POST">
            <div id ="content2">
              <div class ="champs">

                <label for="lastname">Nom</label></br>
                <input required = "nom" class="nom" name="nom" type="text"placeholder="nom" id="nom" /><br>
                <p class ="erreur" id = "erreurnom"> </p>

                <label for="mdp">Mot de Passe</label></br>
                <input required = "mdp" class="mdp" name="mdp" type="password"placeholder="mdp" id="mdp" /><br>
                <p class ="erreur" id = "erreurmdp"> </p>

                <label for="email">Email</label></br>
                <input required = "mail" type="mail" class="mail" name="mail" placeholder="nom@domaine.com" id="lastname" required /><br><br>
                
            
                <div id="reussite"></div>
                <input class="btn btn-success" name="submit" value="Envoyer" type="submit">
                

                </div>
            </div>
          </form>
        </div>
    </div>





<?php $_smarty_tpl->_subTemplateRender("file:../includes/bas.inc.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php }
}
