<template>
  <div class="moduleContent">
    <h3 class="libraryTitle">{{title}}</h3>
    <div class="libraryContent" v-if="libHome = true">
      <ul> 
          <router-link :to="`/lesson/${ module.id }/`" v-for="module in modules" :key="module.id" v-on:click="libHome = false">
            <li class="contentLessonItem">
                  <img src="../../images/img/file.svg">
                  <a>{{  module.title }}</a>                
            </li>
          </router-link>
      </ul>
      <!-- <div class="nextBtnWraper">
        <router-link :to="'/home'">
          <button>Exit</button>
        </router-link>
    </div> -->
    </div>
    <!-- <router-view class="library-inner"></router-view> -->
  </div>
</template>

<script>
import { eventBus } from "../../js/app";

export default {
  // name: 'library',
  data() {
    return {
      title: "Dental Strategy Modules Library",
      modules: " ",
      libHome: false,
    };
  },

  created() {
    eventBus.$on("modulesApi", modules => {
      this.modules = modules;
    });
  }
  // clearPage() {
  //   libHome = false
  // },
};
</script>

<style lang="scss">
@import "~@/_variables.scss";

.moduleContent {
  display: grid;
  grid-template-rows: repeat(3, 1fr) 6fr repeat(3, 1fr);
  grid-template-columns: 1fr 7fr 1fr 1fr;
  height: 100vh;

  .libraryTitle {
    grid-row: 2/2;
    grid-column: 2/4;
    font-family: $primaryFont;
    font-size: 3em;
    line-height: 1em;
    margin: 0;
  }
}

.libraryContent, .library-inner {
    grid-row: 3/-1;
    grid-column: 2/4;
    overflow: auto;
    height: auto;
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
}
  .nextBtnWraper {
    grid-row: 5/6;
    grid-column: 3/4;

    button {
      font-family: $primaryFont;
      font-size: 1em;
      background: $primaryColor;
      padding: 1em 2.625em;
      text-transform: uppercase;
      color: $lightGrey;
      border: none;
      cursor: pointer;
      transition: all 0.1s ease-in-out;
      box-sizing: border-box;
      &:hover {
        background: none;
        box-shadow: 0px 0px 0px 2px $primaryColor inset;
        color: $primaryColor;
      }
    }
  }

</style>