import express from "express";
import { login, captcha } from "../controller/LoginController";
import { checkAuthorized } from "../middleware/AuthJWT";

const router = express.Router();

router.get("/captcha", captcha);
router.post("/login", checkAuthorized, login);

export default router;
