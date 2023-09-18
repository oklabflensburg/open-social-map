import { createRouter, createWebHistory } from 'vue-router'

export const routes = [
  {
    name: 'dashboard',
    path: '/',
    component: () => import('./pages/Home.vue'),
  }, 
]

export const router = createRouter({
  history: createWebHistory(),
  routes,
})
