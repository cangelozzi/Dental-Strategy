<template>
  <div class="moduleContainer">
    <div class="moduleLeft">
      <div class="icons">
            <img @click="logout" src="../images/back.svg">
            <img src="../images/img/settings.svg">
        </div>
      <div class="logo">
        <p><b>DENTAL</b> STRATEGY</p>
      </div>
      <div class="mainArea">
          <h2 class="userName">Hi, Vincent</h2>
          <p class="info">Chose between the <b>Library</b> or the <b>Training</b> View to access all the greatest and latest learning content from Dental Strategy.</p>
      </div>
      <div class="infoArea">
        <h3>Library</h3>
        <p>Access the searchable library of all modules and lessons.</p>
        <h3>Learning</h3>
        <p>Continue your training from the assigned modules of your track..</p>
      </div>
    </div>
    <div class="moduleRight select">
    <div class="selectTiles libraryTile">
      <router-link :to="'/library'">
        <div class="select library">
          <img src="../images/img/library.svg">
          <h2 class="title">Library</h2>
        </div>
      </router-link>
      </div>
      <div class="selectTiles trainingTile">
        <router-link :to="'/modules'">
          <div class="select training">
            <img src="../images/img/training.svg">
            <h2 class="title">Training</h2>
          </div>
        </router-link>
    </div>
      <div class="selectTiles adminTile">
        <router-link :to="'/admin'">
          <div class="select admin">
            <img src="../images/img/admin.svg">
            <h2 class="title">Admin</h2>
          </div>
        </router-link>
    </div>
</div>
    <!-- The main page for module content. Split into 2 parts, left is the side bar, right is the actual content -->
  </div> 
</template>

<script>
export default {
  methods: {
    logout() {
      delete localStorage.token;
      this.$router.push("/");
      console.log("localStorage.token is: ", localStorage.token);
    }
  }
};
</script>

<style scoped lang="scss">
@import "~@/_variables.scss";

.moduleContainer {
  height: 100vh;
  width: 100vw;
  box-sizing: border-box;
  overflow: hidden;
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  background: $lightGrey;
}

//Left side
.moduleLeft {
  background: $primaryColor;
  height: 100vh;
  grid-column: 1 / 7;
  display: grid;
  grid-template-rows: 6vh 1fr 2fr;
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
  .infoArea {
    color: #fff;
    font-family: $primaryFont;
    font-size: 1em;
    align-self: center;
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

//Right side
.moduleRight.select {
  grid-column: 7 / 13;
  padding-top: 30%;
  background: $lightGrey;
  max-height: 100vh;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-gap: 30px;
  grid-template-rows: 224px 80px;
  .selectTiles {
    background-color: #fff;
    border-color: #cccccc;
    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.25);
    padding: 1rem;
    transition: all 0.1s ease-in-out;
    display: inline-block;
    margin: 0;
    height: 12rem;
    width: 12rem;
    vertical-align: middle;
    cursor: pointer;
    &:hover {
      transform: scale(1.01);
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.25);
    }
    .select {
      margin: 0 auto;
      padding: 2rem;
      text-align: center;
      img {
        width: 50%;
      }
      h2 {
        font-family: $primaryFont;
        font-size: 2rem;
        position: relative;
        z-index: 1;
        align-self: start;
        padding-top: 1rem;
        margin: 0;
      }
    }
  }
  .libraryTile {
    grid-column: 1;
    grid-row: 1;
    .select {
      padding-top: 2.5rem;
    }
  }
  .trainingTile {
    grid-column: 2;
    grid-row: 1;
  }
  .adminTile {
    grid-column: 1/3;
    grid-row: 2;
    width: auto;
    height: 3rem;
    display: flex;
    align-items: center;
    a {
      width: 100%;
    }
    .select {
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      img {
        width: 40px;
      }
      h2 {
        display: inline-block;
        padding-top: 0;
        align-self: center;
        padding-left: 1rem;
      }
    }
  }
}
</style>

