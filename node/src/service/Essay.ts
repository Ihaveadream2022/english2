import mysql, { DB, ResultSetHeader } from "../lib/DB";
import { TypeEntity, TypeCount, TypeRequest } from "../types/Item";

const SQL_TABLE = "`essay`";

const doList = async (data: TypeRequest) => {
    const { keyword, orderType, pageSize, pageNo } = data;
    const offset: number = pageSize * (pageNo - 1);
    const SQL_SELECT = ["`id`", "`title`", "`content`", "`vocabulary`"];
    const SQL_WHERE = ["(1=1)"];
    const SQL_ORDER_BY = orderType === "ASC" ? "`id` ASC" : "`id` DESC";
    const SQL_List_Params: any[] = [];
    if (keyword) {
        SQL_WHERE.push(` AND (\`title\` LIKE concat('%',?,'%') OR \`content\` LIKE concat('%',?,'%') OR \`vocabulary\` LIKE concat('%',?,'%'))`);
        SQL_List_Params.push(keyword, keyword, keyword);
    }
    const SQL_Count = `SELECT count(${SQL_SELECT[0]}) as count FROM ${SQL_TABLE} WHERE ${SQL_WHERE.join("")} LIMIT 1`;
    const [total] = await DB.query<TypeCount[]>(SQL_Count, SQL_List_Params);
    console.log(mysql.format(SQL_Count, SQL_List_Params));

    SQL_List_Params.push(offset, pageSize);
    const SQL_List = `SELECT ${SQL_SELECT.join(",")} FROM ${SQL_TABLE} WHERE ${SQL_WHERE.join("")} ORDER BY ${SQL_ORDER_BY} LIMIT ?,?`;
    const [list] = await DB.query<TypeEntity[]>(SQL_List, SQL_List_Params);
    console.log(mysql.format(SQL_List, SQL_List_Params));

    return { total: total[0].count, pageSize, pageNo, list };
};

const doInsert = async (data: any) => {
    const { title, content, vocabulary } = data;
    const SQL_COLUMNS = ["`title`"];
    const SQL_VALUES = ["?"];
    const SQL_Params = [title];
    if (content) {
        SQL_COLUMNS.push("`content`");
        SQL_VALUES.push("?");
        SQL_Params.push(content);
    }
    if (vocabulary) {
        SQL_COLUMNS.push("`vocabulary`");
        SQL_VALUES.push("?");
        SQL_Params.push(vocabulary);
    }
    const SQL = `INSERT INTO ${SQL_TABLE} (${SQL_COLUMNS.join(",")}) VALUES (${SQL_VALUES.join(",")})`;
    console.log(mysql.format(SQL, SQL_Params));
    return await DB.execute<ResultSetHeader>(SQL, SQL_Params);
};

const doUpdate = async (data: any, ID: number) => {
    const { title, content, vocabulary } = data;
    const SQL_WHERE = ["`id`=?"];
    const SQL_SET = ["`title`=?"];
    const SQL_Params = [title];
    if (content) {
        SQL_SET.push("`content`=?");
        SQL_Params.push(content);
    }
    if (vocabulary) {
        SQL_SET.push("`vocabulary`=?");
        SQL_Params.push(vocabulary);
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
