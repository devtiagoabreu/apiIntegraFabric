import { Request, Response } from "express";
import { ContasReceber } from "../models/ContasReceber";
import sequelize from "sequelize";

export const listarContasReceber = async (req: Request, res: Response) => {
  
  let lista = await ContasReceber.findAll();

  res.status(200);
  res.json({ lista });
}