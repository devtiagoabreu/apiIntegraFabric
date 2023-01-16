import { Request, Response } from "express";
import { ContasReceber } from "../models/ContasReceber";
import { ContasReceberSaldoTotalProgramado } from "../models/ContasReceberSaldoTotalProgramado";
import sequelize from "sequelize";

export const listarContasReceber = async (req: Request, res: Response) => {
  
  let lista = await ContasReceber.findAll();

  res.status(200);
  res.json({ lista });
}

export const contasReceberSaldoTotalProgramado = async (req: Request, res: Response) => {
  
  let receberProgramado = await ContasReceberSaldoTotalProgramado.findOne();

  res.status(200);
  res.json({ receberProgramado });
}

