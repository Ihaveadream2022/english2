import Cookies from "js-cookie";

const env = import.meta.env;
const store = {
    namespaced: true,
    state: {
        sidemenuCollapse: Cookies.get(`${env.VITE_DATA_PREFIX}MENU_COLLAPSE`) !== undefined ? Cookies.get(`${env.VITE_DATA_PREFIX}MENU_COLLAPSE`) : 0,
    },
    mutations: {
        toggleSidemenuCollapse: (state, value) => {
            state.sidemenuCollapse = value;
            Cookies.set(`${env.VITE_DATA_PREFIX}MENU_COLLAPSE`, value);
        },
    },
    actions: {
        toggleSidemenuCollapse({ commit }, value) {
            commit("toggleSidemenuCollapse", value);
        },
    },
    getters: {
        sidemenuCollapse: (state) => parseInt(state.sidemenuCollapse),
    },
};

export default store;
