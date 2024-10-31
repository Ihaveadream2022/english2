<template>
    <div class="container">
        <el-container>
            <el-header>
                <Header />
            </el-header>
            <el-container>
                <el-aside :style="{ width: store.getters['app/sidemenuCollapse'] ? '64px' : '200px' }">
                    <Sidemenu />
                </el-aside>
                <el-main>
                    <router-view />
                </el-main>
            </el-container>
        </el-container>
    </div>
</template>
<script setup>
    import Header from "./header.vue";
    import Sidemenu from "./sidemenu.vue";
    import { useStore } from "vuex";
    const store = useStore();

    console.log(import.meta.env);
</script>
<style lang="scss" scoped>
    .container {
        .el-header {
            padding: 0 !important;
            height: 50px !important;
        }
        .el-aside {
            height: calc(100vh - 50px);
            background: #001529;
            overflow: hidden;
        }
        .el-main {
            background: #f5f5f5;
            padding: 10px 0 0 10px !important;
            height: calc(100vh - 50px);
        }
    }
</style>
