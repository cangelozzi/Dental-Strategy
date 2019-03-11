<template>
    <div class="moduleContainer">
        <div class="moduleLeft">
            <div class="logo">
                <p><b>DENTAL</b> STRATEGY</p>
            </div>
            <div class="mainArea">
                <h2 class="userName">WELCOME</h2>
                <p class="info">Welcome to the Dental Strategy Learning System. Our goal is to provide with the tools to help you learn the skills you need to achieve full potential.</p>
            </div>
            <div class="copyright">
                <p>© Copyright. Dental Strategy Inc. 2018. All Rights Reserved. Reproduction and redistribution of training content or materials without the written permission of Dental Strategy is prohibited.</p>
            </div>
        </div>
        <div class="loginArea">
            <div class="loginTile">
                <h2 class="loginTitle">SIGN IN</h2>
                <form class="login-form" @submit.prevent="login">
                    <label>Email</label>
                    <input v-model="email" type="email" placeholder="email@example.com"/>
                    <label>Password</label>
                    <input v-model="pass" type="password" placeholder="Password"/>
                    <!-- <router-link :to="'/Home'"> -->
                        <div class="loginButton">
                            <button class="button--green" type="submit">login</button>
                         </div> 
                         <p v-if="error" class="error">Bad login information</p>
                    <!-- </router-link> -->
                </form>
            </div>
        </div>
    </div>
</template>

<script>
// authentication logic in auth.js
import auth from "../js/auth";

export default {
  data() {
    return {
      email: "email@example.com",
      pass: "Password",
      error: false
    };
  },
  methods: {
    login() {
      auth.login(this.email, this.pass, loggedIn => {
        if (!loggedIn) {
          this.error = true;
        } else {
          this.$router.replace(this.$route.query.redirect || "/home");
          console.log("localStorage.token is: ", localStorage.token);
        }
      });
    }
  }
};
</script>

<style scoped lang="scss">
@import "~@/_variables.scss";
@import "~@/_components.scss";

.moduleContainer {
  height: 100vh;
  width: 100vw;
  box-sizing: border-box;
  overflow: hidden;
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  background: $lightGrey;
}

//left side
.moduleLeft {
  background: $primaryColor;
  grid-column: 1 / 7;
  display: grid;
  grid-template-rows: 25% 50% 25%;
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
    margin-top: 0;
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
  .copyright {
    grid-row: 3;
    align-self: end;
    p {
      font-family: $primaryFont;
      text-align: left;
      color: #fff;
      font-size: 0.8em;
      font-weight: 100;
      margin: 0;
    }
  }
}

.component-wrapper {
  height: 100%;
  display: grid;
  grid-template-columns: 1fr 3fr;
}

.left {
  grid-column: 1 / 2;
}

.right {
  grid-column: 2 / 3;
}

//Login Area
.loginArea {
  grid-column: 7 / 13;
  padding: 8em 2.5em;
  background: $lightGrey;
  overflow: scroll;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  align-items: center;
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
.loginTile {
  flex: initial;
  max-width: 20vw;
  margin: 1rem;
  background-color: #fff;
  border-color: #cccccc;
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.25);
  padding: 3rem;
  border-bottom: 4px solid $primaryColor;
  h2 {
    font-family: $primaryFont;
    font-size: 1.8em;
    text-transform: uppercase;
    padding-bottom: 0.5rem;
    text-align: center;
    letter-spacing: 0.1rem;
    font-weight: 300;
    color: #3c3c3c;
  }
  .login-form {
    font-family: $primaryFont;
    padding: 1rem;
    label {
      text-transform: uppercase;
      letter-spacing: 0.3rem;
      color: #3c3c3c;
    }
    input {
      font-family: $primaryFont;
      color: #3c3c3c;
      margin: 1rem 0 2rem 0;
      width: 100%;
      box-sizing: border-box;
      font-size: 1rem;
      padding: 0.5rem 0;
      border: 0;
      border-bottom: 1px solid #000;
    }
    .loginButton {
      display: flex;
      justify-content: center;
      margin-top: 2rem;
    }
  }
}
</style>

