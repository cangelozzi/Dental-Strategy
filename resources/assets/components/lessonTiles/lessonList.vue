<template>
  <router-link :to="'/lessons/page'" @click.native="lessonsApiCall">
      <div class="info" >
        <p class="topTitle">Lesson</p>
        <h2>{{ lesson.title }}</h2>
        <p class="situation">60% Completed</p>
    </div>
  </router-link>
</template>

<script>
import axios from "axios";
import { url } from "../../js/app";
import { eventBus } from "../../js/app";

export default {
  props: ["lesson"],
  name: "lesson-list",
  methods: {
    lessonsApiCall() {
      var vm = this;
      axios
        .get(`/api/lessons/${this.lesson.id}`, {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
            Accept: "application/json"
          }
        })
        .then(function(res) {
          vm.lessons = res.data;
          eventBus.$emit("lessonsApi", res.data);
          // console.log('lesson event ok');
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  }
};
</script>

<style scoped lang="scss">
@import url("https://fonts.googleapis.com/css?family=Merriweather:300,400,700");
@import "~@/_variables.scss";

.info {
  p {
    margin: 0;
    font-family: $secondaryFont;
    font-weight: 300;
    font-size: 1rem;
  }
  h2 {
    font-family: $primaryFont;
    font-size: 1.5rem;
    position: relative;
    z-index: 1;
    align-self: start;
    margin: 0;
    display: inline-block;
    padding-top: 5px;
  }
  .situation {
    float: right;
    font-family: $secondaryFont;
    padding-top: 12px;
  }
}

.lesson {
  display: inline-block;
}
</style>
