import prisma from "../prisma/prisma";

const registerService = async (email:string, password:string) => {
    const response = await prisma.user.create({
        data:{
            email,
            password,
        }
    });

    return response;

}

export default registerService;