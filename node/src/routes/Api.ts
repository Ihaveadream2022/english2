import express, { Request, Response } from "express";
import { doList as LCDoList, doInsert as LCDoInsert, doUpdate as LCDoUpdate, doDelete as LCDoDelete } from "../controller/ListeningController";
import { conList as ECList, conInsert as ECInsert, conUpdate as ECUpdate, conDelete as ECDelete } from "../controller/EssayController";
import { conList as ICList, conInsert as ICInsert, conUpdate as ICUpdate, conDelete as ICDelete } from "../controller/ItemController";

const router = express.Router();

router.get("/", (res: Response) => {
    res.json({ code: 1, message: "success" });
});

router.get("/items", ICList);
router.post("/items", ICInsert);
router.put("/items/:id", ICUpdate);
router.delete("/items/:id", ICDelete);

router.get("/listening", LCDoList);
router.post("/listening", LCDoInsert);
router.put("/listening/:id", LCDoUpdate);
router.delete("/listening/:id", LCDoDelete);

router.get("/essays", ECList);
router.post("/essays", ECInsert);
router.put("/essays/:id", ECUpdate);
router.delete("/essays/:id", ECDelete);

router.post("/logout", (req: Request, res: Response) => {
    res.json({ code: 1, message: "success" });
});

export default router;