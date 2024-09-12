import { Request, Response, NextFunction } from "express";
import { ServiceError } from "../exception/CustomError";
import { findByName, genAudio } from "../service/ItemTts";

const conOne = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const name: string = req.query.name?.toString() || "";
        if (!name) {
            throw new ServiceError("Name is required");
        }
        const one = await findByName(name);
        res.json({
            code: one ? 1 : 0,
            message: one ? "success" : "failed",
            data: one ? one : {},
        });
    } catch (error) {
        next(error);
    }
};

const conGenerate = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const name: string = req.query.name?.toString() || "";
        if (!name) {
            throw new ServiceError("Name is required");
        }
        const audio: string = await genAudio(name);
        res.json({
            code: 1,
            message: "success",
            data: audio,
        });
    } catch (error) {
        next(error);
    }
};

export { conOne, conGenerate };
