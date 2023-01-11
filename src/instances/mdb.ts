import { Sequelize } from "sequelize";
import dotenv from "dotenv";

dotenv.config();

export const sequelize = new Sequelize(
  process.env.MDB_DB as string,
  process.env.MDB_USER as string,
  process.env.MDB_PASSWORD as string,
  {
    dialect: 'mysql',
    port: parseInt(process.env.MDB_PORT as string)
  }
);