import axios from "axios";
import store from "../stores";
import { clearToken } from "../stores/reducers/auth";

const instance = axios.create({
    baseURL: "http://localhost:8080/",
    timeout: 10000,
});

instance.interceptors.request.use(
    (config) => {
        const state = store.getState();
        const token = state.auth.ACCESS_TOKEN;
        if (token) {
            config.headers["Authorization"] = "Bearer " + token;
            return config;
        } else {
            store.dispatch(clearToken());
            window.location.href = "/login";
        }
    },
    (error) => {
        return Promise.reject(error);
    },
);

instance.interceptors.response.use(
    (response) => {
        return response.data;
    },
    (error) => {
        return Promise.reject(error);
    },
);

export default instance;
