import prisma from "../prisma/prisma";

interface ReportCount {
  [key: string]: number;
}

const getReportByRegionService = async (): Promise<ReportCount> => {
  const rawResponse = await prisma.report.groupBy({
    by: ['region'],
    _count: {
      _all: true,
    },
  });

  const transformedResponse: ReportCount = rawResponse.reduce((acc: ReportCount, curr) => {
    const formattedType = curr.region.replace('_', ' '); // Replace underscores with spaces
    acc[formattedType] = curr._count._all;
    return acc;
  }, {});

  return transformedResponse;
};

export default getReportByRegionService;
