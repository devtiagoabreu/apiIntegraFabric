-- criando tabelas de contas a pagar
CREATE TABLE contasPagar (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  forncedor VARCHAR(255) NULL,
  duplicata VARCHAR(255) NULL,
  tipoTitulo VARCHAR(255) NULL,
  portador VARCHAR(255) NULL,
  posicao VARCHAR(255) NULL,
  centroCusto VARCHAR(255) NULL,
  dataEmissao TIMESTAMP NULL,
  dataTransacao TIMESTAMP NULL,
  dataVencto TIMESTAMP NULL,
  valorParcela DECIMAL(18,5) NULL,
  saldoParcela DECIMAL(18,5) NULL,
  PRIMARY KEY(id)
);

-- criando procedure uspContasPagarDeletar
DROP PROCEDURE IF EXISTS dbintegrafabric.uspContasPagarDeletar;

DELIMITER $$
$$
CREATE PROCEDURE dbintegrafabric.uspContasPagarDeletar()
begin
	TRUNCATE TABLE contaspagar;
END$$
DELIMITER ;

-- Criando procedure uspContasPagarInserir
CREATE PROCEDURE dbintegrafabric.uspContasPagarInserir(
	IN fornecedor VARCHAR(255),
	IN duplicata VARCHAR(255),
	IN tipoTitulo VARCHAR(255),
	IN portador VARCHAR(255),
	IN posicao VARCHAR(255),
	IN centroCusto VARCHAR(255),
	IN dataEmissao TIMESTAMP,
	IN dataTransacao TIMESTAMP,
	IN dataVencto TIMESTAMP,
	IN valorParcela NUMERIC(18,5),
	IN saldoParcela NUMERIC(18,5)
)
begin
	INSERT INTO contasPagar
	(
		fornecedor, 
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		centroCusto,
		dataEmissao,
		dataTransacao, 
		dataVencto, 		
		valorParcela, 
		saldoParcela
	)
	VALUES 
	(
		fornecedor, 
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		centroCusto,
		dataEmissao,
		dataTransacao, 
		dataVencto, 		
		valorParcela, 
		saldoParcela
	);
END

-- cofigurando datas
-- primeiro dia do mês
SELECT 
	NOW() , 
	TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) AS 'Primeiro dia do mês';

-- ultimo dia do mes
SELECT 
	TIMESTAMP(LAST_DAY(now())) AS 'Últ. dia do mês';

-- duplicatas a receber (SALDO TOTAL PROGRAMADO)
SELECT 
	SUM(saldoParcela) 
FROM 
	contaspagar c;

-- criando view de saldo programado
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasPagarSaldoTotalProgramado as
SELECT 
	SUM(saldoParcela) AS pagarProgramado
FROM 
	contaspagar c;

-- select na view
select * from vwContasPagarSaldoTotalProgramado;

-- duplicatas a pagar no mês atual 
SELECT 
	SUM(saldoParcela) 
FROM contaspagar c 
WHERE 
	dataVencto BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now())); 

-- criando view de saldo mês atual
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasPagarSaldoTotalMesAtual as
SELECT 
	SUM(saldoParcela) AS pagarMesAtual 
FROM contaspagar c 
WHERE 
	dataVencto BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now()));

-- select na view de saldo mes atual
SELECT pagarMesAtual FROM dbintegrafabric.vwcontaspagarsaldototalmesatual v



