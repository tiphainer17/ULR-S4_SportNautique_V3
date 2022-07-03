<template>
  <div id="wrap">
  <header>
    <nav>
      <ul class="navbar">
        <li><img class="logo" alt="logo" src="./assets/img/logo.png"></li>
        <li><router-link to="/">Accueil</router-link></li>
        <li class="menu"><router-link to="/categorie">Activité Nautique</router-link>
          <ul class="deroulement">
            <li><router-link to="/categorie/1">Subaquatique</router-link></li>
            <li><router-link to="/categorie/2">Sports de glisse</router-link></li>
            <li><router-link to="/categorie/3">Loisirs nautique</router-link></li>
            <li><router-link to="/categorie/4">Navigation</router-link></li>
          </ul>
        </li>
        <li><router-link to="/">Connexion</router-link></li>
        <!--<li><router-link to="/">Mon compte</router-link></li>-->
        <li><router-link to="/">Panier</router-link></li>
      </ul>
    <router-view/>
  </nav>
  </header>

    <footer>
      <p>Projet - Framework Web</p>
      <p>Copyright 2021 Renouf Tiphaine</p>
      <div>
        <img class="reseaux" alt="facebook" src="./assets/img/iconfinder_online_social_media_facebook_734386.png"/>
        <img class="reseaux" alt="twitter" src="./assets/img/iconfinder_twitter_online_social_media_734367.png"/>
        <img class="reseaux" alt="youtube" src="./assets/img/iconfinder_youtube_online_social_media_tube_734362.png"/>
        <img class="reseaux" alt="instagram" src="./assets/img/iconfinder_instagram_online_social_media_photo_734395.png"/>
      </div>
    </footer>
  </div>
</template>
