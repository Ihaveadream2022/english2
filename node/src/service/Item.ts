import mysql, { DB, ResultSetHeader } from "../lib/DB";
import { TypeEntity, TypeCount, TypeRequest } from "../types/Item";

const SQL_TABLE = "`item`";
const SQL_TABLE_ITEM_TTS = "`item_tts`";

const doList = async (data: TypeRequest) => {
    const { keyword, orderType, pageSize, pageNo } = data;
    const offset: number = pageSize * (pageNo - 1);
    const SQL_SELECT = ["`item`.`id`", "`item`.`name`", "`item`.`common`", "`item`.`pronounce`", "`item`.`noun`", "`item`.`noun_plural`", "`item`.`verb`", "`item`.`verb_past_tense`", "`item`.`verb_past_participle`", "`item`.`verb_third_person_singular`", "`item`.`verb_present_participle`", "`item`.`adjective`", "`item`.`adverb`", "`item`.`conjunction`", "`item`.`preposition`", "`item`.`comment`", "`item_tts`.`id` AS `it_id`", "`item_tts`.`name` AS `it_name`", "`item_tts`.`audio` AS `it_audio`", "`item_tts`.`audio_cn` AS `it_audio_cn`", "`item_tts`.`audio_source` AS `it_audio_source`"];
    const SQL_WHERE = ["(1=1)"];
    const SQL_ORDER_BY = orderType === "ASC" ? "`item`.`id` ASC" : "`item`.`id` DESC";
    const SQL_LEFT_JOIN = `${SQL_TABLE_ITEM_TTS} ON \`item_tts\`.\`name\`=\`item\`.\`name\``;
    const SQL_List_Params: any[] = [];
    if (keyword) {
        SQL_WHERE.push(` AND (\`item\`.\`name\` LIKE concat('%',?,'%') 
            OR \`item\`.\`common\` LIKE concat('%',?,'%') 
            OR \`item\`.\`noun\` LIKE concat('%',?,'%')
            OR \`item\`.\`verb\` LIKE concat('%',?,'%')
            OR \`item\`.\`adjective\` LIKE concat('%',?,'%')
            OR \`item\`.\`adverb\` LIKE concat('%',?,'%')
            OR \`item\`.\`preposition\` LIKE concat('%',?,'%')
            OR \`item\`.\`conjunction\` LIKE concat('%',?,'%')
            OR \`item\`.\`comment\` LIKE concat('%',?,'%'))`);
        SQL_List_Params.push(keyword, keyword, keyword, keyword, keyword, keyword, keyword, keyword, keyword);
    }
    const SQL_Count = `SELECT count(${SQL_SELECT[0]}) as count FROM ${SQL_TABLE} LEFT JOIN ${SQL_LEFT_JOIN} WHERE ${SQL_WHERE.join("")} LIMIT 1`;
    const [total] = await DB.query<TypeCount[]>(SQL_Count, SQL_List_Params);
    console.log(mysql.format(SQL_Count, SQL_List_Params));

    SQL_List_Params.push(offset, pageSize);
    const SQL_List = `SELECT ${SQL_SELECT.join(",")} FROM ${SQL_TABLE} LEFT JOIN ${SQL_LEFT_JOIN} WHERE ${SQL_WHERE.join("")} ORDER BY ${SQL_ORDER_BY} LIMIT ?,?`;
    console.log(mysql.format(SQL_List, SQL_List_Params));const [list] = await DB.query<TypeEntity[]>(SQL_List, SQL_List_Params);
    console.log(mysql.format(SQL_List, SQL_List_Params));

    return { total: total[0].count, pageSize, pageNo, list };
};

