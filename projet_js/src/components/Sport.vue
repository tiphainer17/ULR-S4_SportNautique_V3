<template>
  <div>
    <ul>
      <li v-for="(p, index) in infosSports" :key="index">
        <a href="#" :title="p.titre"><img :src="imageUrl(p.mini)" :alt="p.titre" @mouseenter="changePhoto(p)"></a>
      </li>
    </ul>
    <slider :titre="titre" :image="image"/>
  </div>
</template>

<script>
import Slider from '@/components/Slider.vue'
export default {
  name: "sport",
  data() {
    return {
      num : this.$route.params.num,
      titre: this.photos[0].titre,
      image: this.imageUrl(this.photos[0].lien)
    }
  },
  components: {
    Slider
  },
  props: {
    infosSports: Array
  },
  methods: {
    changePhoto(p) {
      this.image=this.imageUrl(p.lien)
      this.titre=p.titre
    },
    imageUrl(p) {
      return require('@/assets/' + p)
    }
  }
}
</script>

