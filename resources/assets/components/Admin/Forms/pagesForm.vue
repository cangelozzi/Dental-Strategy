<template>
  <div class="pagesEdit">
    <el-table
    :data="pages"
    style="width: 100%"
    empty-text="No Pages">
      <el-table-column
        prop="title"
        stripe
        label="Pages"
        width="550"
        height="300">
      </el-table-column>
      <el-table-column label="Tools">
        <template slot-scope="page">
          <el-button disabled size="mini">Edit</el-button>
          <el-button disabled size="mini" type="danger">Delete</el-button>
        </template>
      </el-table-column>
    </el-table>
    <button class="button--green" @click="openPageForm = true">Add Page</button>
    <el-dialog :visible.sync="openPageForm">
      <div class="pagesform">
        <el-form id="editPages" :label-position="labelPosition" :model="newPage">
        <h1>Add Page</h1>
        <el-form-item label="Page Title">
          <el-input 
          type="text" 
          class="moduleTitleInput" 
          placeholder="New Lesson Page Title"
          v-model="newPage.title"></el-input>
          </el-form-item>
          <el-form-item label="Page Content">
            <vue-editor 
            v-model="newPage.content" 
            ref="editor"
            :customModules="customModulesForEditor"
            :editorOptions="editorSettings"/>
          </el-form-item>
          <!-- <button type="submit" class="button--green" @click.prevent="createPage">Submit New Page</button> -->
        </el-form>
      </div>
      <span slot="footer" class="dialog-footer">
        <el-button type="primary" @click.prevent="createPage">Submit New Page</el-button>
        <el-button @click="openPageForm = false">Cancel</el-button>
      </span>
    </el-dialog>
    <el-alert v-if="pageAdded" title="Page has been added" type="success" show-icon></el-alert>
  </div>
</template>

<script>
import utility from "../../../js/utility";
// import { eventBus } from "../../../js/app";
import axios from "axios";
import { url } from "../../../js/app";
import { Dialog } from "element-ui";

import { VueEditor } from "vue2-editor";
import { ImageDrop } from "quill-image-drop-module";
import MagicUrl from "quill-magic-url";

axios.defaults.baseURL = url;

export default {
  components: {
    VueEditor
  },

  created() {
    this.fetchData();
  },

  data() {
    return {
      content: "",
      customModulesForEditor: [
        { alias: "magicUrl", module: MagicUrl },
        { alias: "imageDrop", module: ImageDrop }
      ],
      editorSettings: {
        modules: {
          magicUrl: true,
          imageDrop: true
        }
      },
      openPageForm: false,
      labelPosition: "top",
      modules: [],
      lessons: [],
      pages: [],
      pageAdded: false,
      pageFormStatus: true,

      newPage: {
        title: null,
        content: null,
        order: 0,
        lesson_id: this.$route.params.lessonId
      }
    };
  },

  watch: {
    // call again the method if the route changes
    $route: "fetchData"
  },

  methods: {
    fetchData() {
      var vm = this;
      axios
        .get(`/api/lessons/${this.newPage.lesson_id}/pages`)
        .then(function(res) {
          vm.pages = res.data;
          vm.newPage.order = res.data[res.data.length - 1].order;
        })
        .catch(function(error) {
          console.log(error.response);
        });
    },

    createPage() {
      var vm = this;
      console.log("click works.");
      axios
        .post(`/api/lessons/${this.newPage.lesson_id}/pages`, {
          title: this.newPage.title,
          // content: this.newPage.content.replace(/<[^>]+>/g, ""),
          content: this.newPage.content,
          order: this.newPage.order + 1,
          lesson_id: this.newPage.lesson_id
        })
        .then(function(res) {
          console.log(res);
          vm.pages.push(res.data);
          vm.newPage.title = "";
          vm.newPage.content = "";
          vm.newPage.order += 1;
          vm.pageAdded = true;
          vm.openPageForm = false;
        })
        .catch(function(error) {
          console.log(error.response);
        });
    }
  }
};
</script>

<style lang="scss" scoped>
@import "~@/_variables.scss";
@import "~@/_components.scss";

#editPages {
  margin-top: 50px;
  h1 {
    font-family: $primaryFont;
    margin-bottom: 30px;
  }
  .el-input,
  .el-textarea {
    width: 100%;
  }
}

.pagesform {
  margin-bottom: 2rem;
}

.el-alert {
  font-family: $secondaryFont;
}
.pagesEdit {
  margin-top: 3rem;
  h2 {
    font-family: $primaryFont;
  }
  ul {
    grid-row: 1;
    list-style: none;
    padding-top: 2rem;
    li {
      padding-left: 2rem;
      position: relative;
      // cursor: pointer;
      a {
        font-family: $primaryFont;
        font-size: 1.3em;
        text-align: left;
        color: $darkGrey;
        line-height: 3em;
        padding-left: 3rem;
      }
      img {
        width: 1.5rem;
        position: absolute;
        top: 1rem;
      }
      &:hover {
        background-color: $lightGrey;
      }
    }
  }
}

.button--green {
  margin-bottom: 1.5rem;
}

.el-table {
  margin-bottom: 2rem;
  color: #3c3c3c;
  font-family: $primaryFont;
}
</style>

<style lang="scss">
.el-dialog {
  width: 70%;
  margin-top: 10vh !important;
  .el-dialog__header {
    display: none;
  }
  #editPages {
    margin-top: 0;
  }
}

.el-table thead {
  color: #3c3c3c !important;
}

button.el-button.el-button--danger.el-button--mini:hover {
  background: #f78989 !important;
  border-color: #f78989 !important;
  color: #fff !important;
}

.el-button--primary:hover {
  color: #008000 !important;
  background-color: #ffffff !important;
}
</style>
