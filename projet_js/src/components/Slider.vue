<template>
  <div class="slider">
    <img alt="fleche_gauche" src="../assets/img/fleche_gauche.png" id="fleche_gauche" @click="prev()">
    <section>
      <article class="slide">
        <p class="nom">{{ this.$store.state.infosSports[index].nom }}</p>
        <div class="orga">
          <div class="orga2">
            <p class="des">{{ this.$store.state.infosSports[index].description }}</p>
           <!-- <a href="{{ path('sport', {id:p.id})}}" class="reservation">Réserver</a>-->
          </div>
          <figure>
            <img :src="imageUrl(this.$store.state.infosSports[index].img)" :alt="this.$store.state.infosSports[index].nom" class="photo">
            <figcaption class="prix"><strong>{{ this.$store.state.infosSports[index].prix }} €/personne </strong></figcaption>
          </figure>
        </div>

      </article>
    </section>

    <img alt="fleche_droite" src="../assets/img/fleche_droite.png" id="fleche_droite" @click="next()">

  </div>
</template>

<script>
export default {
  name: 'Slider',
  data(){
    return {
      index: 0
    }
  },
  methods: {
    imageUrl(p){
      return require ('@/assets/'+p)
    },
    prev(){
      if(this.index===0){
        this.index = this.$store.state.infosSports.length-1
      } else {
        this.index--
        return this.index
      }
    },
    next(){
      if(this.index>(this.$store.state.infosSports.length-2)){
        this.index = 0
      } else {
        this.index++
        return this.index
      }
    }
  }

}
</script>
