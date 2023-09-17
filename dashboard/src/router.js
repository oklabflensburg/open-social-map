import { createRouter, createWebHashHistory } from 'vue-router'

export const routes = [
  {
    name: 'dashboard',
    path: '/dashboard',
    component: () => import('./pages/Dashboard.vue'),
  }, 
]

export const router = createRouter({
  history: createWebHashHistory(),
  routes,
})
