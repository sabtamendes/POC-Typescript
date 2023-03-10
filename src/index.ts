import express from "express";
import { getMensagemDeBoasVindas, postName } from "./controllers/auht-controllers.js";

const server = express();
server.use(express.json());

server.get("/health", (req, res) => {
    res.send("ok")
})

server.get("/name", getMensagemDeBoasVindas);
server.post("/name", postName);

server.listen(4000, () => console.log('Running on port 4000'));