import { Context } from "hono";
import getReportByTypeService from "../../services/Report/getReportByTypes";



const getReportByType = async (c: Context) => {
    try {
        const response = await getReportByTypeService();
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

export default getReportByType;