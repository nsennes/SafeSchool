import { Report_gradeLevel, Report_province, Report_typeOfBullying, Report_status, Report_region } from "@prisma/client";
import prisma from "../prisma/prisma";

interface CreateReportData {
  dateOfIncident: string;
  schoolName: string;
  province: Report_province;
  gradeLevel: Report_gradeLevel;
  typeOfBullying: Report_typeOfBullying;
  region: Report_region;
  whatHappened: string;
  picture: string;
}

const createReportService = async (data: CreateReportData) => {
  try {
    const newReport = await prisma.report.create({
      data: {
        dateOfIncident: new Date(data.dateOfIncident),
        schoolName: data.schoolName,
        province: data.province,
        gradeLevel: data.gradeLevel,
        typeOfBullying: data.typeOfBullying,
        whatHappened: data.whatHappened,
        picture: data.picture,
        status: Report_status.pending, // Status is always set to pending
        region: data.region,
      },
    });

    return newReport;
  } catch (error) {
    console.error("Error creating report:", error);
    throw new Error("Failed to create report");
  }
};

export default createReportService;
