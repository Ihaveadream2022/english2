import { createClient } from "redis";
import { SystemLogger } from "./Log";

const client = createClient({
    url: process.env.REDIS_URL,
    password: process.env.REDIS_PASSWORD,
    socket: {
        connectTimeout: 10000, // 连接超时时间
        timeout: 10000, // 操作超时时间
    },
});

client.on("error", (err) => {
    SystemLogger.error("Redis client failed:", err);
});

client.connect().catch((err) => {
    SystemLogger.error("Redis connection failed:", err);
});

export default client;
