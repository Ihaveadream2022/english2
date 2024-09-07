import requestBase from "./requestBase";
import { RequestResponse, RequestItemParams, RequestItemData, RequestItemDataDelete, RequestTtsData, RequestEssayParams, RequestEssayData, RequestEssayDataDelete, RequestGrammarParams, RequestGrammarData, RequestGrammarDataDelete } from "../types";

export const itemList = (params: RequestItemParams): Promise<RequestResponse> =>
    requestBase.request({
        method: "get",
        url: "/items",
        params: params,
    });
export const itemAdd = (data: RequestItemData): Promise<RequestResponse> =>
    requestBase.request({
        method: "post",
        url: "/items",
        data: data,
    });

export const itemEdit = (data: RequestItemData): Promise<RequestResponse> => {
    return requestBase.request({
        method: "put",
        url: "/items/" + data.id,
        data: data,
    });
};
export const itemDelete = (data: RequestItemDataDelete): Promise<RequestResponse> =>
    requestBase.request({
        method: "delete",
        url: "/items/" + data.id,
    });

// TTS
export const ttsGet = (params: RequestTtsData): Promise<RequestResponse> =>
    requestBase.request({
        method: "get",
        url: "/tts/get64",
        params: params,
    });
// TTS

// Essay
export const essayList = (params: RequestEssayParams): Promise<RequestResponse> =>
    requestBase.request({
        method: "get",
        url: "/essays",
        params: params,
    });
export const essayAdd = (data: RequestEssayData): Promise<RequestResponse> =>
    requestBase.request({
        method: "post",
        url: "/essays",
        data: data,
    });
export const essayEdit = (data: RequestEssayData): Promise<RequestResponse> => {
    return requestBase.request({
        method: "put",
        url: "/essays/" + data.id,
        data: data,
    });
};
export const essayDelete = (data: RequestEssayDataDelete): Promise<RequestResponse> =>
    requestBase.request({
        method: "delete",
        url: "/essays/" + data.id,
    });
// Essay

// Grammars
export const grammarList = (params: RequestGrammarParams): Promise<RequestResponse> =>
    requestBase.request({
        method: "get",
        url: "/grammars",
        params: params,
    });
export const grammarAdd = (data: RequestGrammarData): Promise<RequestResponse> =>
    requestBase.request({
        method: "post",
        url: "/grammars",
        data: data,
    });
export const grammarEdit = (data: RequestGrammarData): Promise<RequestResponse> => {
    return requestBase.request({
        method: "put",
        url: "/grammars/" + data.id,
        data: data,
    });
};
export const grammarDelete = (data: RequestGrammarDataDelete): Promise<RequestResponse> =>
    requestBase.request({
        method: "delete",
        url: "/grammars/" + data.id,
    });
// Grammars
