import Vue from "vue";
import VueRouter from "vue-router";
import Home from '../components/Home.vue';
import Modules from '../components/Modules.vue';
import Lessons from "../components/Lessons.vue";
import Library from "../components/Library.vue";
import LibraryLessons from "../components/Library/library_lessons";
import pagesForm from "../components/Admin/Forms/pagesForm.vue";
import LessonPage from "../components/Pages";
import PageContent from "../components/Pages/PageContent";
import Login from "../components/login.vue";
import Admin from "../components/Admin/Admin.vue";
import auth from './auth';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    component: Login
  },
  {
    path: '/home',
    component: Home,
    beforeEnter: requireAuth
  },
  {
    path: '/modules',
    component: Modules
  },
  {
    path: '/modules/:moduleId/lessons',
    component: Lessons
  },
  {
    path: '/lessons',
    component: Lessons,
  },
  {
    path: '/lesson/:moduleId',
    component: LibraryLessons,
  },
  {
    path: '/library',
    component: Library,
    // children: [
    //   {
    //     path: 'lesson/:moduleId',
    //     name: 'libraryLesson',
    //     component: LibraryLessons
    //   }
    // ]
  },
  {
    path: '/admin',
    component: Admin,
    children: [
      {
        path: 'pagesform/:lessonId',
        name: 'pagesform',
        component: pagesForm
      }
    ]
  },
  {
    path: `/lessons/page`,
    component: LessonPage,
    children: [
      {
        path: ':lessonId',
        name: 'pages',
        component: PageContent
      }
    ]
  },
];

export default new VueRouter({ mode: "history", routes });

// function to create a simple login authrization with localstorage

function requireAuth(to, from, next) {
  if (!auth.loggedIn()) {
    next({
      path: '/',
      query: { redirect: to.fullPath }
    });
  } else {
    next();
  }
}

