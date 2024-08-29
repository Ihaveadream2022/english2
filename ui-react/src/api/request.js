import requestBase from "./requestBase.js";

export const itemList = (params) =>
    requestBase.request({
        method: "get",
        url: "/items",
        params: params,
    });
export const itemAdd = (data) =>
    requestBase.request({
        method: "post",
        url: "/items",
        data: data,
    });
export const itemEdit = (data) =>
    requestBase.request({
        method: "put",
        url: "/items/" + data.id,
        data: data,
    });
export const itemDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: "/items/" + data.id,
    });
