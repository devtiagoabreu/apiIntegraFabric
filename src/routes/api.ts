import { Router } from 'express';

import * as ApiController from "../controllers/apiController";

const router = Router();

router.get('/ping', ApiController.ping);
router.get('/random', ApiController.random);
router.get('/nome/:nome', ApiController.nome);

router.post('/frases', ApiController.criarFrase);
router.get('/frases', ApiController.listarFrases);
router.get('/frase/:id', ApiController.retornarFrase);
router.put('/frase/:id', ApiController.atualizarFrase);
router.delete('/frase/:id', ApiController.deletarFrase);

export default router;

