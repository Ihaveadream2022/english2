import { createBrowserRouter, Navigate } from "react-router-dom";
import App from "../views/layout/App.js";
import User from "../views/auth/User.js";
import Role from "../views/auth/Role.js";
import Login from "../views/public/Login.js";
import Home from "../views/home";
import Item from "../views/item";
import Video from "../views/public/Video.js";

const routes = [
    {
        path: "/",
        element: <App />,
        children: [
            {
                path: "/",
                element: <Navigate to="home" replace />,
            },
            {
                path: "home",
                element: <Home />,
            },
            {
                path: "user",
                element: <User />,
            },
            {
                path: "role",
                element: <Role />,
            },
            {
                path: "item",
                element: <Item />,
            },
        ],
    },

    {
        path: "/login",
        element: <Login />,
    },
    {
        path: "/video",
        element: <Video />,
    },
];

export default createBrowserRouter(routes);
