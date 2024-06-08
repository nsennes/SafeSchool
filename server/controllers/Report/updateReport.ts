import { Context } from "hono";
import updateReportApprovedServices from "../../services/Report/updateReportApproved";



const updateReportApproved = async (c: Context) => {
    try {
		const reportId = Number(c.req.param('reportId'));
        const response = await updateReportApprovedServices(reportId);
        return c.json({payload: response});
    }
    catch (e) {
		console.error(e);
		return c.json(
			{
				success: false,
				payload: [],
				message: e,
			},
			200
		);
	}
}

export default updateReportApproved;