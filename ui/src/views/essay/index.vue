<template>
    <div>
        <div class="title">
            <h4>Essay Management</h4>
        </div>
        <!-- Audio Tag -->
        <audio ref="audio" style="display: none"></audio>
        <audio ref="audioList" style="display: none"></audio>
        <!-- Search Area -->
        <div class="searchBox" ref="searchBox">
            <el-form :inline="true" :model="table.searchForm" ref="searchForm" class="demo-form-inline" label-width="100px" size="mini" @submit.native.prevent>
                <div class="inpBox">
                    <el-form-item label="Keyword :" prop="keyword">
                        <el-input placeholder="keyword" v-model="table.searchForm.keyword" @keyup.enter.native="handleEnter"></el-input>
                    </el-form-item>
                </div>
                <div class="searchBtnBox">
                    <el-form-item>
                        <el-button type="info" @click="tableSearch">Query</el-button>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="tableResetForm">Reset</el-button>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="editDialogOpen">Create</el-button>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="success" @click="handleBookmark">Bookmark</el-button>
                    </el-form-item>
                </div>
            </el-form>
        </div>
        <div class="table" :style="{ height: table.height }">
            <el-table :data="table.tableList" ref="table" v-loading="table.loading" @row-click="tableHandleRowClick" highlight-current-row bordersize="mini" height="100%" style="width: 100%" center border>
                <el-table-column prop="title" min-width="200" label="Title"> </el-table-column>
                <el-table-column label="Operation" min-width="300">
                    <template slot-scope="scope">
                        <div class="panel">
                            <el-button type="primary" size="mini" @click="viewDialogEdit(scope.row)">View</el-button>
                            <el-button type="primary" size="mini" @click="editDialogEdit(scope.row)">Edit</el-button>
                            <el-button type="danger" size="mini" @click="editDelete(scope.row)">Delete</el-button>
                        </div>
                    </template>
                </el-table-column>
            </el-table>
        </div>
        <div>
            <el-pagination background @size-change="pagerHandleSizeChange" @current-change="pagerHandleCurrentChange" :current-page="table.searchForm.pageNo" :page-sizes="[10, 20, 50, 100]" :page-size="table.searchForm.pageSize" layout="total, sizes, prev, pager, next, jumper" :total="table.total"> </el-pagination>
        </div>
        <!-- 短文新建或编辑弹窗 -->
        <el-dialog :title="editDialog.form.title || editDialog.title" :close-on-click-modal="false" :close-on-press-escape="false" class="vehm" :visible.sync="editDialog.visible" @close="editDialogClose" @opened="editDialogOpen" width="100%" top="0" center>
            <span>
                <el-form :inline="true" :rules="editDialog.rules" :model="editDialog.form" ref="editDialogForm" class="demo-form-inline jiaoyan" label-width="120px" size="mini">
                    <el-form-item label="标题:" prop="title">
                        <el-input placeholder="" v-model="editDialog.form.title"></el-input>
                    </el-form-item>
                    <el-form-item label="">
                        <el-button @click="defaultItem('Youtube视频标题、内容、评论')">Youtube视频标题、内容、评论</el-button>
                        <el-button @click="defaultItem('CNN')">CNN</el-button>
                    </el-form-item>
                    <el-descriptions direction="vertical" :column="1" :labelStyle="{ background: '#214999', color: '#fff', 'text-align': 'center' }" border>
                        <el-descriptions-item label="">
                            <el-input placeholder="" type="textarea" v-model="editDialog.form.content"></el-input>
                        </el-descriptions-item>
                    </el-descriptions>
                </el-form>
            </span>
            <span slot="footer" class="dialog-footer">
                <el-button @click="editDialog.visible = false">Cancle</el-button>
                <el-button type="primary" @click="editDialogSave">Confirm</el-button>
            </span>
        </el-dialog>
        <!-- 短文查看窗口 -->
        <el-dialog :title="viewDialog.form.title" :close-on-click-modal="false" :close-on-press-escape="false" class="vehm" :visible.sync="viewDialog.visible" @close="viewDialogClose" @opened="viewDialogOpen" width="100%" top="0" center>
            <el-row :gutter="10">
                <el-col :span="12">
                    <div class="viewer">
                        <tiptap ref="editor" :content="viewDialog.form.content" v-if="viewDialog.visibleEditor" />
                    </div>
                </el-col>
                <el-col :span="12">
                    <div class="search-box">
                        <el-form :inline="true" :model="search.form" ref="searchForm" class="demo-form-inline" label-width="130px" size="mini" @submit.native.prevent>
                            <div class="inpBox">
                                <el-form-item prop="keyword">
                                    <el-input placeholder="keyword" v-model="search.form.keyword" @keyup.native="searchHandleEnter" clearable @clear="searchClear"></el-input>
                                </el-form-item>
                                <el-form-item>
                                    <el-select placeholder="请选择" v-model="speech.type">
                                        <el-option v-for="item in speech.typeOptions" :key="item.value" :label="item.label" :value="item.value"></el-option>
                                    </el-select>
                                </el-form-item>
                                <el-form-item>
                                    <el-button type="primary" @click="speechPlayHandle">{{ speech.text }}</el-button>
                                </el-form-item>
                            </div>
                        </el-form>
                    </div>
                    <div class="search-table" style="height: 192px" v-if="search.visible">
                        <el-table :data="search.tableList" style="height: 192px; width: 100%; border-radius: 4px" center border>
                            <el-table-column prop="name" min-width="300" label="name"></el-table-column>
                            <el-table-column prop="common" min-width="150" label="common"></el-table-column>
                            <el-table-column label="operation">
                                <template slot-scope="scope">
                                    <div class="panel">
                                        <button type="primary" size="mini" @click="searchSelect(scope.row)">Select</button>
                                    </div>
                                </template>
                            </el-table-column>
                        </el-table>
                    </div>
                    <div class="word-list">
                        <div class="table">
                            <el-table :data="viewDialogGetVocabulary" style="width: 100%; border-radius: 4px" center border @row-click="tableHandleRowClick">
                                <el-table-column prop="form" label="Vocabulary"></el-table-column>
                                <el-table-column prop="value" label=""></el-table-column>
                                <el-table-column prop="" label="">
                                    <template slot-scope="scope">
                                        <div class="panel">
                                            <el-button size="mini" @click="searchTableRowDelete(scope.row)">delete</el-button>
                                        </div>
                                    </template>
                                </el-table-column>
                            </el-table>
                        </div>
                    </div>
                </el-col>
            </el-row>
            <span slot="footer" class="dialog-footer">
                <el-button type="primary" @click="viewDialogSave">Confirm</el-button>
                <el-button @click="viewDialogClose">Cancle</el-button>
            </span>
        </el-dialog>
    </div>
