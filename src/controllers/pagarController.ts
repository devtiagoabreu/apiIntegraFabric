import { Request, Response } from "express";
import { ContasPagar } from "../models/ContasPagar";
import { ContasPagarSaldoTotalProgramado } from "../models/ContasPagarSaldoTotalProgramado";
import { ContasPagarSaldoTotalMesAtual } from "../models/ContasPagarSaldoTotalMesAtual";
import sequelize from "sequelize";

export const listarContasPagar = async (req: Request, res: Response) => {
  
  let lista = await ContasPagar.findAll();

  res.status(200);
  res.json({ lista });
}

export const contasPagarSaldoTotalProgramado = async (req: Request, res: Response) => {
  
  let pagarProgramado = await ContasPagarSaldoTotalProgramado.findOne();

  res.status(200);
  res.json({ pagarProgramado });
}

export const contasPagarSaldoTotalMesAtual = async (req: Request, res: Response) => {
  
  let pagarMesAtual = await ContasPagarSaldoTotalMesAtual.findOne();

  res.status(200);
  res.json({ pagarMesAtual });
}

