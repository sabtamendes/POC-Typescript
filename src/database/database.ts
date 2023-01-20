import pkg from 'pg';

const { Pool } = pkg;

const connection = new Pool({
    host: "localhost",
    port: 5432,
    user: "postgres",
    password: "9474",
    database: "boas_vindas"
});

export default connection;