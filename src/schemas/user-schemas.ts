import Joi from "joi";

export const nomeSchema = Joi.object({
    name: Joi.string().min(3).required()
})