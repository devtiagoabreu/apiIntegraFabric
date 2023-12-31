import { Request, Response } from "express";
import { SaldosEstoque } from "../models/SaldosEstoque";
import sequelize from "sequelize";

export const listarSaldosEstoque = async (req: Request, res: Response) => {
  
  let listaSaldosEstoque = await SaldosEstoque.findAll({
    where: {
      emp: '1'
    }
  });

  res.status(200);
  res.json({ listaSaldosEstoque });
}

  


