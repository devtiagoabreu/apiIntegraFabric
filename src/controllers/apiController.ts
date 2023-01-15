import { Request, Response } from "express";
import { Frase } from "../models/Frase";

export const ping = (req: Request, res: Response) => {
  res.json({pong: true});
}

export const random = (req: Request, res: Response) => {
  let nRand: number = Math.floor( Math.random() * 60 );
  res.json({number: nRand});
}

export const nome = (req: Request, res: Response) => {
  let nome: string = req.params.nome;
  res.json({nome})
}

export const criarFrase = async (req: Request, res: Response) => {
  let { autor, txt } = req.body;

  let novaFrase = await Frase.create({ autor, txt });

  res.status(201);
  res.json({ id: novaFrase.id, autor, txt });
}

export const listarFrases = async (req: Request, res: Response) => {
  
  let lista = await Frase.findAll();

  res.status(200);
  res.json({ lista });
}

export const retornarFrase = async (req: Request, res: Response) => {
  let { id } = req.params;

  let frase = await Frase.findByPk(id);
  if (frase) {
    res.status(200);
    res.json({ frase });
  } else {
    res.status(406);
    res.json({ error: 'Frase não encontrada' })
  }
}

export const atualizarFrase = async (req: Request, res: Response) => {
  let { id } = req.params;
  let { autor, txt } = req.body;

  let frase = await Frase.findByPk(id);
  if (frase) {
    frase.autor = autor;
    frase.txt = txt;
    await frase.save();

    res.status(200);
    res.json({ frase });
  } else {
    res.status(406);
    res.json({ error: 'Frase não encontrada' })
  }
}

