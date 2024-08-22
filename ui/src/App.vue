<template>
    <div id="app">
        <router-view v-if="show"></router-view>
    </div>
</template>
<script>
    export default {
        name: "app",
        provide() {
            return {
                reload: this.reload,
            };
        },
        data() {
            return {
                show: true,
            };
        },
        methods: {
            reload() {
                this.show = false;
                this.$nextTick(() => (this.show = true));
            },
        },
    };
</script>
<style scoped>
    #app {
        background-color: #e5e5e5;
    }
</style>
