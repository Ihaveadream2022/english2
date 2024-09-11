import { Request, Response, NextFunction } from "express";
import { findByUsername } from "../service/User";
import { ServiceError } from "../exception/CustomError";
import { checkString } from "../service/Bcrypt";
import jwt from "jsonwebtoken";
import redis from "../lib/Redis";
import { generateUUID } from "../utils/UUID";
import svgCaptcha from "svg-captcha";

export const login = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const secret = process.env.APP_JWT_SECRET;
        const expire = process.env.APP_JWT_EXPIRE;
        const { username = "", password = "", uuid = "", code = "" } = req.body;
        if (!secret || !expire) throw new Error("Env error: secret or expire is required.");
        if (!username || !password) throw new ServiceError("username and password is required.");
        if (!uuid || !code) throw new ServiceError("uuid and code is required.");

        const value = await redis.get(uuid);
        if (value !== code) throw new ServiceError("captcha is wrong.");
        const user = await findByUsername(username);
        if (!user) throw new ServiceError("username or password is wrong.");
        const match = await checkString(password, user.password_hashed);
        if (!match) throw new ServiceError("username or password is wrong.");

        const token = jwt.sign({ id: user.id, username: user.username }, secret, { expiresIn: parseInt(expire) });

        res.json({
            code: 1,
            message: "Success",
            data: { access_token: token, expires_in: Math.floor(Date.now() / 1000) + parseInt(expire) },
        });
    } catch (error) {
        next(error);
    }
};

export const captcha = async (req: Request, res: Response) => {
    try {
        const captcha = svgCaptcha.create({
            noise: 8, // 噪点线条
            color: true, // 彩色
            background: "#6667a0", // 背景颜色
        });
        const uuid = generateUUID();
        const base64Image = Buffer.from(captcha.data).toString("base64");
        await redis.setEx(`captcha-${uuid}`, 300, captcha.text.toLowerCase());
        res.json({
            code: 1,
            message: "Success",
            data: { uuid: `captcha-${uuid}`, image: base64Image },
        });
    } catch (err) {
        throw err;
    }
};
