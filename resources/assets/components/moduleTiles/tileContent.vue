<template>
    <div class="module">
      <h2 class="moduleTitle">{{ module.title }}</h2>
      <p class='lessonsQTY'>{{ module.lessons.length }} Lessons</p>
    </div>
</template>

<script>
export default {
  name: "module-list",
  props: ["module"]
};
</script>


<style scoped lang="scss">
@import "~@/_variables.scss";

//Module Tiles
.moduleTile {
  .module {
    display: flex;
    flex-direction: column;
    height: 120px;
    justify-content: space-between;
    h2 {
      font-family: $primaryFont;
      font-size: 1.8rem;
      position: relative;
      z-index: 1;
      align-self: start;
      padding-top: 1rem;
      margin: 0;
      &::before {
        content: "";
        position: absolute;
        left: 0;
        top: 0;
        height: 1px;
        width: 40px;
        border-bottom: 4px solid $primaryColor;
      }
    }
    .lessonsQTY {
      grid-row: 2/3;
      font-family: $primaryFont;
      font-size: 1rem;
      align-self: start;
      margin: 0;
    }
  }
}
</style>