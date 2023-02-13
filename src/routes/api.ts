import { Router } from 'express';

import * as ApiController from "../controllers/apiController";
import * as ReceberController from "../controllers/receberController";
import * as PagarController from "../controllers/pagarController";
import * as PagasController from "../controllers/pagasController";
import * as CaixasFiosController from "../controllers/caixasFiosController";
import * as NotasFiscaisController from "../controllers/notasFiscaisController";
import * as SaldosEstoqueController from "../controllers/saldosEstoqueController";

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

// NOTAS FISCAIS
router.get('/notasFiscais', NotasFiscaisController.listarNotasFiscais);
router.get('/notasFiscaisTotalMes', NotasFiscaisController.notasFiscaisTotalMes);

// SALDOS ESTOQUE
router.get('/saldosEstoque', SaldosEstoqueController.listarSaldosEstoque);


export default router;

