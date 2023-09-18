import { createApp } from 'vue'
import App from './App.vue'
import { router } from './router'
import './index.css'

const app = createApp(App)
const components = import.meta.globEager('./components/*.vue')

Object.entries(components).forEach(([path, definition]) => {
  // Get name of component, based on filename
  // "./components/Fruits.vue" will become "Fruits"
  const componentName = path.split('/').pop().replace(/\.\w+$/, '')

  // Register component on this Vue instance
  app.component(componentName, definition.default)
})

app.use(router)

app.mount('#app')
