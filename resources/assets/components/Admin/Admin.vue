<template>
    <div class="admin-wrapper">
        <div class="left">
            <header>
                <h1>Admin</h1>
                <div class="icons">
                    <router-link :to="'/home'"><img src="../../images/img/home.svg"></router-link>
                </div>
            </header>
        
<!--   Sidebar       -->
        <div class="buttonArea"><button @click="moduleFormIsOn" class="addButton">Add Module<i class="fa fa-plus"></i></button></div>
        <div class="sidebar custom-tree-container">
            <el-tree
            :data="modules"
            node-key="id"
            empty-text="No Data"
            :props="defaultProps"
            @node-click="handleNodeClick"
            :expand-on-click-node="false">
                <span class="custom-tree-node" slot-scope="{ node, modules }">
                <div class="lessonList">
                    <p>{{ node.label }}</p>
                  <!-- DELETE LESSON BUTTON -->
                <span>
                <router-link :to="{name: 'pagesform', params: { lessonId: node.data.id }}" @click.native="formsOff">
                    <el-popover
                    placement="top-start"
                    width="30"
                    trigger="hover"
                    content="Edit Pages">
                        <img v-on:click="pageFormStatus = true" slot="reference" src="../../images/pages.svg" width="24" height="24" class="viewPages">
                    </el-popover>
                </router-link>
                <el-popover
                placement="top-start"
                width="30"
                trigger="hover"
                content="Delete Lesson">
                    <el-button
                        class="lessonButton"
                        type="text"
                        size="mini"
                        style="color: red;"
                        slot="reference"
                        @click="() => deleteLesson(node)">
                        <img src="../../images/delete.svg" width="24" height="24">
                    </el-button>
                </el-popover>
                </span>
                <!-- end DELETE LESSON BUTTON -->
                </div>
                <span>
                <el-popover
                placement="top-start"
                width="30"
                trigger="hover"
                content="Create Lesson">
                    <el-button
                        class="moduleButton"
                        type="text"
                        size="mini"
                        slot="reference"
                        @click="() => createLesson(node)">
                        <img src="../../images/add.svg" width="24" height="24">
                        </el-button>
                </el-popover>
                <el-popover
                placement="top-start"
                width="30"
                trigger="hover"
                content="Delete Module">
                    <el-button
                        class="moduleButton"
                        type="text"
                        size="mini"
                        style="color: red;"
                        slot="reference"
                        @click="() => remove(node)">
                        <img src="../../images/deletemodule.svg" width="24" height="24">
                    </el-button>
                </el-popover>
                </span>
            </span>
            </el-tree>
        </div>
        <!--   End Sidebar       -->
        <!-- Footer -->
        <div class="footer">
            <div class="backBtnWraper">
                <router-link :to="'/home'">
                    <button class="button--grey">Back</button>
                </router-link>
            </div>
            <div class="brand">
                <p><b>DENTAL</b> STRATEGY</p>
            </div>
        </div>
        <!-- End Footer -->
        </div>
        <!-- End Left Area -->  

        <!-- Right Area -->
        <div class="right">
            <div class="adminContent">
                <div class="header"><h3>Admin Panel</h3></div>
                <div class="contentArea">
                    <router-view v-if="pageFormStatus" :key="$route.fullPath"></router-view>
                    <!-- Area to MODULE Include Forms -->
                    <el-form :label-position="labelPosition" id="addModule" v-if="moduleFormStatus" :model="form" ref="form" method="post" :rules="rules">
                    <h1>Add Module</h1>
                    <el-form-item label="Module Title" prop="title">
                    <el-input type="text" class="moduleTitleInput" placeholder="Module Title" v-model="form.title" auto-complete="off" autofocus></el-input>
                    </el-form-item>
                    <el-form-item label="Module Description" prop="description">
                      <el-input
                      type="textarea"
                      :rows="3"
                      placeholder="Module Description"
                      v-model="form.description"
                      class="moduleDescriptionInput">
                      </el-input>
                    </el-form-item>

                
                    <button @click.prevent="create" type="submit" class="button--green">Submit New Module</button>
                    <el-alert v-if="moduleAdded" title="Module has been added" type="success" show-icon></el-alert>
                    </el-form>

                    <!-- Area to LESSON Include Forms -->
                    <el-form :label-position="labelPosition" id="addLesson" v-if="moduleLessonStatus" :model="lesson" method="post" :rules="rules">
                    <h1>Add Lesson</h1>
                    <el-form-item label="Lesson Title" prop="title">
                    <el-input class="moduleTitleInput" placeholder="Lesson Title" v-model="lesson.title"></el-input>
                    </el-form-item>
                    <el-form-item label="Lesson Description" prop="description">
                    <el-input
                    type="textarea"
                    :rows="3"
                    placeholder="Lesson Description"
                    v-model="lesson.description"
                    class="moduleDescriptionInput">
                    </el-input>

                    </el-form-item>
                
                    <button @click.prevent="addLesson" type="submit" class="button--green">Submit New Lesson</button>
                    <el-alert v-if="lessonAdded" title="Lesson has been added." type="success" show-icon></el-alert>

                    </el-form>

                </div>
            </div>
        </div>
        <!-- End Right Area -->
    </div>
