<template>
    <div class="container">
        <el-menu :default-active="menuActive" active-text-color="#ffd04b" background-color="#545c64" class="el-menu-vertical-demo" text-color="#fff" unique-opened :collapse="store.getters['app/sidemenuCollapse']" :collapse-transition="false" show-timeout="0" hide-timeout="0" @open="handleOpen" @close="handleClose">
            <el-menu-item index="/home" @click="handleClick('/home', {})">
                <el-icon>
                    <component :is="`HomeFilled`"></component>
                </el-icon>
                <span>Home</span>
            </el-menu-item>
            <el-sub-menu index="/auth">
                <template #title>
                    <el-icon>
                        <component :is="`Notebook`"></component>
                    </el-icon>
                    <span>Auth</span>
                </template>
                <el-menu-item index="/auth/role" @click="handleClick('/auth/role', {})">Role</el-menu-item>
                <el-menu-item index="/auth/item" @click="handleClick('/auth/item', {})">Item</el-menu-item>
            </el-sub-menu>
            <el-menu-item index="/test/3" @click="handleClick('/test/3', { params: { id: 123 }, query: { name: 'John' } })">
                <el-icon>
                    <component :is="`Document`"></component>
                </el-icon>
                <span>Test</span>
            </el-menu-item>
        </el-menu>
    </div>
</template>
<script setup>
    import { useRouter, useRoute } from "vue-router";
    import { ref } from "vue";
    import { useStore } from "vuex";
    const store = useStore();
    const router = useRouter();
    const route = useRoute();
    const menuActive = ref(route.path);
    // 点击菜单项时
    const handleClick = (item, data) => {
        const routerInfo = { path: item };
        if (data.params) routerInfo.params = data.params;
        if (data.query) routerInfo.query = data.query;
        router.push(routerInfo);
    };
</script>
<style scoped>
    .container {
        width: 100%;
        height: 100%;
        background: #001529;
        overflow: hidden;
        .el-menu {
            border: 0 !important;
            .el-menu-item {
                width: 100%;
                background: #545c64;
                height: 50px !important;
                line-height: 50px !important;
                border-bottom: 1px solid #999;
                &.is-active {
                    color: #fff;
                    background: #1677ff;
                }
            }
            .el-sub-menu :deep(.el-sub-menu__title) {
                height: 50px !important;
                line-height: 50px !important;
                border-bottom: 1px solid #999;
                box-sizing: border-box;
            }
            .el-sub-menu {
                width: 100%;
                background: #545c64;
                box-sizing: border-box;
                .el-menu {
                    .el-menu-item {
                        color: #000;
                        background: #ccc;
                        &:last-child {
                            border-bottom: 0;
                        }
                        &.is-active {
                            color: #fff;
                            background: #1677ff;
                        }
                    }
                }
            }
        }
    }
</style>
