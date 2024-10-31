<template>
    <div class="container">
        <div class="logo">English</div>
        <div class="fold">
            <el-icon size="28" :class="store.getters['app/sidemenuCollapse'] ? 'right' : ''" @click="foldHandle">
                <Fold />
            </el-icon>
        </div>
        <div class="panel">
            <el-space direction="horizontal" alignment="center" :size="10">
                <el-button type="primary">Change Pass</el-button>
                <el-dropdown>
                    <el-button type="primary">
                        <el-icon size="20">
                            <UserFilled />
                        </el-icon>
                        <el-icon class="el-icon--right">
                            <arrow-down />
                        </el-icon>
                    </el-button>
                    <template #dropdown>
                        <el-dropdown-menu>
                            <el-dropdown-item>Change Pass</el-dropdown-item>
                            <el-dropdown-item>Logout</el-dropdown-item>
                        </el-dropdown-menu>
                    </template>
                </el-dropdown>
            </el-space>
        </div>
    </div>
</template>
<script setup>
    import { useStore } from "vuex";
    const store = useStore();
    const foldHandle = () => {
        const value = store.getters["app/sidemenuCollapse"];
        store.commit("app/toggleSidemenuCollapse", value ? 0 : 1);
    };
</script>
<style lang="scss" scoped>
    .container {
        background-color: #fff;
        padding: 0 !important;
        height: 50px !important;
        display: flex;
        align-items: center;
        border-bottom: 1px solid #eee;
        .logo {
            width: 200px;
            height: 50px;
            text-align: center;
            font-size: 26px;
            font-weight: 900;
            line-height: 50px;
        }
        .fold {
            width: 60px;
            height: 50px;
            text-align: center;
            cursor: pointer;
            .el-icon {
                height: 100%;
                &.right {
                    transform: rotate(180deg);
                }
            }
        }
        .panel {
            flex: 1;
            width: 100px;
            height: 50px;
            line-height: 50px;
            text-align: right;
            .el-space {
                height: 50px;
                padding: 0 10px;
            }
            .el-button {
                padding: 8px 10px;
            }
        }
    }
</style>
