<template>
  <div>
    <h4>Pages in Lesson are: </h4>
    <ul v-for="pages in lesson[0].pages" :key="pages.id">
      <li>{{ pages.title }}</li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";
import { url } from "../../js/app";
import { eventBus } from "../../js/app";

export default {
  data() {
    return {
      lesson: "init"
    };
  },
  props: ["lessons"],
  name: "library-pages",
  created() {
    var vm = this;
    axios
      .get(`/api/lessons/${this.lessons.id}`, {
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          Accept: "application/json"
        }
      })
      .then(function(res) {
        vm.lesson = res.data;
      })
      .catch(function(error) {
        console.log(error);
      });
  }
};
</script>

<style>
</style>