</template>


<script>
import pagesForm from "./Forms/pagesForm.vue";
import utility from "../../js/utility";
import { eventBus } from "../../js/app";
import axios from "axios";
import { url } from "../../js/app";

axios.defaults.baseURL = url;

let id = 1000;

export default {
  created() {
    utility.modulesApiCall();

    eventBus.$on("modulesApi", modules => {
      this.modules = modules;
    });
  },

  data() {
    return {
      labelPosition: "top",
      modules: [],
      //lessons: module.lessons,
      lessons: [],
      moduleId: this.$route.params.moduleId,
      lesssonId: null,

      defaultProps: {
        children: "lessons",
        label: "title"
      },

      moduleAdded: false,
      lessonAdded: false,
      moduleFormStatus: false,
      moduleLessonStatus: false,
      deleteLessonButton: false,
      pageFormStatus: false,

      form: {
        title: null,
        description: null,
        quiz_id: 6
      },

      lesson: {
        title: null,
        description: null,
        quiz_id: 9,
        module_id: null
      },

      rules: {
        title: [
          { required: true, message: "Please add the Title", trigger: "blur" }
        ],
        description: [
          {
            required: true,
            message: "Please add the Description",
            trigger: "blur"
          }
        ]
      }
    };
  },

  methods: {
    handleNodeClick(modules) {
      // console.log(modules);
    },
    append(node) {
      //
    },

    remove(node) {
      this.$confirm(
        "This will permanently delete this module and lessons. Continue?",
        "Warning",
        {
          confirmButtonText: "OK",
          cancelButtonText: "Cancel",
          type: "warning"
        }
      )
        .then(res => {
          this.$message({
            type: "success",
            message: "Delete completed"
          });

          axios.delete(`/api/modules/${node.data.id}`);

          utility.modulesApiCall();

          eventBus.$on("modulesApi", modules => {
            this.modules = modules;
          });

          this.$router.push("/admin");
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "Delete canceled"
          });
          console.log(error.response.data);
        });
    },

    renderContent(h, { node, modules, store }) {
      console.log("Test");
    },

    moduleFormIsOn() {
      this.moduleLessonStatus = false;
      this.moduleFormStatus = true;
      this.pageFormStatus = false;
    },

    create() {
      var vm = this;
      axios
        .post("/api/modules", this.form)
        .then(function(res) {
          // console.log(res);
          vm.modules.push(res.data);
          vm.form.title = "";
          vm.form.description = "";
          vm.moduleAdded = true;
          utility.modulesApiCall();
        })
        .catch(function(error) {
          console.log(error.response);
        });
    },

    formsOff() {
      this.moduleFormStatus = false;
      this.moduleLessonStatus = false;
    },

    createLesson(node) {
      this.moduleFormStatus = false;
      this.moduleLessonStatus = true;
      this.pageFormStatus = false;
      this.lesssonId = node.data.id;
      this.lesson.module_id = this.lesssonId;
      this.lessons = node.data.lessons;
      console.log(node);
    },

    addLesson(node) {
      console.log(this.lessons);
      var vm = this;
      axios
        .post(`/api/modules/${this.lesssonId}/lessons`, this.lesson)
        .then(res => {
          //console.log(res);
          vm.lessons.push(res.data);
          vm.lesson.title = "";
          vm.lesson.description = "";
          vm.lessonAdded = true;
        })
        .catch(function(error) {
          console.log(error.response);
        });
    },

    deleteLesson(node) {
      this.$confirm(
        "This will permanently delete this lesson. Continue?",
        "Warning",
        {
          confirmButtonText: "OK",
          cancelButtonText: "Cancel",
          type: "warning"
        }
      )
        .then(res => {
          this.$message({
            type: "success",
            message: "Delete completed"
          });

          axios.delete(
            `/api/modules/${node.data.module_id}/lessons/${node.data.id}`
          );

          utility.modulesApiCall();

          eventBus.$on("modulesApi", modules => {
            this.modules = modules;
          });

          this.$router.push("/admin");
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "Delete canceled"
          });
          console.log(error.response.data);
        });
    }
  }
};
</script>
<style lang="scss" scoped>
@import "~@/_variables.scss";
@import "~@/_components.scss";
@import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css);
// @import url("//unpkg.com/element-ui@2.4.1/lib/theme-chalk/index.css");

