import { createRouter, createWebHashHistory } from "vue-router";

const routes = [
    {
        path: "/",
        redirect: "/home",
        component: () => import(/* webpackChunkName: 'dynamic' */ "@/views/layout/index.vue"),
        children: [
            {
                name: "home",
                path: "home",
                component: () => import(/* webpackChunkName: 'dynamic' */ "@/views/common/home.vue"),
            },
            {
                name: "authRole",
                path: "auth/role",
                component: () => import(/* webpackChunkName: 'dynamic' */ "@/views/auth/role.vue"),
            },
            {
                name: "authItem",
                path: "auth/item",
                component: () => import(/* webpackChunkName: 'dynamic' */ "@/views/auth/item.vue"),
            },
            {
                name: "test",
                path: "test/:id",
                component: () => import(/* webpackChunkName: 'dynamic' */ "@/views/common/test.vue"),
            },
        ],
    },
    {
        path: "/login",
        component: () => import(/* webpackChunkName: 'dynamic' */ "@/views/public/login.vue"),
    },
];

const router = createRouter({
    routes,
    history: createWebHashHistory(),
});

router.beforeEach((to, from, next) => {
    console.log("to:", to);
    next();
});

export default router;
