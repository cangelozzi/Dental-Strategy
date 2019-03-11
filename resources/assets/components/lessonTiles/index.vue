<template>
<div class="lessonsRight">
        
    <div class="lessonTile" v-if="modules[moduleId].lessons" v-for="(lesson, index) in modules[this.moduleId].lessons" :key="index" v-bind:lesson="lesson">
      <div class="columnOne">
        
       <lesson-list :lesson="lesson"></lesson-list>

        <div class="progressArea">
            <div class="progressBar"><div class="progress"></div>
            </div>
        </div>  
      </div>
      <div class="columnTwo">
        <div class="score">
          <p class="scoreTitle">Score</p>
          <h2 class="value">NA</h2>
        </div>
      </div>
    </div>
 
</div>

</template>
<script>
// import axios from 'axios'
import lessonList from "./lessonList.vue";
import utility from "../../js/utility";
import { eventBus } from "../../js/app";

export default {
  created() {
    utility.modulesApiCall();

    eventBus.$on("modulesApi", modules => {
      this.modules = modules;
      this.moduleId = this.$route.params.moduleId;
    });
  },

  data() {
    return {
      modules: "init",
      moduleId: 0
    };
  },

  components: {
    "lesson-list": lessonList
  }
};
</script>


<style scoped lang="scss">
@import url("https://fonts.googleapis.com/css?family=Merriweather:300,400,700");
@import "~@/_variables.scss";

//right side
.lessonsRight {
  grid-column: 7 / 13;
  padding: 8em 2.5em;
  background: $lightGrey;
  overflow: scroll;
}

//Module Tiles
.lessonTile {
  display: flex;
  margin-top: 2rem;
  background-color: #fff;
  border-color: #cccccc;
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.25);
  padding: 1rem;
  max-height: 30vh;
  cursor: pointer;
  transition: all 0.1s ease-in-out;
  &:hover {
    transform: scale(1.01);
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.25);
  }
  &:last-child {
    margin-bottom: 8rem;
  }
  .columnOne {
    grid-template-rows: 1fr 1fr;
    width: 80%;
    margin-right: 2rem;
  }
  .columnTwo {
    grid-column: 2;
    text-align: center;
    width: 20%;
  }
  .info {
    p {
      margin: 0;
      font-family: $secondaryFont;
      font-weight: 300;
      font-size: 1rem;
    }
    .topTitle {
      padding-bottom: 0.5rem;
    }
    h2 {
      font-family: $primaryFont;
      font-size: 1.5rem;
      position: relative;
      z-index: 1;
      align-self: start;
      margin: 0;
      display: inline-block;
    }
    .situation {
      float: right;
      font-family: $secondaryFont;
    }
  }
  .score {
    grid-row: 2/3;
    .value {
      color: #bbbbbb;
      font-family: $primaryFont;
    }
  }
  .lessonsQTY {
    grid-row: 2/3;
    font-family: $primaryFont;
    font-size: 1rem;
    align-self: start;
  }
  .progressArea {
    grid-row: 2/3;
    align-self: end;
    .situation {
      font-family: $primaryFont;
      font-size: 1rem;
      text-transform: uppercase;
    }
    .progressBar {
      float: left;
      position: relative;
      width: 100%;
      height: 0.65rem;
      margin: 1.5rem 0;
      background: $lightGrey;
      cursor: pointer;
      border-radius: 20px;
      overflow: hidden;
    }
    .progress {
      background-color: $primaryColor;
      width: 40%;
      height: 100%;
      border-radius: 20px;
    }
  }
}
</style>