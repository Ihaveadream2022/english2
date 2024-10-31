import axios from "axios";

const env = import.meta.env;
const request = axios.create({
    baseURL: env.VITE_API_PREFIX,
    timeout: 10000000,
});

// Response
request.interceptors.response.use(
    (response) => {
        if (response.status === 200 && response.data.code === 1) {
            return response.data;
        }
        return Promise.reject(new Error(response.data.message, response.data));
    },
    (error) => {
        return Promise.reject(error);
    },
);

// Login
const OAuthLogin = (params) => {
    return request.post("/open/login", params);
};

// Captcha
const OAuthCaptcha = () => {
    return request.request({
        method: "get",
        url: "/open/captcha",
    });
};

export { OAuthLogin, OAuthCaptcha };
