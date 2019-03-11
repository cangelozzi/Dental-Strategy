<template>
 <div class="component-wrapper">
    <div class="left">
        <div class="sidebarContainer">
            <div class="moduleSideBar">
                <div class="titleBox">
                    <h2>Lesson</h2>
                    <div class="icons">
                        <router-link :to="'/modules'"><img src="../../images/img/home.svg"></router-link>
                    </div>
                    <h3 class="moduleName">{{ lessons[0].title }}</h3>
                </div>
                <sidebar :lessons='this.lessons' :lessonId='this.lessonId'></sidebar>
                <div class="footer">
                    <div class="backBtnWraper">
                        <button class="button--grey" @click="$router.push('/modules')">Back</button>
                    </div>
                    <div class="brand">
                        <p><b>DENTAL</b> STRATEGY</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="right">
      <show-pages :lessons='this.lessons' :lessonId='this.lessonId'></show-pages>
    </div>
  </div>
</template>


<script>
import sidebar from "./Sidebar";
import showPages from "./showPages.vue";
import { eventBus } from "../../js/app";

export default {
  created() {

    eventBus.$on("lessonsApi", lessons => {
      this.lessons = lessons;
    });
  },

  props: ["lesson"],

  data() {
    return {
      lessons: "init",
      lessonId: null
    };
  },
  components: {
    sidebar,
    showPages
  }
};
</script>

<style scoped lang="scss">
@import url("https://fonts.googleapis.com/css?family=Merriweather:300,400,700");
@import "~@/_variables.scss";
@import "~@/_components.scss";

.component-wrapper {
  height: 100vh;
  width: 100vw;
  overflow: hidden;
  display: grid;
  grid-template-columns: 300px auto;
  .left {
    grid-column: 1;
  }
  .right {
    grid-column: 2;
  }
}

//left side
.sidebarContainer {
  width: 100%;
  display: grid;
  .moduleSideBar {
    border: $lightGrey;
    height: 100vh;
    display: grid;
    grid-template-rows: 180px auto 160px;
    border-right: 1px solid rgba(0, 0, 0, 0.1);
    background: #f8f8f8;
  }
}

.sidebar {
  grid-row: 2;
  overflow: auto;
  background: #fff;
}

.titleBox {
  grid-row: 1 / 2;
  background-color: $primaryColor;
  box-sizing: border-box;
  padding: 1em 2.3em;
  margin: 0;
  position: relative;
  h2 {
    font-family: $primaryFont;
    font-size: 1.2em;
    font-weight: 300;
    color: white;
    width: 100%;
  }
  h2,
  i {
    display: inline;
  }
  i {
    float: right;
  }
  h3 {
    font-family: $primaryFont;
    font-size: 3em;
    font-weight: 600;
    color: white;
    margin: 0;
    padding-top: 1rem;
  }
}

.classList {
  grid-row: 2 / 3;
  grid-template-rows: 500px auto;
  grid-gap: 0px;
  box-sizing: border-box;
  margin: 0;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  padding: 0;
}

.footer {
  grid-row: 3/4;
  padding-top: 2rem;
  text-align: center;
  border-top: solid 1px #e6e6e6;
  .backBtnWraper {
    margin: 0 auto;
    align-self: center;
  }
  .brand {
    p {
      font-family: $primaryFont;
      text-align: center;
      color: $unselectedText;
      font-size: 1.8em;
      font-weight: 100;
      margin: 0;
      padding-top: 1rem;
    }
  }
}

.icons {
  position: absolute;
  right: 0;
  margin-right: 1rem;
  top: 0;
  img {
    width: 1.6rem;
    padding: 0.8rem 0.5rem;
    vertical-align: middle;
    cursor: pointer;
    transition: all 0.1s ease-in-out;
    &:hover {
      transform: scale(1.06);
    }
  }
}
</style>
