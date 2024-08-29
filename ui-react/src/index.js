import React from "react";
import ReactDOM from "react-dom/client";
import { Provider } from "react-redux";
import store from "./stores";
import { RouterProvider } from "react-router-dom";
import router from "./routers";

const root = ReactDOM.createRoot(document.getElementById("root"));

// prettier-ignore
root.render(
    <React.StrictMode>
        <Provider store={store}>
            <RouterProvider router={router} />
        </Provider>
    </React.StrictMode>
);
