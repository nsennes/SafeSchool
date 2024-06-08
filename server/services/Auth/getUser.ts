import prisma from "../prisma/prisma";



const GetUser = (email: string) => {
	return prisma.user.findFirst({
		where: { email },
	});
};

export default GetUser;