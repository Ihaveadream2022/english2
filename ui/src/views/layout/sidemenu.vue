<template>
    <div class="container">
        <el-scrollbar wrap-class="scrollbar-wrapper">
            <el-menu :default-active="$route.path" :unique-opened="true" background-color="#001529" text-color="#fff" :collapse-transition="false" active-text-color="#214999" :router="true">
                <template v-for="item in menuList">
                    <template v-if="!item.childMenu">
                        <el-menu-item :index="item.accessUrl" :route="item.accessUrl" :key="item.id">
                            <span slot="title" v-text="item.name"></span>
                        </el-menu-item>
                    </template>
                    <template v-else>
                        <el-submenu :index="item.id + ''" :key="item.id">
                            <span slot="title" v-html="item.name"></span>
                            <el-menu-item v-for="(i, k) in item.childMenu" :index="i.accessUrl" :route="i.accessUrl" :key="k">
                                <span v-html="i.name"></span>
                            </el-menu-item>
                        </el-submenu>
                    </template>
                </template>
            </el-menu>
        </el-scrollbar>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                menuList: [
                    {
                        code: "000M0j",
                        accessUrl: "/auth",
                        picType: 1,
                        name: "Auth",
                        id: 291,
                        type: 1,
                        parentId: 0,
                        childMenu: [
                            {
                                code: "000M0k",
                                accessUrl: "/authUser",
                                picType: 1,
                                name: "User",
                                id: 292,
                                type: 1,
                                parentId: 291,
                            },
                            {
                                code: "000M1k",
                                accessUrl: "/authRole",
                                picType: 1,
                                name: "Role",
                                id: 301,
                                type: 1,
                                parentId: 291,
                                buttonDetails: [
                                    {
                                        buttonDetails: [],
                                        code: "00d00B0100",
                                        name: "添加",
                                        id: 51,
                                        type: 2,
                                        parentId: 301,
                                    },
                                    {
                                        buttonDetails: [],
                                        code: "00d00B0200",
                                        name: "修改",
                                        id: 52,
                                        type: 2,
                                        parentId: 301,
                                    },
                                ],
                            },
                        ],
                    },
                    {
                        code: "000M0j",
                        accessUrl: "/item",
                        icon: "&#128214;",
                        picType: 1,
                        name: "Item",
                        id: 292,
                        type: 1,
                        parentId: 0,
                        childMenu: [
                            {
                                code: "000M0k",
                                accessUrl: "/item",
                                icon: "&#128214;",
                                picType: 1,
                                name: "&#128214; item",
                                id: 501,
                                type: 1,
                                parentId: 291,
                            },
                            {
                                code: "000W2t",
                                accessUrl: "/synonym",
                                picType: 1,
                                name: "&#8694; synonym",
                                id: 502,
                                type: 1,
                                parentId: 291,
                            },
                            {
                                code: "000Z2t",
                                accessUrl: "/similar",
                                picType: 1,
                                name: "&#9890; similar",
                                id: 503,
                                type: 1,
                                parentId: 291,
                            },
                        ],
                    },
                    {
                        code: "006M2j",
                        accessUrl: "/essay",
                        picType: 1,
                        name: "Essay",
                        id: 381,
                        type: 1,
                        parentId: 0,
                        childMenu: [
                            {
                                code: "006M2k",
                                accessUrl: "/essay",
                                picType: 1,
                                name: "Essay",
                                id: 382,
                                type: 1,
                                parentId: 381,
                            },
                        ],
                    },
                    {
                        code: "000M2j",
                        accessUrl: "/grammar",
                        picType: 1,
                        name: "Grammar",
                        id: 281,
                        type: 1,
                        parentId: 0,
                        childMenu: [
                            {
                                code: "000M2k",
                                accessUrl: "/grammar",
                                picType: 1,
                                name: "Grammar",
                                id: 282,
                                type: 1,
                                parentId: 281,
                            },
                        ],
                    },
                    {
                        code: "000R2j",
                        accessUrl: "/listening",
                        picType: 1,
                        name: "Listening",
                        id: 811,
                        type: 1,
                        parentId: 0,
                        childMenu: [
                            {
                                code: "002M2k",
                                accessUrl: "/listening",
                                picType: 1,
                                name: "Listening",
                                id: 812,
                                type: 1,
                                parentId: 811,
                            },
                        ],
                    },
                    {
                        code: "055Q2j",
                        accessUrl: "/writing",
                        picType: 1,
                        name: "Writing",
                        id: 221,
                        type: 1,
                        parentId: 0,
                        childMenu: [
                            {
                                code: "102M2i",
                                accessUrl: "/writing",
                                picType: 1,
                                name: "Writing",
                                id: 222,
                                type: 1,
                                parentId: 221,
                            },
                        ],
                    },
                ],
            };
        },
        created() {
            this.$emit("menuLoadCallback");
        },
        computed: {},
        methods: {},
    };
</script>
<style lang="scss" scoped>
    .container {
        width: 100%;
        background: #001529;
        height: 100%;
        overflow: hidden;
        .el-scrollbar {
            overflow: hidden;
            position: relative;
            height: 100%;
            ::v-deep .scrollbar-wrapper {
                overflow-x: hidden !important;
                margin-bottom: -18px !important;
                margin-right: -18px !important;
                .el-scrollbar__view {
                    margin-bottom: 40px;
                }
            }
            .el-menu {
                border: 0 !important;

                // 有子菜单
                .el-submenu {
                    border-bottom: 1px solid #aaa;
                    ::v-deep .el-submenu__title {
                        height: 46px !important;
                        line-height: 46px !important;
                    }
                    ::v-deep .el-icon-arrow-down {
                        color: #fff !important;
                        right: 25px !important;
                    }
                    ::v-deep .el-submenu__title {
                        text-align: left;
                        padding: 0 15px !important;
                        &:hover {
                            background-color: rgba(255, 255, 255, 0.1) !important;
                        }
                        .el-submenu__icon-arrow {
                            display: none;
                        }
                    }
                    .el-menu-item {
                        text-align: left;
                        height: 46px !important;
                        line-height: 46px !important;
                        padding: 0 15px !important;
                        min-width: 100%;
                        border-top: 1px dotted;
                        background: #999 !important;
                        color: #001529 !important;
                        &:hover {
                            color: #fff !important;
                        }
                    }
                }
            }
            .el-menu--collapse {
                .el-submenu {
                    ::v-deep .el-submenu__title {
                        line-height: 46px !important;
                        span {
                            visibility: visible;
                            width: 14px;
                            height: auto;
                            overflow: hidden;
                        }
                    }
                }
                .el-menu-item {
                    ::v-deep .el-tooltip {
                        text-align: center !important;
                    }
                    .title-collapse {
                        height: auto;
                        width: 14px;
                        visibility: visible;
                    }
                }
            }
        }
        .fold-icon {
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
            color: #fff;
            font-size: 22px;
            border-top: 1px solid #ccc;
            padding: 8px 0;
            z-index: 999;
            background: rgb(0, 17, 33);
            cursor: pointer;
        }
    }
</style>
