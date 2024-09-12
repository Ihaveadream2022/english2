import axios, { AxiosInstance } from "axios";
import { RequestResponse, RequestOAuthLoginParams } from "../types";

// Axios Instance
const OAuthRequest: AxiosInstance = axios.create({
    baseURL: process.env.REACT_APP_API_URL,
    timeout: 10000,
});

// Response
OAuthRequest.interceptors.response.use(
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
const OAuthLogin = (params: RequestOAuthLoginParams): Promise<RequestResponse> => {
    return OAuthRequest.post("/open/login", params);
};

// Captcha
const OAuthCaptcha = (): Promise<RequestResponse> => {
    return OAuthRequest.request({
        method: "get",
        url: "/open/captcha",
    });
};

export { OAuthLogin, OAuthCaptcha };
