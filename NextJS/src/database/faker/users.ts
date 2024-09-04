import { Prisma } from '@prisma/client';
import prisma from '../prisma';
import { fakerES as faker } from '@faker-js/faker'; // Versión española

// const getUniqueSlug = async (initialSlug: string): string => {

//     const foundSlug = await prisma.user.findUnique({
//         where: {
//             slug: initialSlug
//         }
//     });

//     // if(foundSlug) {
//     //     const slugNumber = initialSlug.match(/\d+/g);
//     //     initialSlug = 
//     // }

//     return initialSlug;
// }

export const createRandomUsers = async (num: number) => {
    if(num <= 0) {
        throw new Error('El número de usuarios introducido no tiene sentido');
    }

    const userInputs: Prisma.UserCreateInput[] = [];

    for(let i = 0; i < num; i++) {

        const name = faker.person.firstName();
        const firstLastName = faker.person.lastName();
        const secondLastName = faker.person.lastName();
        const initialSlug = `${name}_${firstLastName}`;
        
        

        // const userInput: Prisma.UserCreateInput = {
        //     email: faker.internet.email(),
        //     name,
        //     surname: `${firstLastName} ${secondLastName}`,
        //     slug: 
        // }

        // userInputs.push(userInput);
    }
}