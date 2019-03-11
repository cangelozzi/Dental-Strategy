<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "app",
  data() {
    return {};
  },
  methods: {},
  components: {}
};
</script>

<style>
/** REMOVING ROUTER-LINK STYLING */
a {
  text-decoration: none;
  color: inherit;
}
</style>
