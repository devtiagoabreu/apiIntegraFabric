import { Router } from 'express';

import * as ApiController from "../controllers/apiController";
import * as ReceberController from "../controllers/receberController";

const router = Router();

// ROTAS DE TESTE
router.get('/ping', ApiController.ping);
router.get('/random', ApiController.random);
router.get('/nome/:nome', ApiController.nome);

// CRUD FRASES
router.post('/frases', ApiController.criarFrase);
router.get('/frases', ApiController.listarFrases);
router.get('/frase/aleatoria', ApiController.randomFrase);
router.get('/frase/:id', ApiController.retornarFrase);
router.put('/frase/:id', ApiController.atualizarFrase);
router.delete('/frase/:id', ApiController.deletarFrase);

router.get('/contasReceber', ReceberController.listarContasReceber);
router.get('/contasReceberSaldoTotalProgramado', ReceberController.contasReceberSaldoTotalProgramado);
router.get('/contasReceberSaldoTotalMesAtual', ReceberController.contasReceberSaldoTotalMesAtual);


export default router;

