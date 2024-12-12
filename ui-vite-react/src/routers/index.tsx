import { createBrowserRouter, createHashRouter, Navigate } from "react-router-dom";
import Index from "../views/public/Index";
import Video from "../views/public/Video";
import IndexLayout from "../views/layout/Index";

const routes = [
    {
        path: "/",
        element: <Index />,
    },
    {
        path: "/video",
        element: <Video />,
    },
    {
        path: "/home",
        element: <IndexLayout />,
        Children: [],
    },
];

export default createBrowserRouter(routes);
