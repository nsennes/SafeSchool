import { Hono } from "hono";
import getAllReport from "../controllers/Report/getAllReport";
import getReportByType from "../controllers/Report/getReportByTypes";
import getReportByRegion from "../controllers/Report/getReportByRegion";




const report = new Hono({ strict: false });

report.get("/allReport",getAllReport);
report.get("/reportByType",getReportByType);
report.get("/reportByRegion",getReportByRegion);

export default report;

