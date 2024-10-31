import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import path from "path";
import AutoImport from "unplugin-auto-import/vite";
import Components from "unplugin-vue-components/vite";
import { ElementPlusResolver } from "unplugin-vue-components/resolvers";
import { createHtmlPlugin } from "vite-plugin-html";

// npm run build 时 mode=production，npm run dev时 mode=development
export default defineConfig(({ mode }) => {
    return {
        base: "./", // 资源相对于 index.html 的路径
        plugins: [
            vue(),
            // Element 插件
            AutoImport({
                resolvers: [ElementPlusResolver()],
            }),
            // Element 插件
            Components({
                resolvers: [ElementPlusResolver()],
            }),
            // 开发和生成模板区分
            createHtmlPlugin({
                minify: mode === "production",
                inject: {
                    data: {
                        title: mode === "production" ? "Production App" : "Development App",
                    },
                },
                template: mode === "production" ? "index.html" : "index.dev.html",
            }),
        ],
        resolve: {
            // 路径别名
            alias: {
                "@": path.resolve(__dirname, "./src"),
            },
        },
    };
});
