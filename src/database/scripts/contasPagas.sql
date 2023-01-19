-- criando tabelas de contas pagas
CREATE TABLE contasPagas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  fornecedor VARCHAR(255) NULL,
  duplicata VARCHAR(255) NULL,
  tipoTitulo VARCHAR(255) NULL,
  portador VARCHAR(255) NULL,
  posicao VARCHAR(255) NULL,
  centroCusto VARCHAR(255) NULL,
  dataEmissao TIMESTAMP NULL,
  dataVencto TIMESTAMP NULL,
  dataPagto TIMESTAMP NULL,
  valorParcela DECIMAL(18,5) NULL,
  valorPago DECIMAL(18,5) NULL,
  valorJuros DECIMAL(18,5) NULL,
  valorDesconto DECIMAL(18,5) NULL,
  valorAbatido DECIMAL(18,5) NULL,
  saldoParcela DECIMAL(18,5) NULL,
  PRIMARY KEY(id)
);

-- criando procedure uspContasPagasDeletar
DROP PROCEDURE IF EXISTS dbintegrafabric.uspContasPagasDeletar;

DELIMITER $$
$$
CREATE PROCEDURE dbintegrafabric.uspContasPagasDeletar()
begin
	TRUNCATE TABLE ContasPagas;
END$$
DELIMITER ;

-- Criando procedure uspContasPagasInserir
CREATE PROCEDURE dbintegrafabric.uspContasPagasInserir(
	IN fornecedor VARCHAR(255),
	IN duplicata VARCHAR(255),
	IN tipoTitulo VARCHAR(255),
	IN portador VARCHAR(255),
	IN posicao VARCHAR(255),
	IN centroCusto VARCHAR(255),
	IN dataEmissao TIMESTAMP,
	IN dataVencto TIMESTAMP,
	IN dataPagto TIMESTAMP,
	IN valorParcela NUMERIC(18,5),
	IN valorPago NUMERIC(18,5),
	IN valorJuros NUMERIC(18,5),
	IN valorDesconto NUMERIC(18,5),
	IN valorAbatido NUMERIC(18,5),
	IN saldoParcela NUMERIC(18,5)
	
)
begin
	INSERT INTO ContasPagas
	(
		fornecedor, 
		duplicata, 
		tipoTitulo, 
		portador,
		posicao, 
		centroCusto,
		dataEmissao,
		dataVencto, 
		dataPagto,
		valorParcela, 
		valorPago,
		valorJuros,
		valorDesconto,
		valorAbatido,
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
		dataVencto, 
		dataPagto,
		valorParcela, 
		valorPago,
		valorJuros,
		valorDesconto,
		valorAbatido,
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
	SUM(valorPago) 
FROM 
	ContasPagas c;

-- criando view de saldo programado
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasPagasSaldoTotalProgramado as
SELECT 
	SUM(valorPago) AS pagasProgramado
FROM 
	ContasPagas c;

-- select na view
select * from vwContasPagasSaldoTotalProgramado;

-- duplicatas a pagar no mês atual 
SELECT 
	SUM(valorPago) 
FROM ContasPagas c 
WHERE 
	dataVencto BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now())); 

-- criando view de saldo mês atual
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasPagasSaldoTotalMesAtual as
SELECT 
	SUM(valorPago) AS pagasMesAtual 
FROM ContasPagas c 
WHERE 
	dataVencto BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now()));

-- select na view de saldo mes atual
SELECT pagasMesAtual FROM dbintegrafabric.vwContasPagassaldototalmesatual v



