<template>
    <div class="container">
        <el-row justify="space-between" align="middle">
            <el-col class="banner" :span="17">
                <div class="logo">S-B</div>
            </el-col>
            <el-col class="main" :span="7">
                <el-card style="width: 80%; margin: 0 auto; margin-top: 40%" shadow="never">
                    <template #header>
                        <div class="card-header">
                            <span>Welcome</span>
                        </div>
                    </template>
                    <div class="bottom">
                        <el-form :model="loginForm" :rules="loginRule" ref="LoginRef">
                            <el-form-item label="" prop="username">
                                <el-input v-model="loginForm.username" size="large" maxlength="20" prefix-icon="UserFilled" placeholder="请输入用户名" clearable />
                            </el-form-item>
                            <el-form-item label="" prop="password">
                                <el-input v-model="loginForm.password" type="password" size="large" maxlength="20" prefix-icon="View" show-password placeholder="请输入密码" clearable></el-input>
                            </el-form-item>
                            <el-form-item label="" prop="code" class="code">
                                <el-input v-model="loginForm.code" size="large" maxlength="4" prefix-icon="Iphone" placeholder="请输入验证码" clearable>
                                    <template #append>
                                        <img :src="captchSrc" alt="code" style="width: 120px; height: 38px" />
                                    </template>
                                </el-input>
                            </el-form-item>
                            <el-form-item class="login-btn">
                                <el-button type="primary" @click="handleSubmit(LoginRef)">Login</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </el-card>
            </el-col>
        </el-row>
    </div>
</template>
<script setup>
    import { reactive, ref } from "vue";
    import { OAuthCaptcha } from "../../api/requestOAuth";
    import { ElMessage } from "element-plus";
    const captchSrc = ref("");
    const LoginRef = ref(null);
    const loginForm = reactive({
        username: "",
        password: "",
        code: "",
        uuid: "",
    });
    const loginRule = reactive({
        username: [
            { required: true, trigger: "blur" },
            { min: 3, max: 16, message: "Length should be 3 to 16", trigger: "blur" },
            {
                trigger: "blur",
                validator: (rule, value, callback) => {
                    if (value === "") {
                        callback(new Error("Please input username"));
                    } else {
                        const reg = /^[0-9a-zA-Z]{3,16}$/g;
                        if (!reg.test(value)) {
                            callback(new Error("username error"));
                        } else {
                            callback();
                        }
                    }
                },
            },
        ],
        password: [
            { required: true, trigger: "blur" },
            { min: 3, max: 16, message: "Length should be 3 to 16", trigger: "blur" },
        ],
        code: [
            { required: true, trigger: "blur" },
            { min: 4, max: 4, message: "Length should be 4", trigger: "blur" },
            {
                trigger: "blur",
                validator: (rule, value, callback) => {
                    if (value === "") {
                        callback(new Error("Please input code"));
                    } else {
                        const reg = /^[0-9a-zA-Z]{4}$/g;
                        if (!reg.test(value)) {
                            callback(new Error("code error"));
                        } else {
                            callback();
                        }
                    }
                },
            },
        ],
    });
    const handleSubmit = async (formEl) => {
        formEl.validate((valid, fields) => {
            if (valid) {
                console.log("submit!");
                console.log(loginForm);
            } else {
                console.log("error submit!", fields);
            }
        });
    };
    OAuthCaptcha()
        .then(
            (res) => {
                console.log(res);
                loginForm.uuid = res.data.uuid;
                captchSrc.value = "data:image/svg+xml;base64," + res.data.image;
            },
            (error) => {
                ElMessage({
                    message: error instanceof Object && error.message !== undefined ? error.message : "Cannot parse response.",
                    duration: 1500,
                    type: "error",
                    showClose: true,
                    onClose() {
                        console.log("closed");
                    },
                });
            },
        )
        .catch((error) => {
            ElMessage({
                message: error instanceof Object && error.message !== undefined ? error.message : "Cannot parse response.",
                type: "error",
                showClose: true,
                onClose() {
                    console.log("closed");
                },
            });
        });
</script>
<style lang="scss" scoped>
    .container {
        width: 100%;
        height: 100vh;
        min-width: 990px;
        min-height: 500px;
        background: #fff;
        .el-row {
            height: 100%;
            .banner {
                height: 100%;
                background: url("../../assets/images/birthday-banner-english.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position: 50% 0;
                .logo {
                    width: 100%;
                    padding: 24px;
                    box-sizing: border-box;
                    padding-left: 5%;
                    background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5), rgba(255, 255, 255, 0));
                    margin-top: 18%;
                    font-size: 30px;
                    color: #fff;
                }
            }
            .main {
                height: 100%;
                .el-card__header {
                    .card-header {
                        color: rgba(0, 0, 0, 0.88);
                        font-weight: 600;
                        font-size: 18px;
                        text-align: center;
                        padding: 0;
                    }
                }
                .el-form-item {
                    &.login-btn {
                        border: 0;
                        .el-button--primary {
                            height: 38px;
                            width: 100%;
                            background-color: #4096ff;
                            border-color: #4096ff;
                            &:hover {
                                background: #214999;
                                border-color: #214999;
                                color: #fff;
                            }
                        }
                    }
                    &:last-child {
                        margin: 0;
                    }
                }
            }
        }
    }
</style>
