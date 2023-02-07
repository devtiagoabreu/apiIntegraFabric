import { Request, Response } from "express";
import { NotasFiscais } from "../models/NotasFiscais";
import { NotasFiscaisTotalMes } from "../models/NotasFiscaisTotalMes";
import sequelize from "sequelize";

export const listarNotasFiscais = async (req: Request, res: Response) => {
  
  let lista = await NotasFiscais.findAll();

  res.status(200);
  res.json({ lista });
}

export const notasFiscaisTotalMes = async (req: Request, res: Response) => {
  
  let totalMes = await NotasFiscaisTotalMes.findAll();

  res.status(200);
  res.json({ totalMes });
}


