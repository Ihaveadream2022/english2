<template>
    <div class="container">test</div>
</template>
<script setup>
    import { useRoute } from "vue-router";
    const route = useRoute();
    console.log(route.fullPath);
    console.log(route.path);
    console.log(route.params.id);
    console.log(route.query);
</script>
