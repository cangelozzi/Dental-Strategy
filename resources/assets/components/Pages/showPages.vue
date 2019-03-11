<template>
  <div>
    <div class="page-wrapper">
      <div class="lessonTitle"><h1>{{ lessons[0].title }}</h1></div>
      <div class="lesson-wrapper">
        <router-view></router-view>
        <div class="pagesList" v-bind:class="{ hidden: isInactive }">
          <div class="pagesList-inner" v-if="!isHidden">
            <h2>Lesson Summary</h2>
            <ul>
              <li class="contentLessonItem" v-for="(pages, index) in lessons[0].pages" :key="index">
                <img src="../../images/img/file.svg">
                <a>{{  pages.title }}</a>           
              </li>
            </ul>
          </div>
          <div class="contentBtn" v-if="!isHidden">
            <router-link v-if="lessons[0].id" :to="{ name: 'pages', params: {lessonId: lessons[0].id } }">
              <button v-on:click="isInactive = true">Start</button>
            </router-link>
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
import { eventBus } from "../../js/app";

export default {
  name: "show-pages",
  props: ["lessons"],
  data() {
    return {
      lessonId: null,
      isHidden: false,
      isInactive: false
    };
  }

  // methods: {
  //   hide() {

  //   }
  // }
};
</script>

<style lang="scss" scoped>
@import "~@/_variables.scss";

.page-wrapper {
  width: 100%;
  display: grid;
  //   set the title area a fixed hight of 255px
  grid-template-rows: 180px auto;
  height: 100vh;
  overflow: hidden;
  grid-template-columns: 1fr 8fr 1fr;
  .lessonTitle {
    grid-row: 1;
    grid-column: 1/4;
    display: grid;
    grid-template-columns: 1fr 8fr 1fr;
    background: #f5f5f5;
    margin: 0;
    h1 {
      grid-column: 2;
      font-family: $primaryFont;
      font-size: 3em;
      line-height: 1em;
      margin: 0;
      -ms-flex-item-align: center;
      align-self: center;
    }
  }
  .lesson-wrapper {
    grid-row: 2;
    grid-column: 2;
    overflow: auto;
    .pagesList {
      display: grid;
      grid-template-rows: 65vh 35vh;
      h2 {
        font-family: $primaryFont;
      }
      .pagesList-inner {
        grid-row: 1;
        padding-top: 1rem;
        ul {
          list-style: none;
          li {
            padding-left: 2rem;
            position: relative;
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
    }
  }
}

.contentBtn {
  // place next button in the third 1/3 grid of pagenation grid
  // grid-column: 2;
  grid-row: 2;
  button {
    float: right;
    font-family: $primaryFont;
    font-size: 1em;
    background: $primaryColor;
    padding: 1em 2.625em;
    text-transform: uppercase;
    color: $lightGrey;
    transition: all 0.1s ease-in-out;
    &:hover {
      background: #fff;
      color: $primaryColor;
      border-color: $primaryColor;
    }
  }
}

.pagesList.hidden {
  display: none !important;
}
</style>
