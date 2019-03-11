<template>
  <div class="moduleContainer">
        <div class="moduleLeft">
        <div class="icons">
          <img @click="logout" src="../images/back.svg">
          <router-link :to="'/library'"><img src="../images/img/library_white.svg"></router-link>
          <img src="../images/img/settings.svg">
        </div>
        <div class="logo">
            <p><b>DENTAL</b> STRATEGY</p>
        </div>
        <div class="mainArea">
            <p class="topHeading">Module</p>
            <h2 class="moduleName">Patient Contact</h2>
            <p class="info">This is your <b>Lessons Page</b> inside the selected Module. Select a lesson to access the lesson content and start your training.</p>
        </div>
        <div class="lessonInfo">
            <p class="qntLessons">2 Lessons</p>
        </div>
        <div class="progressArea">
            <p class="trackName">In Progress</p>
            <p class="situation">60% Completed</p>
            <div class="progressBar">
                <div class="progress"></div>
            </div>
        </div> 
        <div class="backBtnWraper">
          <router-link :to="'/modules'">
            <button class="button--white">Back</button>
          </router-link>
        </div>
    </div>
      <!-- <leftArea /> -->
      <Lessons />
  </div>
</template>

<script>
import Lessons from "./lessonTiles";

export default {
  components: {
    Lessons
  },
  methods: {
    logout() {
      delete localStorage.token;
      this.$router.push("/");
      console.log("localStorage.token is: ", localStorage.token);
    }
  }
};
</script>

<style lang="scss">
@import "~@/_variables.scss";
@import "~@/_components.scss";

.moduleContainer {
  height: 100vh;
  width: 100vw;
  box-sizing: border-box;
  overflow: hidden;
  display: grid;
  grid-template-columns: repeat(12, 1fr);
}

//Left Area
.moduleLeft {
  background: $primaryColor;
  height: 100vh;
  grid-column: 1 / 7;
  display: grid;
  grid-template-rows: repeat(6, 1fr) 2fr;
  padding: 5rem;
  position: relative;
  .info {
    font-family: $secondaryFont;
    font-size: 1.1em;
    font-weight: 300;
    color: white;
    line-height: 2rem;
  }
  .topHeading {
    font-family: $secondaryFont;
    font-size: 1.1em;
    font-weight: 300;
    color: $lightGrey;
    line-height: 2rem;
    margin-bottom: 0;
  }
  .lessonInfo {
    align-self: end;
    .qntLessons {
      grid-row: 4;
      font-family: $primaryFont;
      font-size: 1.1em;
      font-weight: 300;
      color: white;
    }
  }
  .moduleName {
    font-family: $primaryFont;
    font-size: 3em;
    font-weight: 600;
    color: white;
    margin-top: 0;
  }
  .backBtnWraper {
    grid-row: 7 / 8;
    // margin: 0 auto;
  }
  .logo {
    grid-row: 1;
    p {
      font-family: $primaryFont;
      text-align: left;
      color: #fff;
      font-size: 2em;
      font-weight: 100;
      margin: 0;
    }
  }
  .progressArea {
    grid-row: 5/6;
    align-self: end;
    color: #fff;
    font-family: $secondaryFont;
    margin-top: 2rem;
    font-weight: 300;
    .trackName {
      font-size: 1.1rem;
      float: left;
      margin: 0;
    }
    .situation {
      font-size: 0.8rem;
      float: right;
      margin: 0;
    }
    .progressBar {
      float: left;
      position: relative;
      width: 100%;
      height: 0.65rem;
      margin: 1.5rem 0;
      background: rgba(255, 255, 255, 0.3);
      cursor: pointer;
      border-radius: 20px;
      overflow: hidden;
    }
    .progress {
      background-color: #fff;
      width: 40%;
      height: 100%;
      border-radius: 20px;
    }
  }
  .icons {
    position: absolute;
    right: 0;
    margin-right: 1rem;
    img {
      width: 2rem;
      padding: 0.8rem 0.5rem;
      vertical-align: middle;
      cursor: pointer;
      transition: all 0.1s ease-in-out;
      &:hover {
        transform: scale(1.06);
      }
    }
  }
}
</style>

