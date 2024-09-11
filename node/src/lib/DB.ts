import mysql from "mysql2/promise";
import { ResultSetHeader } from "mysql2";

const pool = mysql.createPool({
    host: process.env.MYSQL_HOST || "localhost", // 服务器地址
    port: process.env.MYSQL_PORT ? parseInt(process.env.MYSQL_PORT) : 3306, // 端口
    user: process.env.MYSQL_USER || "user", // 数据库用户名
    password: process.env.MYSQL_PASSWORD || "password", // 数据库密码
    database: process.env.MYSQL_DATABASE || "database", // 数据库名称
    waitForConnections: true,
    connectionLimit: 10, // 最大连接数
    queueLimit: 0,
});

export default mysql;

export { pool as DB, ResultSetHeader };
