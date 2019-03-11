<template>
    <div class="library-wrapper">
        <div class="left">
            <header>
                <h1>Library</h1>
                <div class="icons">
                    <router-link :to="'/home'"><img src="../images/img/home.svg"></router-link>
                </div>
            </header>
            <div class="search">
                <div class="input-wrapper">
                    <i class="fa fa-search"></i>
                    <input type="text" placeholder="Search" v-model="search">
                </div>
            </div>
            <!-- FILTER SEARCH FOR PAGES -->
            <!-- <p v-for="page in filteredList" :key="page.id">{{ page.title }}</p> -->
            <sidebar></sidebar>
            <div class="footer">
                <div class="backBtnWraper">
                    <router-link :to="'/home'"><button class="button--grey">Back</button></router-link>
                </div>
                <div class="brand">
                    <p><b>DENTAL</b> STRATEGY</p>
                </div>
            </div>
        </div>
        <div class="right">
            <main>
                <!-- The main library content will go here -->
                <library />
            </main>
        </div>
    </div>
</template>

<script>
import sidebar from "./Library/Sidebar";
import library from "./Library/index.vue";

import axios from "axios";
import { url } from "../js/app";

export default {
  created() {
    var vm = this;
    axios
      .get("/api/pages", {
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          Accept: "application/json"
        }
      })
      .then(function(res) {
        vm.pages = res.data;
        // console.log(vm.pages);
      })
      .catch(function(error) {
        console.log(error);
      });
  },

  computed: {
    filteredList() {
      return this.pages.filter(post => {
        return post.title.toLowerCase().includes(this.search.toLowerCase());
      });
    }
  },

  data() {
    return {
      search: "",
      pages: [],
      dirTree: {},
      // selected : null,
      treeOptions: {
        propertyNames: {
          text: "node",
          children: "lessons"
        }
      }
    };
  },
  components: {
    sidebar,
    library
  }
};
</script>
<style lang="scss" scoped>
@import "~@/_variables.scss";
@import "~@/_components.scss";
@import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css);

.library-wrapper {
  display: grid;
  grid-template-columns: 300px auto;
  height: 100vh;
  width: 100vw;
  overflow: hidden;
  .left {
    // +border(-right)
    display: grid;
    grid-template-rows: 100px 60px auto 160px;
    height: 100%;
    width: 100%;
    border-right: solid 1px #e6e6e6;
    background: #f8f8f8;
    header {
      grid-row: 1;
      box-sizing: border-box;
      padding: 1em;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: $primaryColor;
      h1 {
        font-size: 2.6em;
        font-family: $primaryFont;
        color: #fff;
      }
      .icons img {
        width: auto;
        height: 1.8em;
        opacity: 0.7;
      }
    }
    .search {
      grid-row: 2;
      box-sizing: border-box;
      padding: 0.75em;
      background: rgba($unselectedText, 0.2);
      height: 100%;
      width: 100%;
      display: flex;
      justify-content: center;
      .input-wrapper {
        border: none;
        height: 100%;
        width: 100%;
        background: #fff;
        display: flex;
        border-radius: 5px;
        justify-content: space-between;
        align-items: center;
        input {
          width: calc(100% - 3em);
          color: rgba(0, 0, 0, 50);
          font-family: $primaryFont;
          padding-left: 2em;
          font-size: 1em;
          border-style: none;
          &::placeholder {
            color: rgba(0, 0, 0, 50);
            font-family: $primaryFont;
            font-size: 1em;
          }
        }
        i {
          padding-left: 0.5em;
          color: rgba(0, 0, 0, 0.5);
          font-size: 1.2em;
        }
      }
    }
  }
}

.sidebar {
  grid-row: 3;
}

.footer {
  grid-row: 4;
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
</style>