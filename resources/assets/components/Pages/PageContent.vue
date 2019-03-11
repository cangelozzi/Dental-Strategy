<template>
  <div class="lesson-inner">
      <div class="lessonContent">
    <!-- <li class="contentLessonItem" v-for="(pages, index) in lessons[0].pages" :key="index"> -->
      <div class="content">
        <h2>{{  pages[currentPage].title }}</h2>  
        <div class="pageContent" v-html="pages[currentPage].content"></div>
      </div>     

      <el-pagination
        layout="prev, pager, next"
        :page-size = "1"
        :total="pagesLength"
        @current-change="handleCurrentChange">
      </el-pagination>
    </div>            
  </div>
</template>

<script>
import axios from "axios";
import { url } from "../../js/app";
import { eventBus } from "../../js/app";

export default {
  data() {
    return {
      lessons: "init",
      lessonId: this.$route.params.lessonId,
      pages: "init",
      pagesLength: 0,
      currentPage: 0
    };
  },

  methods: {
    handleCurrentChange(val) {
      this.currentPage = val - 1;
    }
  },

  created() {
    var vm = this;
    axios
      .get(`/api/lessons/${this.lessonId}`, {
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          Accept: "application/json"
        }
      })
      .then(function(res) {
        vm.lessons = res.data;
        vm.pages = res.data[0].pages;
        vm.pagesLength = vm.pages.length;
        eventBus.$emit("lessonsApi", res.data);
        console.log(vm.pages.length);
      })
      .catch(function(error) {
        console.log(error);
      });
  }
};
</script>

<style lang="scss" scoped>
@import "~@/_variables.scss";

.lessonContent {
  width: 100%;
  display: grid;
  grid-template-rows: 70vh auto;
  .content {
    grid-row: 1;
    padding: 0;
    overflow: auto;
  }
  .el-pagination {
    grid-row: 2;
    justify-self: center;
    font-family: $primaryFont;
    font-weight: 400;
    display: flex;
    align-items: baseline;
    margin-top: 1.5rem;
  }
}
</style>
<style lang="scss">
@import "~@/_variables.scss";

.lesson-wrapper .lesson-inner .lessonContent .content .pageContent,
.lesson-wrapper .lesson-inner .lessonContent .content {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    font-family: $primaryFont !important;
  }

  p, li {
    font-family: $secondaryFont !important;
    line-height: 2rem !important;
  }

  .ql-align-center {
    text-align: center !important,
  }

  .ql-align-right {
    text-align: right !important,
  }

  blockquote {
    position: relative;
    padding: 1rem;
    border-left: 0.2em solid $primaryColor;
    background-color: #f9f9f9;
    font-size: 2.4em;
    line-height: 1.5em;
    font-weight: 100;
    font-family: $secondaryFont;
    font-size: 1rem;
    font-style: italic;
    &:before, &:after {
      content: '\201C';
      font-family: 'Sanchez';
    }
    &:after {
      content: '\201D';
    }
  }

.ql-indent-1 {
  padding-left: 1rem;
}

.ql-indent-2 {
  padding-left: 2rem;
}

.ql-indent-3 {
  padding-left: 3rem;
}

.ql-indent-4 {
  padding-left: 4rem;
}

.ql-indent-5 {
  padding-left: 4rem;
}

.ql-indent-6 {
  padding-left: 4rem;
}

.ql-indent-7 {
  padding-left: 4rem;
}

.ql-indent-8 {
  padding-left: 4rem;
}

img {
  width: 100%;
  max-width: 80%,
}

}

.el-pagination {
  button:hover {
    color: #008000;
  }
  .el-pager {
    .number {
      font-size: 1rem;
      color: #cccccc;
      min-height: 35.5px;
    }
    .number.active {
      color: #ffffff;
      background: #008000;
      border-radius: 100%;
    }
    li {
      vertical-align: baseline;
      padding: 4px;
      &:hover {
        color: #008000;
      }
    }
  }
}
</style>