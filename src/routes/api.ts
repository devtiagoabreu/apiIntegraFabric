import { Router } from 'express';

import * as ApiController from "../controllers/apiController";
import * as ReceberController from "../controllers/receberController";
import * as PagarController from "../controllers/pagarController";
import * as PagasController from "../controllers/pagasController";
import * as CaixasFiosController from "../controllers/caixasFiosController";

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

// CONTAS A RECEBER
router.get('/contasReceber', ReceberController.listarContasReceber);
router.get('/contasReceberSaldoTotalProgramado', ReceberController.contasReceberSaldoTotalProgramado);
router.get('/contasReceberSaldoTotalMesAtual', ReceberController.contasReceberSaldoTotalMesAtual);

// CONTAS A PAGAR
router.get('/contasPagar', PagarController.listarContasPagar);
router.get('/contasPagarSaldoTotalProgramado', PagarController.contasPagarSaldoTotalProgramado);
router.get('/contasPagarSaldoTotalMesAtual', PagarController.contasPagarSaldoTotalMesAtual);

// CONTAS PAGAS
router.get('/contasPagas', PagasController.listarContasPagas);
router.get('/contasPagasSaldoTotalProgramado', PagasController.contasPagasSaldoTotalProgramado);
router.get('/contasPagasSaldoTotalMesAtual', PagasController.contasPagasSaldoTotalMesAtual);

// CAIXAS FIOS
router.get('/caixasFios', CaixasFiosController.listarCaixasFios);
router.get('/caixasFiosTotais', CaixasFiosController.caixasFiosTotais);


export default router;

