import { Hono } from "hono";
import Register from "../controllers/Auth/register";
import Login from "../controllers/Auth/login";







const auth = new Hono({ strict: false });

auth.post("/register", Register);
auth.post("/login", Login);


export default auth;

