/* OAuth */
interface RequestResponse {
    code: number;
    message: string;
    data: any;
}
interface RequestOAuthLoginParams {
    username: string;
    password: string;
    code: number;
    uuid: string;
}
interface RequestOAuthUpdatePasswordData {
    oldPassword: string;
    newPassword: string;
}
export type { RequestResponse, RequestOAuthLoginParams, RequestOAuthUpdatePasswordData };
/* OAuth */

/* Item */
interface RequestItemParams {
    pageSize: number;
    pageNo: number;
    keyword?: string;
    orderType?: string;
}
interface RequestItemData {
    id?: number | null;
    name: string;
    common?: string;
    pronounce?: string;
    verb?: string;
    verbPastTense?: string;
    verbPastParticiple?: string;
    verbThirdPersonSingular?: string;
    verbPresentParticiple?: string;
    noun?: string;
    nounPlural?: string;
    adjective?: string;
    adverb?: string;
    conjunction?: string;
    preposition?: string;
    comment?: string;
}
interface RequestItemDataDelete {
    id: number | null;
}
export type { RequestItemParams, RequestItemData, RequestItemDataDelete };
/* Item */

/* TTS */
interface RequestTtsData {
    name: string;
}
export type { RequestTtsData };
/* TTS */

/* Store */
interface StoreReducerStateAuth {
    ACCESS_TOKEN: string | undefined;
}
interface StoreReducerStateCollapse {
    isCollapse: boolean;
}
interface StoreReducerStateCounter {
    value: number;
}
export type { StoreReducerStateAuth, StoreReducerStateCollapse, StoreReducerStateCounter };
/* Store */
