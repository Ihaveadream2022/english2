import { createStore } from "vuex";

const modulesFiles = import.meta.glob("./modules/*.js", { eager: true });
const modules = Object.keys(modulesFiles).reduce((modules, modulePath) => {
    const moduleName = modulePath.replace(/^\.\/modules\/(.*)\.\w+$/, "$1"); // set './modules/app.js' => 'app'
    const value = modulesFiles[modulePath];
    modules[moduleName] = value.default;
    return modules;
}, {});

const store = createStore({
    modules,
});

export default store;
