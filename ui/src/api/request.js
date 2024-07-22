import segments from "./segments";
import requestBase from "./requestBase";

// User
export const userList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/users",
        params: params,
    });
export const userAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/users",
        data: data,
    });
export const userEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/users/" + data.id,
        data: data,
    });
export const userDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/users/" + data.id,
    });

// Role
export const roleList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/roles",
        params: params,
    });
export const roleAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/roles",
        data: data,
    });
export const roleEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/roles/" + data.id,
        data: data,
    });
export const roleDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/roles/" + data.id,
    });
export const roleBatchDelete = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/roles/batchDelete",
        data: data,
    });
export const profileUpdatePassword = (paramters) => requestBase.put(segments.urlAss + "/profile/updatePassword", paramters);

// Item
export const itemList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/items",
        params: params,
    });
export const itemAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/items",
        data: data,
    });
export const itemEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/items/" + data.id,
        data: data,
    });
export const itemDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/items/" + data.id,
    });
export const itemGenerate = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/items/generate",
    });
export const itemExampleEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/item-examples/" + data.id,
        data: data,
    });
export const itemStatics = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/items/statics",
    });

// Grammar
export const grammarList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/grammars",
        params: params,
    });
export const grammarAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/grammars",
        data: data,
    });
export const grammarEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/grammars/" + data.id,
        data: data,
    });
export const grammarDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/grammars/" + data.id,
    });
export const grammarGenerate = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/grammars/generate",
    });

// Placeholder
export const placeholder = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/placeholder",
        params: params,
    });

export const GitPush = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/git/push",
    });

// Synonym
export const synonymList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/synonyms",
        params: params,
    });
export const synonymAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/synonyms",
        data: data,
    });
export const synonymEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/synonyms/" + data.id,
        data: data,
    });
export const synonymDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/synonyms/" + data.id,
    });
export const synonymGenerate = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/synonyms/generate",
    });

// Similars
export const similarList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/similars",
        params: params,
    });
export const similarAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/similars",
        data: data,
    });
export const similarEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/similars/" + data.id,
        data: data,
    });
export const similarDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/similars/" + data.id,
    });
export const similarGenerate = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/similars/generate",
    });

// Reading
export const readingList = (params) =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/readings",
        params: params,
    });
export const readingAdd = (data) =>
    requestBase.request({
        method: "post",
        url: segments.urlAss + "/readings",
        data: data,
    });
export const readingEdit = (data) =>
    requestBase.request({
        method: "put",
        url: segments.urlAss + "/readings/" + data.id,
        data: data,
    });
export const readingDelete = (data) =>
    requestBase.request({
        method: "delete",
        url: segments.urlAss + "/readings/" + data.id,
    });
export const readingGenerate = () =>
    requestBase.request({
        method: "get",
        url: segments.urlAss + "/readings/generate",
    });
