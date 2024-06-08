import prisma from "../prisma/prisma";

interface ReportCount {
  [key: string]: number;
}

const getReportByTypeService = async (): Promise<ReportCount> => {
  const rawResponse = await prisma.report.groupBy({
    by: ['typeOfBullying'],
    _count: {
      _all: true,
    },
  });

  const transformedResponse: ReportCount = rawResponse.reduce((acc: ReportCount, curr) => {
    const formattedType = curr.typeOfBullying.replace('_', ' '); // Replace underscores with spaces
    acc[formattedType] = curr._count._all;
    return acc;
  }, {});

  return transformedResponse;
};

export default getReportByTypeService;
