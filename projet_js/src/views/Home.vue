<template>
  <div id="wrap">
  <main>
    <section id="titre">
      <img alt="nuage1" src="../assets/img/nuage1.png" />
      <h1>Les activités nautiques à La Rochelle</h1>
      <img alt="nuage2" src="../assets/img/nuage1.png" />
    </section>
  <Slider />
  </main>
  </div>
</template>

<script>
// @ is an alias to /src
import Slider from '@/components/Slider.vue'

export default {
  name: 'Home',
  components: {
    Slider
  }
}
</script>
