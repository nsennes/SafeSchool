import { Context } from "hono";
import getAllReportService from "../../services/Report/getAllReport";


const getAllReport = async (c: Context) => {
    try {
        const response = await getAllReportService();
        return c.json({success: true, payload: response, message: "All report  fetched successfully"});
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

export default getAllReport;