import mysql, { DB } from "../lib/DB";
import { TypeEntity } from "../types/User";

const SQL_TABLE = "`user`";

const findByID = async (ID: number) => {
    try {
        const SQL_Params = [ID];
        const SQL_SELECT = ["`id`", "`username`", "`password_hashed`", "`status`"];
        const SQL_WHERE = ["`id`=?"];
        const SQL = `SELECT ${SQL_SELECT.join(",")} FROM ${SQL_TABLE} WHERE ${SQL_WHERE.join("")} LIMIT 1`;
        const [result] = await DB.execute<TypeEntity[]>(SQL, SQL_Params);
        return result[0];
    } catch (err) {
        throw new Error((err as Error).message);
    }
};

const findByUsername = async (username: string) => {
    try {
        const SQL_Params = [username];
        const SQL_SELECT = ["`id`", "`username`", "`password_hashed`", "`status`"];
        const SQL_WHERE = ["`username`=?"];
        const SQL = `SELECT ${SQL_SELECT.join(",")} FROM ${SQL_TABLE} WHERE ${SQL_WHERE.join("")} LIMIT 1`;
        const [result] = await DB.execute<TypeEntity[]>(SQL, SQL_Params);
        return result[0];
    } catch (err) {
        throw new Error((err as Error).message);
    }
};

export { findByID, findByUsername };
