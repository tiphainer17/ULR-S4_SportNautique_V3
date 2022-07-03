<template>
  <div id="wrap">
    <Sports :cat="this.$route.params.num" />
  </div>
</template>
<script>
// @ is an alias to /src
import Sports from '@/components/Sports.vue'

export default {
  name: 'Home',
  components: {
    Sports
  },
  props :{
    cat:Number
  }
}
</script>
