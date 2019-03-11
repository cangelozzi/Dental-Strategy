import Vue from 'vue';
import router from "./router";
import App from '../components/App.vue';
import Login from '../components/login.vue';

// Note: VUETIFY IS NOT CURRENTLY USED, but present in PACKAGE.JSON for future implementation.  ELEMENT.UI has been used as component library. 
// import Vuetify from 'vuetify'
// import 'vuetify/dist/vuetify.min.css'

// Vue.use(Vuetify, {
//   theme: {
//     primary: '#fff',
//     secondary: '#000',
//     accent: '#FFA500',
//     error: '#b71c1c'
//   }
// })

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);


Vue.config.productionTip = false;

export const eventBus = new Vue();

export const url = window.location.href;

new Vue({
  router, 
  // store,
  render: h => h(App)
}).$mount('#app');
