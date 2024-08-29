import { createSlice } from "@reduxjs/toolkit";

const slice = createSlice({
    name: "collapse",
    initialState: {
        isCollapse: false,
    },
    reducers: {
        toggle: (state) => {
            state.isCollapse = !state.isCollapse;
        },
    },
});

export const { toggle } = slice.actions;

export default slice.reducer;
