import { Request, Response, NextFunction } from "express";
import { ServiceError } from "../exception/CustomError";
import { generateAudio } from "../service/Tts";

const conGenerate = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const type = Number(req.query.type);
        if (isNaN(type)) {
            throw new ServiceError("Invalid type parameter");
        }
        if (![1, 2].includes(type)) {
            throw new ServiceError("Invalid type parameter");
        }
        const content = req.query.content || "";
        if (typeof content !== "string") {
            throw new ServiceError("Content is required");
        }
        const audio: string = await generateAudio(content, type);
        res.json({
            code: 1,
            message: "success",
            data: audio,
        });
    } catch (error) {
        next(error);
    }
};

export { conGenerate };
