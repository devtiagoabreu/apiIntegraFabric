import { Request, Response } from "express";
import { CaixasFios } from "../models/CaixasFios";
import { CaixasFiosTotais } from "../models/CaixasFiosTotais";
import sequelize from "sequelize";

export const listarCaixasFios = async (req: Request, res: Response) => {
  
  let lista = await CaixasFios.findAll({
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


