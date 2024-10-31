import { createApp } from "vue";
import "element-plus/dist/index.css";
import "./style/common.css";
import "./style/element.css";
import App from "./App.vue";
import router from "./router";
import store from "./stores";
import * as ElementPlusIconsVue from "@element-plus/icons-vue";

const app = createApp(App);

// 注册所有 icon 图标
for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    app.component(key, component);
}

app.use(router);
app.use(store);
app.mount("#app");
