import { Request, Response } from "express";
import { ContasPagas } from "../models/ContasPagas";
import { ContasPagasSaldoTotalProgramado } from "../models/ContasPagasSaldoTotalProgramado";
import { ContasPagasSaldoTotalMesAtual } from "../models/ContasPagasSaldoTotalMesAtual";
import sequelize from "sequelize";

export const listarContasPagas = async (req: Request, res: Response) => {
  
  let lista = await ContasPagas.findAll();

  res.status(200);
  res.json({ lista });
}

export const contasPagasSaldoTotalProgramado = async (req: Request, res: Response) => {
  
  let pagasProgramado = await ContasPagasSaldoTotalProgramado.findOne();

  res.status(200);
  res.json({ pagasProgramado });
}

export const contasPagasSaldoTotalMesAtual = async (req: Request, res: Response) => {
  
  let pagasMesAtual = await ContasPagasSaldoTotalMesAtual.findOne();

  res.status(200);
  res.json({ pagasMesAtual });
}

