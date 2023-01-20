import { Request, Response } from "express";
import { Nome } from "../protocols/user.js";
import { findName, insertName } from "../repositories/auth.repositories.js";
import { nomeSchema } from "../schemas/user-schemas.js";

export async function getMensagemDeBoasVindas(req: Request, res: Response) {
    const name = req.query.name as Nome;

    try {
        const findUsername = await findName(name);

        if (findUsername.rowCount === 0) {
            return res.sendStatus(404);
        }
        const novaMensagem = `Seja bem vinde ${findUsername.rows[0].name}!`;

        res.send(novaMensagem);

    } catch (error) {
        console.log(error);
        res.sendStatus(500);
    }
}

export async function postName(req: Request, res: Response) {
    const name = req.body.name as Nome;
    
    const { error } = nomeSchema.validate({ name }, { abortEarly: false });

    if (error) {
        const errors = error.details.map((detail) => detail.message);
        return res.status(422).send(errors);
    }
    try {
        insertName(name);

        res.send({ message: "Deu certo!" }).status(201);

    } catch (error) {
        console.log(error);
        res.sendStatus(500);
    }
}