</template>
<script>
    /* eslint-disable */
    import { essayList, essayAdd, essayEdit, essayDelete, itemList, ttsGet } from "@/api/request";
    import { Message } from "element-ui";
    import Tiptap from "@/components/Tiptap";
    export default {
        components: {
            Tiptap,
        },
        data() {
            return {
                table: {
                    height: "500px",
                    loading: false,
                    total: 0,
                    tableList: [],
                    searchForm: {
                        pageNo: 1,
                        pageSize: 10,
                    },
                },
                editDialog: {
                    title: "Create Essay",
                    operation: "add",
                    form: {},
                    visible: false,
                    rules: {
                        title: [{ required: true, message: "Please input essay title", trigger: "blur" }],
                    },
                },
                viewDialog: {
                    title: "View Essay",
                    form: {},
                    vocabulary: "",
                    visible: false,
                    visibleEditor: false,
                },
                search: {
                    total: 0,
                    tableList: [],
                    form: {
                        pageNo: 1,
                        pageSize: 5,
                    },
                    visible: false,
                },
                speech: {
                    currentIndex: 0,
                    isPlaying: false,
                    text: "Play",
                    readingInterval: 2000,
                    type: 1,
                    typeOptions: [
                        { label: "English", value: 1 },
                        { label: "Chinese", value: 2 },
                    ],
                    timeoutHanlder: null,
                },
            };
        },
        created() {
            console.log(Tiptap);
            this.tableGetList(this.table.searchForm);
        },
        mounted() {
            let h = this.$refs.searchBox.offsetHeight;
            let pH = document.documentElement.clientHeight;
            this.table.height = pH - h - 120 + "px";
        },
        methods: {
            // 编辑窗口: 关闭对话框后(渲染结束)执行. 恢复窗口初始状态
            editDialogClose() {
                this.$nextTick(() => {
                    this.editDialog.form = {};
                    this.editDialog.title = "Create Essay";
                    this.editDialog.operation = "add";
                    this.copiedText = "";
                });
            },
            // 编辑窗口: 打开. 通用设置
            editDialogOpen() {
                this.editDialog.visible = true;
            },
            // 编辑窗口: 编辑. 同时触发editDialogOpen()
            editDialogEdit(row) {
                this.$refs.table.toggleRowSelection(row);
                this.editDialog.title = "Edit Essay";
                this.editDialog.visible = true;
                this.editDialog.operation = "edit";
                this.editDialog.form = row;
            },
            editDialogDelete(row) {},
            editDialogSave() {
                this.$refs.editDialogForm.validate((valid) => {
                    if (valid) {
                        // 全屏遮罩. 不是表格遮罩
                        const loading = this.$loading({
                            lock: true,
                            text: "Loading...",
                        });
                        if (this.editDialog.operation == "add") {
                            essayAdd(this.editDialog.form)
                                .then(
                                    (res) => {
                                        Message({
                                            message: `${res.message}`,
                                            type: "success",
                                            duration: 800,
                                            onClose: () => {
                                                console.log("res", res);
                                                loading.close();
                                                this.editDialog.visible = false;
                                                this.tableGetList(this.table.searchForm);
                                            },
                                        });
                                    },
                                    (res) => {
                                        Message({
                                            message: `${res.message}`,
                                            type: "error",
                                            duration: 1500,
                                            onClose: () => {
                                                loading.close();
                                            },
                                        });
                                    },
                                )
                                .catch((error) => {
                                    console.log(error);
                                });
                        } else if (this.editDialog.operation == "edit") {
                            essayEdit(this.editDialog.form)
                                .then(
                                    (res) => {
                                        Message({
                                            message: `${res.message}`,
                                            type: "success",
                                            duration: 800,
                                            onClose: () => {
                                                console.log("res", res);
                                                loading.close();
                                                this.editDialog.visible = false;
                                                this.tableGetList(this.table.searchForm);
                                            },
                                        });
                                    },
                                    (res) => {
                                        Message({
                                            message: `${res.message}`,
                                            type: "error",
                                            duration: 1500,
                                            onClose: () => {
                                                loading.close();
                                            },
                                        });
                                    },
                                )
                                .catch((error) => {
                                    this.$message({
                                        showClose: true,
                                        message: error instanceof Object && error.message !== undefined ? error.message : "Cannot parse response",
                                        type: "error",
                                        onClose() {},
                                    });
                                });
                        }
                    }
                });
            },
            editStatus(row, value) {
                const loading = this.$loading({
                    lock: true,
                    text: "Loading...",
                });
                essayEdit({ ...row, status: value }).then(
                    (res) => {
                        console.log("res", res);
                        loading.close();
                        this.tableGetList(this.table.searchForm);
                    },
                    (res) => {
                        Message({
                            message: res.message,
                            type: "error",
                            duration: 1500,
                            onClose: () => {
                                loading.close();
                            },
                        });
                    },
                );
            },
            editDelete(row) {
                this.$confirm("Are you sure you want to delete this?", "Tips", {
                    confirmButtonText: "Confirm",
                    cancelButtonText: "Cancel",
                }).then(
                    () => {
                        const loading = this.$loading({
                            lock: true,
                            text: "Loading...",
                        });
                        essayDelete(row).then(
                            (res) => {
                                loading.close();
                                this.$message({
                                    message: res.message,
                                    type: "success",
                                });
                                this.tableGetList(this.table.searchForm);
                            },
                            (res) => {
                                this.$message({
                                    showClose: true,
                                    message: res.message,
                                    type: "error",
                                    onClose() {
                                        loading.close();
                                    },
                                });
                            },
                        );
                    },
                    () => {},
                );
            },
            viewDialogClose() {
                this.viewDialog.visible = false;
                this.viewDialog.visibleEditor = false;
                this.searchClear();
                this.$nextTick(() => {
                    this.viewDialog.form = {};
                    this.viewDialog.vocabulary = "";
                    this.speechStopHandle();
                    this.speech.type = 1;
                });
            },
            // 编辑窗口: 打开. 通用设置
            viewDialogOpen() {
                this.viewDialog.visible = true;
                this.viewDialog.visibleEditor = true;
            },
            // 编辑窗口: 编辑. 同时触发editDialogOpen()
            viewDialogEdit(row) {
                this.$refs.table.toggleRowSelection(row);
                this.viewDialog.visible = true;
                this.viewDialog.visibleEditor = true;
                this.viewDialog.form = row;
                this.viewDialog.vocabulary = row.vocabulary;
            },
            viewDialogSave() {
                console.log("this.viewDialog.form", this.viewDialog.form);
                console.log(this.$refs.editor.getHTML());
                this.viewDialog.form.content = this.$refs.editor.getHTML();
                const loading = this.$loading({
                    lock: true,
                    text: "Loading...",
                });
                essayEdit(this.viewDialog.form)
                    .then(
                        (res) => {
                            Message({
                                message: `${res.message}`,
                                type: "success",
                                duration: 800,
                                onClose: () => {
                                    console.log("res", res);
                                    loading.close();
                                    this.viewDialog.visible = false;
                                    this.tableGetList(this.table.searchForm);
                                },
                            });
                        },
                        (res) => {
                            Message({
                                message: `${res.message}`,
                                type: "error",
                                duration: 1500,
                                onClose: () => {
                                    loading.close();
                                },
                            });
                        },
                    )
                    .catch((error) => {
                        this.$message({
                            showClose: true,
                            message: error instanceof Object && error.message !== undefined ? error.message : "Cannot parse response",
                            type: "error",
                            onClose() {},
                        });
                    });
            },
            // 表格: 列表查询方法
            tableGetList(searchForm) {
                essayList({ ...searchForm })
                    .then(
                        (res) => {
                            this.table.total = res.data.total;
                            this.table.tableList = res.data.list;
                            console.log("this.table.tableList", this.table.tableList);
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
            // 表格: 点击重置搜索条件时
            tableResetForm() {
                this.table.searchForm = {
                    pageNo: 1,
                    pageSize: 10,
                };
                this.tableGetList(this.table.searchForm);
            },
            // 表格: 点击表格的行时
            tableHandleRowClick(row, column, event) {
                this.$refs.table.toggleRowSelection(row);
                console.log(row);
                if (row.tts) {
                    const audio = this.$refs.audio;
                    audio.src = "data:audio/wav;base64," + row.tts.audio;
                    audio.load();
                    audio.play();
                }
            },
            speechPlayHandle() {
                if (!this.speech.isPlaying) {
                    this.speech.isPlaying = true;
                    this.speech.currentIndex = 0;
                    this.speech.text = "Playing...";
                    this.$refs.audioList.addEventListener("ended", this.speechPlayList, false);
                    this.speechPlayList();
                } else {
                    this.speechStopHandle();
                }
            },
            speechStopHandle() {
                clearTimeout(this.speech.timeoutHanlder);
                this.$refs.audioList.pause();
                this.$refs.audioList.currentTime = 0;
                this.$refs.audioList.removeEventListener("ended", this.speechPlayList, false);
                this.speech.currentIndex = 0;
                this.speech.isPlaying = false;
                this.speech.text = "Play";
            },
            speechPlayList() {
                if (this.table.tableList.length > 0) {
                    const lastIndex = this.speech.currentIndex == 0 ? this.viewDialogGetVocabulary.length - 1 : this.speech.currentIndex - 1;
                    const buildWord = this.viewDialogGetVocabulary[lastIndex]["form"];
                    let intaval = 2000 + (Math.ceil(buildWord.replace(/\/|\s/g, "").length / 8) - 1) * 2000;
                    console.log(intaval + "后播放" + this.viewDialogGetVocabulary[this.speech.currentIndex].key);
                    this.speech.timeoutHanlder = setTimeout(() => {
                        const audio = this.$refs.audioList;
                        audio.src = this.speech.type == 1 ? "data:audio/wav;base64," + this.viewDialogGetVocabulary[this.speech.currentIndex].tts.audio : "data:audio/wav;base64," + this.viewDialogGetVocabulary[this.speech.currentIndex].tts.audioCn;
                        audio.load();
                        audio.play();
                        this.speech.currentIndex++;
                        if (this.speech.currentIndex >= this.viewDialogGetVocabulary.length) {
                            this.speech.currentIndex = 0;
                        }
                    }, intaval);
                }
            },
            // 表格: 点击搜索按钮时
            tableSearch() {
                this.table.searchForm = { ...this.table.searchForm, pageNo: 1, pageSize: 10 };
                console.log(this.table.searchForm);
                this.tableGetList(this.table.searchForm);
            },
            handleEnter() {
                this.tableSearch();
            },
            // 分页器: 每页条数发生变化时
            pagerHandleSizeChange(val) {
                this.table.searchForm.pageSize = val;
                this.tableGetList(this.table.searchForm);
            },
            // 分页器: 翻页时
            pagerHandleCurrentChange(val) {
                this.table.searchForm.pageNo = val;
                this.tableGetList(this.table.searchForm);
            },
            defaultItem(v) {
                this.$set(this.editDialog.form, "title", v);
            },
            searchHandleEnter() {
                if (this.search.form.keyword != undefined && this.search.form.keyword != "") {
                    this.search.visible = true;
                    this.searchTableList();
                }
            },
            searchTableList() {
                itemList(this.search.form)
                    .then(
                        (res) => {
                            this.search.total = res.data.total;
                            this.search.tableList = res.data.list;
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
            searchTableRowDelete(row) {
                const obj = JSON.parse(this.viewDialog.form.vocabulary);
                const objFiltered = obj.filter((v) => {
                    if (v.key !== row.key) {
                        return true;
                    }
                });
                this.viewDialog.form.vocabulary = JSON.stringify(objFiltered);
            },
            searchSelect(row) {
                console.log(row);
                const form = this.searchBuildWord(row);
                const key = row.name;
                const obj = this.viewDialog.form.vocabulary == null ? [] : JSON.parse(this.viewDialog.form.vocabulary);
                obj.push({ key: key, value: row.common, form: form });
                this.search.selected = row;
                this.viewDialog.form.vocabulary = JSON.stringify(obj);
            },
            searchClear() {
                console.log("test");
                this.search.visible = false;
                this.search.form.keyword = "";
                this.search.selected = {};
                this.viewDialog.form.vocabulary = this.viewDialog.vocabulary;
            },
            searchBuildWord(row) {
                let returnStr = `${row.name}`;
                const conditionVerbPresentParticiple = row.verbPresentParticiple && row.name + "ing" != row.verbPresentParticiple && row.name.slice(0, -1) + "ing" != row.verbPresentParticiple;
                const conditionVerbPastParticiple = row.verbPastParticiple && row.name + "d" != row.verbPastParticiple && row.name + "ed" != row.verbPastParticiple && row.name.slice(0, -1) + "ied" != row.verbPastParticiple;
                const conditionVerbPastTense = row.verbPastTense && row.name + "d" != row.verbPastTense && row.name + "ed" != row.verbPastTense && row.name.slice(0, -1) + "ied" != row.verbPastTense;
                const conditionNounPlural = row.nounPlural && row.name + "s" != row.nounPlural && row.name + "es" != row.nounPlural && row.name.slice(0, -1) + "ies" != row.nounPlural;
                if (conditionNounPlural === true) {
                    returnStr += ` / ${row.nounPlural}`;
                }
                if (conditionVerbPresentParticiple === true || conditionVerbPastParticiple === true || conditionVerbPastTense === true) {
                    returnStr += ` / ${row.verbPastTense} / ${row.verbPastParticiple} /  ${row.verbPresentParticiple}`;
                }
                return returnStr;
            },
            async handleBookmark() {
                try {
                    this.table.searchForm.pageNo = 2;
                    const p = essayList(this.table.searchForm);
                    const res = await p; // 监听 Promise 对象的异步结果
                    console.log(res); // resolve 的返回值
                    this.table.total = res.data.total;
                    this.table.tableList = res.data.list;
                    this.$nextTick(() => {
                        console.log(this.table.tableList, "No");
                        const row = this.table.tableList.find(({ id }) => {
                            return id === 320;
                        });
                        this.$refs.table.setCurrentRow(row);
                    });
                } catch (error) {
                    console.log(error); // reject 的返回值
                    Message({
                        message: `${message}`,
                        type: "error",
                        duration: 1500,
                    });
                }
            },
        },
        computed: {
            viewDialogGetVocabulary() {
                let vocabulary = [];
                let vocabularyNew = [];
                if (this.viewDialog.form.vocabulary != null) {
                    console.log("this.viewDialog.form.vocabulary", this.viewDialog.form);
                    console.log("this.viewDialog.form.vocabulary", JSON.parse(this.viewDialog.form.vocabulary));
                    vocabulary = JSON.parse(this.viewDialog.form.vocabulary);
                    vocabularyNew = vocabulary.map((v, k, a) => {
                        ttsGet(v.key).then((response) => {
                            v["tts"] = response.data;
                        });
                        return v;
                    });
                }
                return vocabularyNew;
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
            ::v-deep .el-form-item--mini.el-form-item,
            ::v-deep .el-form-item--small.el-form-item {
                margin-bottom: 6px !important;
            }
        }
        .inpBox {
            ::v-deep .el-form-item--mini.el-form-item,
            ::v-deep .el-form-item--small.el-form-item {
                margin-bottom: 8px !important;
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
    .table {
        ::v-deep .el-table {
            font-size: 12px;
            color: #333;
            th {
                background-color: #f5f5f5;
                height: 28px;
                color: #333333 !important;
                padding: 0px 0 !important;
                &:first-child .cell {
                    padding: 0 10px 0 10px;
                }
            }
            tr {
                height: 32px;
                &:nth-child(even) {
                    background-color: #f8fafd;
                }
            }
            td {
                padding: 2px 0 !important;
            }
            .cell {
                text-align: center;
                padding: 0 10px;
            }
            .el-button--primary {
                background-color: #214999;
            }
            .el-button--primary:focus,
            .el-button--primary:hover {
                background: #214999;
                border-color: #214999;
                color: #fff;
            }
            .el-button {
                padding: 7px 15px;
            }
            .el-button--text {
                padding: 0;
            }
            .bigBtn {
                padding: 12px 28px;
            }
            .el-button--text {
                color: rgb(204, 0, 0);
            }
            .el-button--text:focus,
            .el-button--text:hover {
                color: #214999;
            }
            .el-table__body tr.hover-row > td {
                background-color: rgba(14, 110, 236, 0.3) !important;
            }
            .el-table__body tr.current-row > td {
                background-color: rgba(14, 110, 236, 0.3) !important;
            }
            .el-table--enable-row-hover .el-table__body tr:hover > td {
                background-color: rgba(14, 110, 236, 0.3) !important;
            }
            .panel {
                margin: 2px 0 !important;
                .el-button--primary {
                    background: #214999;
                }
                .el-button--danger {
                    color: #fff;
                    background: rgb(204, 0, 0);
                }
            }
        }
    }
    .el-dialog__wrapper {
        ::v-deep .el-dialog__body {
            padding: 15px;
        }
        ::v-deep .el-form-item {
            margin-bottom: 10px;
        }
        ::v-deep .el-form-item__label {
            font-size: 12px;
        }
        ::v-deep .el-divider--horizontal {
            margin: 20px 0;
        }
        ::v-deep .el-dialog__header {
            padding: 8px 20px !important;
            background-color: #214999;
            .el-dialog__title {
                line-height: 20px;
                color: #fff;
                font: {
                    weight: 900;
                    size: 14px;
                }
            }
            .el-dialog__headerbtn {
                top: 12px;
                .el-dialog__close {
                    color: #fff;
                }
            }
        }
        .hidden ::v-deep .el-upload--picture-card {
            display: none;
        }
        ::v-deep .el-input__inner,
        ::v-deep .el-textarea__inner {
            padding: 4px 8px;
        }
        ::v-deep .el-textarea__inner {
            width: 100% !important;
            height: 600px;
            margin-bottom: 0 !important;
            border: 0;
            resize: none;
            padding: 0;
        }
        .el-divider__text {
            color: #fff;
            background: #214999;
        }
        .el-divider {
            background: #214999;
        }
        ::v-deep .el-collapse-item__wrap {
            padding: 30px 0;
            background: #eee;
        }
        ::v-deep .el-collapse-item__header {
            background-color: #214999;
            padding-left: 10px;
            height: 32px;
            line-height: 32px;
        }
        ::v-deep .el-dialog__footer {
            padding: 10px 20px;
            border-top: 1px solid #999;
        }
        .viewer {
            ::v-deep .tiptap {
                min-height: 600px !important;
                margin-top: 10px;
                padding: 5px;
                border: 1px solid #999;
                border-radius: 4px;
                &:focus {
                    border: 1px solid #214999 !important;
                    outline: none;
                }
                &:focus-visible {
                    border: 1px solid #214999 !important;
                    outline: none;
                }
                p {
                    line-height: 26px;
                    font-size: 14px;
                }
                hr {
                    border: 1px dotted;
                }
            }
        }
        .search-box {
            .el-form-item {
                margin-bottom: 0px !important;
            }
            .search-clear {
                padding: 0 4px;
                line-height: 22px;
            }
            &.vocabulary {
                margin-top: 8px;
            }
        }
        .search-table {
            margin-top: 8px;
            ::v-deep .el-table {
                .el-table__cell {
                    padding: 4px 0;
                }
            }
        }
        .word-list {
            margin-top: 8px;
            ::v-deep .el-table {
                .cell {
                    text-align: left;
                    padding: 0 10px;
                    font: {
                        size: 14px;
                    }
                }
            }
        }
    }
</style>
