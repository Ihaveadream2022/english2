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
    pageSize?: number;
    pageNo?: number;
    keyword?: string;
    orderType?: string;
    byCommon?: number;
}
interface RequestItemData {
    id?: number;
    name: string;
    common: string;
    pronounce?: string;
    verb?: string;
    verb_past_tense?: string;
    verb_past_participle?: string;
    verb_third_person_singular?: string;
    verb_present_participle?: string;
    noun?: string;
    noun_plural?: string;
    adjective?: string;
    adverb?: string;
    conjunction?: string;
    preposition?: string;
    comment?: string;
    sound?: string;
}
interface RequestItemDataDelete {
    id: number;
}
export type { RequestItemParams, RequestItemData, RequestItemDataDelete };
/* Item */

/* TTS */
interface RequestTtsData {
    id?: number;
    content: string;
    type: number;
}
interface PlayLoopAudio {
    playing: null | boolean;
    playingIndex: number;
}
export type { RequestTtsData, PlayLoopAudio };
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

/* Essay */
interface RequestEssayParams {
    pageSize: number;
    pageNo: number;
    keyword?: string;
    orderType?: string;
}
interface RequestEssayData {
    id?: number;
    title: string;
    content: string;
    vocabulary?: string;
}
interface RequestEssayDataDelete {
    id: number;
}
interface VocabularyData {
    id?: number;
    key: string;
    value: string;
    form: string;
}
export type { RequestEssayParams, RequestEssayData, RequestEssayDataDelete, VocabularyData };
/* Essay */

/* Grammar */
interface RequestGrammarParams {
    pageSize: number;
    pageNo: number;
    keyword?: string;
    orderType?: string;
}
interface RequestGrammarData {
    id?: number;
    name: string;
    content: string;
    sort?: number;
}
interface RequestGrammarDataDelete {
    id: number;
}
export type { RequestGrammarParams, RequestGrammarData, RequestGrammarDataDelete };
/* Grammar */
