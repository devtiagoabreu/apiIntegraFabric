import { Request, Response } from "express";
import { NotasFiscais } from "../models/NotasFiscais";
import { NotasFiscaisTotalMes } from "../models/NotasFiscaisTotalMes";
import sequelize from "sequelize";

export const listarNotasFiscais = async (req: Request, res: Response) => {
  
  let lista = await NotasFiscais.findAll({
    where: {
      situacao: '0',
      dep: '10',
      emp: '1'
    }
  });

  res.status(200);
  res.json({ lista });
}

export const caixasFiosTotais = async (req: Request, res: Response) => {
  
  let listaTotais = await CaixasFiosTotais.findAll();

  res.status(200);
  res.json({ listaTotais });
}


