
import axios from 'axios';
import { eventBus } from "../js/app";
import { url } from "../js/app";

axios.defaults.baseURL = url;

let lessonId;


export default {
  
  
  //! ========== MODULES API CALL WITH AXIOS ==================
  modulesApiCall() {
    var vm = this;
    axios
    .get("/api/modules", {
      headers: {
        'Content-Type' : 'application/x-www-form-urlencoded',
        'Accept': 'application/json'
      }
    })
    .then(function (res) {
      vm.modules = res.data;
      eventBus.$emit('modulesApi', res.data);
      //console.log(res.data);
    })
    .catch(function (error) {
      console.log(error);
    });
  },
  //! ========== END of MODULES API CALL WITH AXIOS ============
  
  //! ========== LESSONS API CALL WITH AXIOS ==================
  
  // lessonsApiCall() {
  //   var vm = this;
  //   eventBus.$on('lessonID', id => { lessonId = id; console.log('test') });
  //   axios
  //     .get(`/api/lessons/${lessonId}`, {
  //       headers: {
  //         'Content-Type': 'application/x-www-form-urlencoded',
  //         'Accept': 'application/json'
  //       }
  //     })
  //     .then(function (res) {
  //       vm.lessons = res.data;
  //       eventBus.$emit('lessonsApi', res.data);
  //       console.log(res.data);
  //     })
  //     .catch(function (error) {
  //       console.log(error);
  //     });
  // }
    //! ========== END of MODULES API CALL WITH AXIOS ============

};