.admin-wrapper {
  display: grid;
  grid-template-columns: 350px auto;
  height: 100vh;
  width: 100vw;
  overflow: hidden;
  .left {
    display: grid;
    grid-template-rows: 100px 60px auto 160px;
    height: 100%;
    width: 100%;
    border-right: solid 1px #e6e6e6;
    background: #f8f8f8;
    header {
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
  }
}

.adminContent {
  display: grid;
  grid-template-rows: 100px auto;
  grid-template-columns: 1fr 8fr 1fr;
  height: 100vh;
  p {
    font-family: $secondaryFont;
    font-size: 1.8em;
  }
  .header {
    grid-row: 1;
    grid-column: 1/4;
    background-color: #f5f5f5;
    display: grid;
    grid-template-columns: 1fr 8fr 1fr;
    h3 {
      grid-column: 2;
      font-family: $primaryFont;
      font-size: 3em;
      line-height: 1em;
      margin: 0;
      align-self: center;
    }
  }
  .contentArea {
    grid-column: 2;
    overflow: auto;
  }
}

#addModule,
#addLesson {
  margin-top: 50px;
  h1 {
    font-family: $primaryFont;
    margin-bottom: 30px;
  }
  .el-input,
  .el-textarea {
    width: 80%;
  }
}

.sidebar {
  position: relative;
  .el-tree {
    overflow: auto;
    position: absolute;
    width: 100%;
    height: 100%;
    background: #fff;
    .lessonList {
      -webkit-box-flex: 1;
      -ms-flex: 1;
      flex: 1;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      -webkit-box-pack: justify;
      -ms-flex-pack: justify;
      justify-content: space-between;
      font-size: 14px;
    }
  }
}

.custom-tree-node {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: space-between;
  font-size: 14px;
  padding-right: 8px;
  font-family: $primaryFont;
  cursor: text;
}

.buttonArea {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #fff;
  border-bottom: solid 1px #e6e6e6;
}
.addButton {
  backface-visibility: hidden;
  position: relative;
  cursor: pointer;
  display: inline-block;
  white-space: nowrap;
  background: #e8e8e8;
  border-radius: 500px;
  border: 0px solid #444;
  border-width: 0px 0px 0px 0px;
  padding: 10px 25px 11px 50px;
  color: #3c3c3c;
  font-size: 16px;
  font-family: $primaryFont;
  font-weight: 900;
  font-style: normal;
  transition: all 0.2s ease;
  z-index: 3;
  i {
    color: #ffffff;
    font-size: 1em;
    background: #008000;
    border-radius: 500px;
    border: 0px solid transparent;
    border-width: 0px 0px 0px 0px;
    // padding: 8px 10px 8px 10px;
    padding: 12px 14px 12px 14px;
    // margin: 4px 5px 5px 5px;
    margin: 0;
    position: absolute;
    top: 0px;
    left: 0px;
  }
  &:before {
    content: "";
    -webkit-transition: all 0.5s ease;
    transition: all 0.6s ease;
    background-color: #008000;
    z-index: -1;
    width: 0;
    height: 100%;
    position: absolute;
    top: 50%;
    left: 12%;
    -webkit-border-radius: 0px 50px 50px 0px;
    border-radius: 0px 50px 50px 0px;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-0%, -50%);
  }
  &:hover {
    // background: #008000;
    color: #fff;
    &:before {
      width: 88%;
    }
  }
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

.el-alert {
  margin-top: 1.5rem;
  font-family: $secondaryFont;
}

.button--green {
  margin-top: 1rem;
}
</style>

<style lang="scss">
@import "~@/_variables.scss";

/* Needs to be not scoped */
.el-popover--plain {
  font-family: $secondaryFont;
  padding: 16px 20px !important;
  line-height: 0;
  min-width: 95px;
  font-size: 12px;
  text-align: center;
}
.el-tree-node__content {
  height: 40px;
  border-bottom: solid 1px #e6e6e6;
  background: #fff;
}

.el-input__inner {
  font-family: $secondaryFont;
}

.el-textarea__inner {
  height: 80px;
  font-family: $secondaryFont;
}

.el-form-item__label {
  font-family: $secondaryFont;
}

.moduleButton {
  display: inline !important;
}
.el-tree-node__children .moduleButton {
  display: none !important;
}

.el-tree-node__content .lessonButton,
.el-tree-node__content .viewPages {
  display: none;
}

.el-tree-node__children .lessonButton,
.el-tree-node__children .viewPages {
  display: inline !important;
  margin-left: 10px;
}

.el-tree-node__children {
  .el-tree-node__expand-icon.is-leaf {
    display: none;
  }
  .custom-tree-node {
    // padding-right: 30px;
  }
  .lessonList {
    flex: none !important;
    p {
      order: 2;
      margin-left: 1rem;
    }
  }
}

.el-message-box__header,
.el-message--success,
.el-message--info {
  font-family: $secondaryFont;
}

.el-message-box__content {
  font-family: $primaryFont;
}

.el-button:hover {
  color: #008000;
  border-color: #abdcab;
  background-color: #f2f8f2;
}
.el-button--primary {
  background-color: #008000 !important;
  border-color: #008000 !important;
}
</style>