const doInsert = async (data: any) => {
    const { name, common, pronounce, noun, nounPlural, verb, verbPastTense, verbPastParticiple, verbThirdPersonSingular, verbPresentParticiple, adjective, adverb, conjunction, preposition, comment } = data;
    const SQL_COLUMNS = ["`name`"];
    const SQL_VALUES = ["?"];
    const SQL_Params = [name];
    if (common) {
        SQL_COLUMNS.push("`common`");
        SQL_VALUES.push("?");
        SQL_Params.push(common);
    }
    if (pronounce) {
        SQL_COLUMNS.push("`pronounce`");
        SQL_VALUES.push("?");
        SQL_Params.push(pronounce);
    }
    if (noun) {
        SQL_COLUMNS.push("`noun`");
        SQL_VALUES.push("?");
        SQL_Params.push(noun);
    }
    if (nounPlural) {
        SQL_COLUMNS.push("`noun_plural`");
        SQL_VALUES.push("?");
        SQL_Params.push(nounPlural);
    }
    if (verb) {
        SQL_COLUMNS.push("`verb`");
        SQL_VALUES.push("?");
        SQL_Params.push(verb);
    }
    if (verbPastTense) {
        SQL_COLUMNS.push("`verb_past_tense`");
        SQL_VALUES.push("?");
        SQL_Params.push(verbPastTense);
    }
    if (verbPastParticiple) {
        SQL_COLUMNS.push("`verb_past_participle`");
        SQL_VALUES.push("?");
        SQL_Params.push(verbPastParticiple);
    }
    if (verbThirdPersonSingular) {
        SQL_COLUMNS.push("`verb_third_person_singular`");
        SQL_VALUES.push("?");
        SQL_Params.push(verbThirdPersonSingular);
    }
    if (verbPresentParticiple) {
        SQL_COLUMNS.push("`verb_present_participle`");
        SQL_VALUES.push("?");
        SQL_Params.push(verbPresentParticiple);
    }
    if (adjective) {
        SQL_COLUMNS.push("`adjective`");
        SQL_VALUES.push("?");
        SQL_Params.push(adjective);
    }
    if (adverb) {
        SQL_COLUMNS.push("`adverb`");
        SQL_VALUES.push("?");
        SQL_Params.push(adverb);
    }
    if (conjunction) {
        SQL_COLUMNS.push("`conjunction`");
        SQL_VALUES.push("?");
        SQL_Params.push(conjunction);
    }
    if (preposition) {
        SQL_COLUMNS.push("`preposition`");
        SQL_VALUES.push("?");
        SQL_Params.push(preposition);
    }
    if (comment) {
        SQL_COLUMNS.push("`comment`");
        SQL_VALUES.push("?");
        SQL_Params.push(comment);
    }
    const SQL = `INSERT INTO ${SQL_TABLE} (${SQL_COLUMNS.join(",")}) VALUES (${SQL_VALUES.join(",")})`;
    console.log(mysql.format(SQL, SQL_Params));
    return await DB.execute<ResultSetHeader>(SQL, SQL_Params);
};

const doUpdate = async (data: any, ID: number) => {
    const { name, common, pronounce, noun, nounPlural, verb, verbPastTense, verbPastParticiple, verbThirdPersonSingular, verbPresentParticiple, adjective, adverb, conjunction, preposition, comment } = data;
    const SQL_WHERE = ["`id`=?"];
    const SQL_SET = ["`name`=?"];
    const SQL_Params = [name];
    if (common) {
        SQL_SET.push("`common`=?");
        SQL_Params.push(common);
    }
    if (pronounce) {
        SQL_SET.push("`pronounce`=?");
        SQL_Params.push(pronounce);
    }
    if (noun) {
        SQL_SET.push("`noun`=?");
        SQL_Params.push(noun);
    }
    if (nounPlural) {
        SQL_SET.push("`noun_plural`=?");
        SQL_Params.push(nounPlural);
    }
    if (verb) {
        SQL_SET.push("`verb`=?");
        SQL_Params.push(verb);
    }
    if (verbPastTense) {
        SQL_SET.push("`verb_past_tense`=?");
        SQL_Params.push(verbPastTense);
    }
    if (verbPastParticiple) {
        SQL_SET.push("`verb_past_participle`=?");
        SQL_Params.push(verbPastParticiple);
    }
    if (verbThirdPersonSingular) {
        SQL_SET.push("`verb_third_person_singular`=?");
        SQL_Params.push(verbThirdPersonSingular);
    }
    if (verbPresentParticiple) {
        SQL_SET.push("`verb_present_participle`=?");
        SQL_Params.push(verbPresentParticiple);
    }
    if (adjective) {
        SQL_SET.push("`adjective`=?");
        SQL_Params.push(adjective);
    }
    if (adverb) {
        SQL_SET.push("`adverb`=?");
        SQL_Params.push(adverb);
    }
    if (conjunction) {
        SQL_SET.push("`conjunction`=?");
        SQL_Params.push(conjunction);
    }
    if (preposition) {
        SQL_SET.push("`preposition`=?");
        SQL_Params.push(preposition);
    }
    if (comment) {
        SQL_SET.push("`comment`=?");
        SQL_Params.push(comment);
    }
    SQL_Params.push(ID);
    const SQL = `UPDATE ${SQL_TABLE} SET ${SQL_SET.join(",")} WHERE ${SQL_WHERE.join("")}`;
    console.log(mysql.format(SQL, SQL_Params));
    return await DB.execute<ResultSetHeader>(SQL, SQL_Params);
};

const doDelete = async (ID: number) => {
    const SQL_WHERE = ["`id`=?"];
    const SQL = `DELETE FROM ${SQL_TABLE} WHERE ${SQL_WHERE.join("")}`;
    const SQL_Params = [ID];
    console.log(mysql.format(SQL, SQL_Params));
    return await DB.execute<ResultSetHeader>(SQL, SQL_Params);
};

const exist = async (name: string) => {
    try {
        const SQL_Params = [name];
        const SQL_SELECT = ["`id`", "`name`"];
        const SQL_WHERE = ["`name`=?"];
        const SQL = `SELECT ${SQL_SELECT.join(",")} FROM ${SQL_TABLE} WHERE ${SQL_WHERE.join("")}`;
        return await DB.execute<TypeEntity[]>(SQL, SQL_Params);
    } catch (err) {
        throw new Error((err as Error).message);
    }
};

export { doList, doInsert, doUpdate, doDelete, exist };
