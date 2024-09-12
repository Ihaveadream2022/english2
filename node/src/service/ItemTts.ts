import { exec } from "child_process";
import { DB, SQL_SNIPPET } from "../lib/DB";
import mysql, { ResultSetHeader } from "mysql2";
import { promises } from "fs";
import util from "util";
import { TypeEntityItemTts } from "../types/ItemTts";
import { TypeEntity } from "../types/Item";
import { findByName as itemFindByName } from "../service/Item";

const execPromise = util.promisify(exec);

const findByName = async (name: string) => {
    const SQLSnippet: SQL_SNIPPET = { TABLE: "`item_tts`", SELECT: ["`id`", "`name`", "`audio`", "`audio_cn`", "`audio_source`"], WHERE: ["`name`=?"], BIND_PARAMS: [name] };
    const SQL = `SELECT ${SQLSnippet.SELECT?.join(",")} FROM ${SQLSnippet.TABLE} WHERE ${SQLSnippet.WHERE?.join("")} LIMIT 1`;
    const [result] = await DB.execute<TypeEntityItemTts[]>(SQL, SQLSnippet.BIND_PARAMS);
    return result[0];
};

const doCreate = async (data: any) => {
    const { name, audio, audioCn } = data;
    const SQLSnippet: SQL_SNIPPET = { TABLE: "`item_tts`", COLUMNS: ["`name`"], VALUES: ["?"], BIND_PARAMS: [name] };
    if (audio) {
        SQLSnippet.COLUMNS?.push("`audio`");
        SQLSnippet.VALUES?.push("?");
        SQLSnippet.BIND_PARAMS?.push(audio);
    }
    if (audioCn) {
        SQLSnippet.COLUMNS?.push("`audio_cn`");
        SQLSnippet.VALUES?.push("?");
        SQLSnippet.BIND_PARAMS?.push(audioCn);
    }
    const SQL = `INSERT INTO ${SQLSnippet.TABLE} (${SQLSnippet.COLUMNS?.join(",")}) VALUES (${SQLSnippet.VALUES?.join(",")})`;
    return await DB.execute<ResultSetHeader>(SQL, SQLSnippet.BIND_PARAMS);
};

const doUpdate = async (data: any, keyName: string) => {
    const { name, audio, audioCn } = data;
    const SQLSnippet: SQL_SNIPPET = { TABLE: "`item_tts`", WHERE: ["`name`=?"], SET: ["`name`=?"], BIND_PARAMS: [name] };
    if (audio) {
        SQLSnippet.SET?.push("`audio`=?");
        SQLSnippet.BIND_PARAMS?.push(audio);
    }
    if (audioCn) {
        SQLSnippet.SET?.push("`audio_cn`=?");
        SQLSnippet.BIND_PARAMS?.push(audioCn);
    }
    SQLSnippet.BIND_PARAMS?.push(keyName);
    const SQL = `UPDATE ${SQLSnippet.TABLE} SET ${SQLSnippet.SET?.join(",")} WHERE ${SQLSnippet.WHERE?.join("")}`;
    console.log(mysql.format(SQL, SQLSnippet.BIND_PARAMS));
    return await DB.execute<ResultSetHeader>(SQL, SQLSnippet.BIND_PARAMS);
};

const createAudio = async (data: any, keyName?: string) => {
    let nameString = "";
    const { name, common, noun_plural, verb_past_tense, verb_past_participle, verb_present_participle } = data;
    const normalPast1 = `${name}d`;
    const normalPast2 = `${name}ed`;
    const normalPast3 = `${name.slice(0, -1)}ied`;
    nameString = name;
    if (verb_past_tense && verb_past_tense !== normalPast1 && verb_past_tense !== normalPast2 && verb_past_participle !== normalPast3) {
        nameString += `, ${verb_past_tense}`;
    }
    if (verb_past_participle && verb_past_participle !== normalPast1 && verb_past_participle !== normalPast2 && verb_past_participle !== normalPast3) {
        nameString += `, ${verb_past_participle}`;
    }
    if (verb_present_participle && verb_present_participle !== `${name}ing` && verb_present_participle !== `${name.slice(0, -1)}ing`) {
        nameString += `, ${verb_present_participle}`;
    }
    if (noun_plural && noun_plural !== `${name}s` && noun_plural !== `${name}es` && noun_plural !== `${name.slice(0, -1)}ies`) {
        nameString += `, ${noun_plural}`;
    }
    const scriptPath = `python ${process.cwd()}/scripts/english.py`;
    const pathEN = `${process.cwd()}/uploads/${name.replace(" ", "_")}.wav`;
    const pathCN = `${process.cwd()}/uploads/${name.replace(" ", "_")}_cn.wav`;
    try {
        await execPromise(`${scriptPath} "${nameString}" "1" "${pathEN}"`);
        await execPromise(`${scriptPath} "${common}" "2" "${pathCN}"`);
        const file1 = await promises.readFile(pathEN);
        const audioEN = Buffer.from(file1).toString("base64");
        const file2 = await promises.readFile(pathCN);
        const audioCN = Buffer.from(file2).toString("base64");
        await promises.rm(pathEN);
        await promises.rm(pathCN);
        const data = { name, audio: audioEN, audioCn: audioCN };
        keyName ? await doUpdate(data, keyName) : await doCreate(data);
    } catch (err) {
        throw new Error((err as Error).message);
    }
};

const genAudio = async (name: string) => {
    try {
        let nameString = name;
        const [one] = await itemFindByName(name);
        if (one[0]) {
            const item: TypeEntity = one[0];
            const normalPast1 = `${name}d`;
            const normalPast2 = `${name}ed`;
            const normalPast3 = `${name.slice(0, -1)}ied`;
            if (item.verb_past_tense && item.verb_past_tense !== normalPast1 && item.verb_past_tense !== normalPast2 && item.verb_past_participle !== normalPast3) {
                nameString += `, ${item.verb_past_tense}`;
            }
            if (item.verb_past_participle && item.verb_past_participle !== normalPast1 && item.verb_past_participle !== normalPast2 && item.verb_past_participle !== normalPast3) {
                nameString += `, ${item.verb_past_participle}`;
            }
            if (item.verb_present_participle && item.verb_present_participle !== `${name}ing` && item.verb_present_participle !== `${name.slice(0, -1)}ing`) {
                nameString += `, ${item.verb_present_participle}`;
            }
            if (item.noun_plural && item.noun_plural !== `${name}s` && item.noun_plural !== `${name}es` && item.noun_plural !== `${name.slice(0, -1)}ies`) {
                nameString += `, ${item.noun_plural}`;
            }
        }
        const path = `${process.cwd()}/uploads/${name.replace(" ", "_")}.wav`;
        await execPromise(`python ${process.cwd()}/scripts/english.py "${nameString}" "1" "${path}"`);
        const file = await promises.readFile(path);
        const audio = Buffer.from(file).toString("base64");
        await promises.rm(path);
        return audio;
    } catch (err) {
        throw new Error((err as Error).message);
    }
};

export { findByName, createAudio, genAudio };
