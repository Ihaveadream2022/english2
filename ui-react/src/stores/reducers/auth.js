import { createSlice } from "@reduxjs/toolkit";
import Cookies from "js-cookie";

const slice = createSlice({
    name: "auth",
    initialState: {
        ACCESS_TOKEN: Cookies.get(`AUTH`),
    },
    reducers: {
        setToken(state, action) {
            state.ACCESS_TOKEN = action.payload.data.access_token;
            Cookies.set(`AUTH`, action.payload.data.access_token, { expires: Math.ceil(action.payload.data.expires_in / 86400) });
        },
        clearToken(state) {
            state.ACCESS_TOKEN = "";
            Cookies.remove(`AUTH`);
        },
    },
});

export const { setToken, clearToken } = slice.actions;

export default slice.reducer;
