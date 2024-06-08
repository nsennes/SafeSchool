import prisma from "../prisma/prisma";

const getAllReportService = async () => {
	const response = await prisma.report.findMany();

	return response;
};

export default getAllReportService;