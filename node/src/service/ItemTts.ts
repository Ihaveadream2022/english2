import { exec } from "child_process";
import mysql, { DB, ResultSetHeader } from "../lib/DB";
import { promises } from "fs";
import util from "util";

const execPromise = util.promisify(exec);
const SQL_TABLE = "`item_tts`";

const doCreate = async (data: any) => {
    const { name, audio, audioCn } = data;
    const SQL_COLUMNS = ["`name`"];
    const SQL_VALUES = ["?"];
    const SQL_Params = [name];
    if (audio) {
        SQL_COLUMNS.push("`audio`");
        SQL_VALUES.push("?");
        SQL_Params.push(audio);
    }
    if (audioCn) {
        SQL_COLUMNS.push("`audio_cn`");
        SQL_VALUES.push("?");
        SQL_Params.push(audioCn);
    }
    const SQL = `INSERT INTO ${SQL_TABLE} (${SQL_COLUMNS.join(",")}) VALUES (${SQL_VALUES.join(",")})`;
    return await DB.execute<ResultSetHeader>(SQL, SQL_Params);
};

const doUpdate = async (data: any, keyName: string) => {
    const { name, audio, audioCn } = data;
    const SQL_WHERE = ["`name`=?"];
    const SQL_SET = ["`name`=?"];
    const SQL_Params = [name];
    if (audio) {
        SQL_SET.push("`audio`=?");
        SQL_Params.push(audio);
    }
    if (audioCn) {
        SQL_SET.push("`audio_cn`=?");
        SQL_Params.push(audioCn);
    }
    SQL_Params.push(keyName);
    const SQL = `UPDATE ${SQL_TABLE} SET ${SQL_SET.join(",")} WHERE ${SQL_WHERE.join("")}`;
    // console.log(mysql.format(SQL, SQL_Params));
    return await DB.execute<ResultSetHeader>(SQL, SQL_Params);
};

const createAudio = async (data: any, keyName?: string) => {
    let nameString = "";
    const { name, common, nounPlural, verbPastTense, verbPastParticiple, verbPresentParticiple } = data;
    const normalPlural1 = `${name}s`;
    const normalPlural2 = `${name}es`;
    const normalPlural3 = `${name.slice(0, -1)}ies`;
    const normalPast1 = `${name}d`;
    const normalPast2 = `${name}ed`;
    const normalPast3 = `${name.slice(0, -1)}ied`;
    const normalPresent1 = `${name}ing`;
    const normalPresent2 = `${name.slice(0, -1)}ing`;
    nameString = name;
    let displayAll = false;
    if (verbPastTense && verbPastTense !== normalPast1 && verbPastTense !== normalPast2 && verbPastParticiple !== normalPast3) {
        displayAll = true;
    }
    if (verbPastParticiple && verbPastParticiple !== normalPast1 && verbPastParticiple !== normalPast2 && verbPastParticiple !== normalPast3) {
        displayAll = true;
    }
    if (verbPresentParticiple && verbPresentParticiple !== normalPresent1 && verbPresentParticiple !== normalPresent2) {
        displayAll = true;
    }
    if (displayAll) {
        nameString += `, ${verbPastTense}, ${verbPastParticiple}, ${verbPresentParticiple}`;
    }
    if (nounPlural && nounPlural !== normalPlural1 && nounPlural !== normalPlural2 && nounPlural !== normalPlural3) {
        nameString += `, ${nounPlural}`;
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

export { createAudio };
