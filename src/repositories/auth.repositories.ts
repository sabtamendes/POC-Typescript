import connection from "../database/database.js";
import { Nome } from "../protocols/user.js";

export function findName(nome: Nome) {
    return connection.query(`SELECT name FROM username WHERE name ILIKE $1;`, [nome]);
}
export function insertName(nome: Nome) {
    connection.query(`INSERT INTO username(name) VALUES ($1);`, [nome]);
}