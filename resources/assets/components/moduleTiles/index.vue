<template>
<div class="moduleRight tiles">
    <div class="moduleTile" v-if="module.lessons[0]" v-for="(module, index) in modules" v-bind:module="module" :key="index">
        <router-link :to="`/modules/${index}/lessons`">
          <module-list :module="module"/>
          <div class="progressArea">
            <p class="situation">In Progress</p>
            <div class="progressBar"><div class="progress"></div></div>
          </div>
        </router-link>
    </div>
</div>

</template>
<script>
import modulesList from "./tileContent.vue";
import modules from "../Modules.vue";
import utility from "../../js/utility";
import { eventBus } from "../../js/app";

export default {
  created() {
    utility.modulesApiCall();

    eventBus.$on("modulesApi", modules => {
      this.modules = modules;
    });
  },
  data() {
    return {
      modules: {},
      moduleId: null
    };
  },

  components: {
    "module-list": modulesList,
    modules
  }
};
</script>


<style scoped lang="scss">
@import "~@/_variables.scss";

//right side
.moduleRight.tiles {
  grid-column: 7 / 13;
  padding: 8em 2.5em;
  background: $lightGrey;
  overflow: scroll;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  align-items: flex-start;
  justify-content: center;
}

.moduleContentWraper {
  grid-column: 5 / 12;
}

.moduleContent {
  display: grid;
  grid-template-rows: repeat(18, 1fr);
  height: 100vh;

  p {
    grid-row: 3 / 4;
    font-family: $secondaryFont;
    font-size: 1.8em;
  }

  h3 {
    grid-row: 4/6;
    font-family: $primaryFont;
    font-size: 4em;
  }

  ul {
    grid-row: 7/10;
    list-style: none;

    li {
      height: 2em;
      margin-bottom: 3em;

      a {
        font-family: $primaryFont;
        font-size: 1.5em;
        text-align: left;
        color: $darkGrey;
        display: block;
        line-height: 3em;
        padding-left: 20px;

        &:hover {
          background-color: $lightGrey;
        }
      }
    }
  }
}

//Module Tiles
.moduleTile {
  box-sizing: border-box;
  flex: initial;
  width: 215px;
  margin: 1rem;
  height: 260px;
  background-color: #fff;
  border-color: #cccccc;
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.25);
  padding: 1rem;
  cursor: pointer;
  transition: all 0.1s ease-in-out;
  &:hover {
    transform: scale(1.01);
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.25);
  }
  &:last-child {
    margin-bottom: 8rem;
  }
  .progressArea {
    height: 120px;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    .situation {
      font-family: $primaryFont;
      font-size: 1rem;
      text-transform: uppercase;
      margin: 0;
    }
    .progressBar {
      float: left;
      position: relative;
      width: 100%;
      height: 0.65rem;
      margin: 1.5rem 0;
      background: $lightGrey;
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