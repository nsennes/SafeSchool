import { Context } from "hono";
import updateReportRejectedServices from "../../services/Report/updateReportRejected";




const updateReportRejected = async (c: Context) => {
    try {
		const reportId = Number(c.req.param('reportId'));
        const response = await updateReportRejectedServices(reportId);
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

export default updateReportRejected;