<template>

<div class="sidebar">
  <el-row class="tac">
  <el-col :span="12">
    <el-menu
      default-active="2"
      class="el-menu-vertical-demo"
      @open="handleOpen"
      @close="handleClose"
      background-color="#fff"
      text-color="#000"
      active-text-color="#008000"
      v-for="module in modules" :key="module.id"
      >
      <el-submenu index="1">
        <template slot="title">
          <i class="el-icon-document"></i>
          <span>{{ module.title }}</span>
        </template>
        <el-menu-item-group v-for="lesson in module.lessons" :key="lesson.id">
          <el-menu-item index="1-1">{{ lesson.title }}</el-menu-item>
          <!-- <el-menu-item index="1-2">item one</el-menu-item> -->
        </el-menu-item-group>

        <!-- <el-menu-item-group title="Group Two">
          <el-menu-item index="1-3">item three</el-menu-item>
        </el-menu-item-group>
        <el-submenu index="1-4">
          <template slot="title">item four</template>
          <el-menu-item index="1-4-1">item one</el-menu-item>
        </el-submenu> -->
      </el-submenu>
    </el-menu>
  </el-col>
</el-row>
</div>

</template>



<script>
// import axios from 'axios'
import utility from "../../../js/utility";
import { eventBus } from "../../../js/app";

export default {
  created() {
    utility.modulesApiCall();

    eventBus.$on("modulesApi", modules => {
      this.modules = modules;
    });
  },

  data() {
    return {
      modules: "init",
      moduleId: this.$route.params.moduleId
    };
  },

  methods: {
    // Elements UI methods ------
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    }
    // END Elements UI methods ------
  }
};
</script>


<style scoped lang="scss">
@import url('https://fonts.googleapis.com/css?family=Merriweather:300,400,700');
@import "~@/_variables.scss";
// @import url("//unpkg.com/element-ui@2.4.1/lib/theme-chalk/index.css");

.sidebar {
  position: relative;
  background: #fff;
  .el-row {
      overflow: auto;
      position: absolute;
      width: 100%;
      height: 100%;
  }
  .el-col-12 {
    width: 100%;
  }
  .el-menu {
    border-right: 0;
    border-bottom: solid 1px #e6e6e6;
    i {
      color: $primaryColor;
    }
    .el-submenu__title:hover {
      background-color: #f2f2f2 !important;
    }
    .el-submenu__title span {
      font-family: $primaryFont;
    }
  }
}

.el-menu-item {
  font-family: $primaryFont;
  background-color: #f2f2f2 !important;
  span {
    color: $primaryFont;
  }
}

</style>

<style lang="scss">
// Needs to be not scoped
  .el-menu-item-group__title {
    display: none !important;
    padding: 0 !important;
  }
</style>
