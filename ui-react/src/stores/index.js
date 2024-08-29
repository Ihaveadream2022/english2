import { configureStore } from "@reduxjs/toolkit";
import auth from "./reducers/auth.js";
import collapse from "./reducers/collapse.js";

const store = configureStore({
    reducer: {
        auth: auth,
        collapse: collapse,
    },
});

export default store;
