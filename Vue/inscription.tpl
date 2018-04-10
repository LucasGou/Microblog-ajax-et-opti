{include file='../includes/haut.inc.php'}

<script src="vendor/jquery/jquery.js"> </script>
<script src="js/verif_inscription.js"> </script>
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





{include file='../includes/bas.inc.php'}
