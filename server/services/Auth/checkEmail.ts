import prisma from "../prisma/prisma";



const checkEmail = async (email: string): Promise<boolean> => {
	const user = await prisma.user.findFirst({
		where: { email },
	});

	return user !== null ? true : false;
};

export default checkEmail;