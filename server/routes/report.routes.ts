import { Hono } from "hono";
import getAllReport from "../controllers/Report/getAllReport";
import getReportByType from "../controllers/Report/getReportByTypes";
import getReportByRegion from "../controllers/Report/getReportByRegion";
import updateReportApproved from "../controllers/Report/updateReport";
import updateReportRejected from "../controllers/Report/updateReportRejected";
import createReport from "../controllers/Report/createReport";






const report = new Hono({ strict: false });

report.get("/allReport",getAllReport);
report.get("/reportByType",getReportByType);
report.get("/reportByRegion",getReportByRegion);

report.patch("/updateReportApproved/:reportId",updateReportApproved);
report.patch("/updateReportRejected/:reportId",updateReportRejected);

report.post("/createReport",createReport);

export default report;

