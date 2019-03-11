<template>

<div class="sidebar">
  <el-row class="tac">
  <el-col :span="12">
    <el-menu
      :default-openeds="['1']"
      default-active="2"
      class="el-menu-vertical-demo"
      @open="handleOpen"
      @close="handleClose"
      background-color="#fff"
      text-color="#000"
      active-text-color="#008000"
      v-for="lesson in lessons" :key="lesson.id"
      >
      <el-submenu index="1">
        <template slot="title">
          <i class="el-icon-document"></i>
          <span>{{ lessons[0].title }}</span>
        </template>
        <el-menu-item-group v-for="(pages, index) in lessons[0].pages" :key="index">
          <el-menu-item index="1-1">{{ pages.title }}</el-menu-item>
        </el-menu-item-group>
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
  props: ["lessons"],
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
@import url("https://fonts.googleapis.com/css?family=Merriweather:300,400,700");
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
  background-color: #f8f8f8 !important;
  white-space: normal;
  display: flex;
  align-items: center;
  line-height: 20px;
  transition: all 300ms ease-in-out;
  cursor: text;
  span {
    color: $primaryFont;
  }
}

.el-menu-item-group .el-menu-item {
  transition: all 300ms ease-in-out;
  border-bottom: solid 1px #e6e6e6;
  &:after {
    content: "";
    position: absolute;
    height: 100%;
    width: 5px;
    top: 0;
    left: 0;
    transform: translate(-10px, 0);
    background: $primaryColor;
    opacity: 0;
    transition: all 300ms ease-in-out;
  }
}

.el-menu-item-group:hover .el-menu-item {
  background-color: #f2f8f2 !important;
}

.el-menu-item-group .el-menu-item.selected:after,
.el-menu-item-group:hover .el-menu-item:after {
  transform: translate(0px, 0);
  opacity: 1;
}
</style>

<style lang="scss">
// Needs to be not scoped
.el-menu-item-group__title {
  display: none !important;
  padding: 0 !important;
}
.el-submenu__title:hover {
  background-color: #e5f2e5 !important;
}
</style>
