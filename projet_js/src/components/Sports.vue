<template>
  <main>
    <h2 v-if="this.$route.params.num">Sports de la catégorie : {{this.$route.params.num}}</h2>
    <h2 v-else>Toutes les catégories</h2>

  <div class="categorie">
    <section v-for="(p,index) in this.$store.state.infosSports" :key="index">

      <article >

      <div id="haut">
      <p class="nom">{{ p.nom }}</p>
  </div>
      <div class="orga">
        <div class="orga2">
          <p class="des">{{ p.description }}</p>
          <!--<a href="{{ path('sport', {id:p.id})}}" class="reservation">Réserver</a>-->
        </div>
        <figure>
          <img :src="imageUrl(p.img)" :alt="p.titre" class="photo">
          <figcaption class="prix"><strong>{{ p.prix }} €/personne </strong></figcaption>
        </figure>
      </div>
    </article>
    </section>
  </div>
  </main>
</template>

<script>
export default {
  name: 'Slider',

  methods: {
    imageUrl(p){
      return require ('@/assets/'+p)
    }
  }

}
</script>


