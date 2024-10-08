import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { StoreReducerStateCounter } from "../../types";

const initialState: StoreReducerStateCounter = {
    value: 0,
};
const slice = createSlice({
    name: "counter",
    initialState,
    reducers: {
        increment: (state) => {
            state.value += 1;
        },
        decrement: (state) => {
            state.value -= 1;
        },
        incrementByAmount: (state, action: PayloadAction<number>) => {
            state.value += action.payload;
        },
    },
});

export const { increment, decrement, incrementByAmount } = slice.actions;

export default slice.reducer;
