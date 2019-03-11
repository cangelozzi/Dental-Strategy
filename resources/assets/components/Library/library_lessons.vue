<template>
  <div>
      <h4>Lessons in Module</h4>
    <ul>
      <li class="contentLessonItem" v-for="lessons in module.lessons" :key="lessons.id" v-bind:lessons="lessons">
        <img src="../../images/img/file.svg">
        <a>{{  lessons.title }}</a>     

        <library-pages :lessons="lessons"></library-pages>

      </li>
    </ul>
  </div>
</template>

<script>
import libraryPages from "./library_pages";
import utility from "../../js/utility";
import { eventBus } from "../../js/app";
export default {
  created() {
    utility.modulesApiCall();

    eventBus.$on("modulesApi", modules => {
      this.modules = modules;
      this.modules.forEach(module => {
        if (module.id === parseInt(this.moduleId, 10)) {
          this.module = module;
        }
      });
    });
  },

  data() {
    return {
      modules: "init",
      moduleId: this.$route.params.moduleId,
      module: "init"
    };
  },

  components: {
    "library-pages": libraryPages
  }
};
</script>

<style <style lang="scss" scoped>
@import "~@/_variables.scss";

h4 {
  font-family: $primaryFont;
  font-size: 2em;
  line-height: 1em;
}
ul {
  list-style: none;
  li {
    padding-left: 2rem;
    position: relative;
    cursor: pointer;
    a {
      font-family: $primaryFont;
      font-size: 1.3em;
      text-align: left;
      color: $darkGrey;
      line-height: 3em;
      padding-left: 3rem;
    }
    img {
      width: 1.5rem;
      position: absolute;
      top: 1rem;
    }
    &:hover {
      background-color: $lightGrey;
    }
  }
}
</style>

