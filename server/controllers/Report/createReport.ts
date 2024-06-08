import { Context } from "hono";
import createReportService from "../../services/Report/createReport";
import checkRegionService from "../../services/Report/checkRegion";
import { Report_province, Report_gradeLevel, Report_typeOfBullying, Report_region } from "@prisma/client";

const createReport = async (c: Context) => {
  const startTime = new Date().getTime();

  try {
    const {
      dateOfIncident,
      schoolName,
      province,
      gradeLevel,
      typeOfBullying,
      whatHappened,
    } = await c.req.json();

    // Validate input data
    if (!dateOfIncident || !schoolName || !province || !gradeLevel || !typeOfBullying || !whatHappened) {
      return c.json({
        success: false,
        message: 'Missing required fields',
      }, 400);
    }

    const picture = "";

    const region = checkRegionService(province) as keyof typeof Report_region;

    // Convert the input values to the correct enum values
    const newReport = await createReportService({
      dateOfIncident,
      schoolName,
      province: province as Report_province,
      gradeLevel: gradeLevel as Report_gradeLevel,
      typeOfBullying: typeOfBullying as Report_typeOfBullying,
      whatHappened,
      picture,
      region,
    });

    const endTime = new Date().getTime();
    const executionTime = endTime - startTime;

    console.log(`${executionTime} ms to handle the request`);
    
    return c.json({
      success: true,
      payload: newReport,
      message: "Report created successfully",
      executionTime: `${executionTime} ms`
    });
  } catch (e) {
    const endTime = new Date().getTime();
    const executionTime = endTime - startTime;

    console.error(e);
    return c.json({
      success: false,
      message: e instanceof Error ? e.message : 'An unknown error occurred',
      executionTime: `${executionTime} ms`
    }, 500);
  }
};

export default createReport;
