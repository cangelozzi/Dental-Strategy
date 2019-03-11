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
            <h2 class="userName">Hi, Vincent</h2>
            <p class="info">This is your Modules Page, here you can access all the assigned modules from your track below. Select one module to access the lessons whitin it.</p>
        </div>
        <div class="progressArea">
            <p class="trackName">Patient Care Specialist - Level I</p>
            <p class="situation">60% Completed</p>
            <div class="progressBar"><div class="progress"></div>
            </div>
        </div> 
        <div class="backBtnWraper">
          <router-link :to="'/home'">
            <button class="button-white">Back</button>
          </router-link>
        </div>
    </div>
      <!-- <leftArea /> -->
      <Tiles />
  </div>
</template>

<script>

import Tiles from "./moduleTiles/";

export default {
  methods: {
    logout() {
      delete localStorage.token;
      this.$router.push("/");
      console.log("localStorage.token is: ", localStorage.token);
    }
  },

  components: {
    Tiles
  }
};
</script>

<style lang="scss">
@import "~@/_variables.scss";

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
  .userName {
    font-family: $primaryFont;
    font-size: 3em;
    font-weight: 600;
    color: white;
  }
  .backBtnWraper {
    grid-row: 7 / 8;
    button {
      font-family: $primaryFont;
      font-size: 1em;
      background: none;
      padding: 1em 2.625em;
      text-transform: uppercase;
      color: #fff;
      border: 1px solid #fff;
      cursor: pointer;
      transition: all 0.1s ease-in-out;
      &:hover {
        background: #fff;
        color: $primaryColor;
      }
    }
  }
  .logo {
    grid-row: 1 / 1;
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

