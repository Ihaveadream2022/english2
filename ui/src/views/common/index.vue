<template>
    <div>
        <div class="searchBox" ref="searchBox">
            <div class="searchBtnBox">
                <el-button type="primary" @click="GitPush">Git Push To Remote</el-button>
            </div>
        </div>
        <div style="width: 500px; margin: 10px">
            <el-divider content-position="center">{{ label }}</el-divider>
            <el-descriptions direction="horizontal" :column="1" :labelStyle="{ color: '#999', 'line-height': '50px' }" border>
                <template v-for="week in weeks">
                    <el-descriptions-item :label="week.name" :key="week.name" :labelStyle="{ background: '#214999', color: '#fff', 'line-height': '50px' }">
                        <div v-if="statics.dayOfWeek == week.value">
                            <p>【{{ statics.dataType }}】 【共 {{ statics.data.staticsTotal }} 条】 【当前位置 {{ statics.data.todayCircle }} / {{ statics.data.staticsTotalDaysNeed }}】</p>
                            <p>【每次学 {{ statics.data.staticsItemsPerDay }} 条, 今日从 {{ statics.data.todayItemsCountFrom }} ~ {{ statics.data.todayItemsCountEnd }} 条】</p>
                        </div>
                    </el-descriptions-item>
                </template>
            </el-descriptions>
        </div>
    </div>
</template>
<script>
    /* eslint-disable */
    import { GitPush, indexStatics } from "@/api/request";
    export default {
        data() {
            return {
                statics: {},
                weeks: [
                    { value: 1, name: "周一 / Word" },
                    { value: 2, name: "周二 / Word" },
                    { value: 3, name: "周三 / Reading" },
                    { value: 4, name: "周四 / Reading" },
                    { value: 5, name: "周五 / Grammar" },
                    { value: 6, name: "周六 / Listening" },
                    { value: 7, name: "周日 / Writing" },
                ],
            };
        },
        created() {
            this.indexTodo();
        },
        mounted() {},
        methods: {
            GitPush() {
                const loading = this.$loading({
                    lock: true,
                    text: "Loading...",
                });
                GitPush().then(
                    (res) => {
                        loading.close();
                        this.$message({
                            message: "success",
                            type: "success",
                        });
                    },
                    (res) => {
                        loading.close();
                        this.$message({
                            message: "success",
                            type: "success",
                        });
                    },
                );
            },
            indexTodo() {
                indexStatics()
                    .then(
                        (res) => {
                            this.statics = res.data;
                            console.log("res", res);
                        },
                        (res) => {
                            Message({
                                message: `${res.message}`,
                                type: "error",
                                duration: 1500,
                            });
                        },
                    )
                    .catch((error) => {
                        Message({
                            message: `${error}`,
                            type: "error",
                            duration: 1500,
                        });
                    });
            },
        },
        computed: {
            label() {
                return `【星期 ${this.statics.dayOfWeek} / 7】 【第 ${this.statics.weekOfYear} / 53 周】`;
            },
        },
    };
</script>
<style lang="scss" scoped>
    .title {
        display: flex;
        justify-content: space-between;
        padding-right: 10px 10px;
        margin-left: 10px;
        border-bottom: 1px solid #dcdfe6;
        margin-bottom: 10px;
        h4 {
            margin: 0;
            font-size: 14px;
            color: #333;
            padding-bottom: 10px;
            border-bottom: 2px solid #214999;
        }
    }
    .searchBox {
        display: flex;
        .searchBtnBox {
            padding-left: 10px;
            // margin-left: 10px;
            ::v-deep .el-form-item--mini.el-form-item,
            ::v-deep .el-form-item--small.el-form-item {
                margin-bottom: 6px !important;
            }
        }
        .inpBox {
            ::v-deep .el-form-item--mini.el-form-item,
            ::v-deep .el-form-item--small.el-form-item {
                margin-bottom: 6px !important;
            }
            ::v-deep .el-form-item.long {
                width: 100%;
                margin-right: 0 !important;
            }
            ::v-deep .el-input__inner {
                width: 150px !important;
            }
            ::v-deep .el-date-editor {
                width: 350px !important;
            }
        }
    }
</style>
