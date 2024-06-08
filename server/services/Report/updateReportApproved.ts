import prisma from "../prisma/prisma";

const updateReportApprovedServices = async (reportId: number): Promise<any> => {
  try {
    const updatedReport = await prisma.report.update({
      where: {
        reportId: reportId,
      },
      data: {
        status: 'approved', 
      },
    });

    return {
      success: true,
      payload: updatedReport,
      message: 'Report status updated successfully',
    };
  } catch (error) {
    console.error('Error updating report status:', error);
    return {
      success: false,
      message: 'Failed to update report status',
    };
  }
};

export default updateReportApprovedServices;
