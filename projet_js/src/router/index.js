import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Categorie from '../views/Categorie.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/categorie',
    name: 'Categories',
    component: Categorie
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    //component: () => import(/* webpackChunkName: "about" */ '../views/Categorie.vue')
  },
  {
    path: '/categorie/:num',
    name: 'Categorie',
    component: Categorie
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    //component: () => import(/* webpackChunkName: "about" */ '../views/Categorie.vue')
  },
  {
    path: '*',
    redirect: '/'
  }
]

const router = new VueRouter({
  routes
})

export default router
