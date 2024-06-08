import { Context } from "hono";
import getReportByRegionService from "../../services/Report/getReportByRegion";




const getReportByRegion = async (c: Context) => {
    try {
        const response = await getReportByRegionService();
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

export default getReportByRegion;