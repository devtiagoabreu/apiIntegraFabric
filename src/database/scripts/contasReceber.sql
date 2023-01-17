-- criando tabela de contas a receber
CREATE TABLE contasReceber (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cliente VARCHAR(255) NULL,
  representante VARCHAR(255) NULL,
  duplicata VARCHAR(255) NULL,
  tipoTitulo VARCHAR(255) NULL,
  portador VARCHAR(255) NULL,
  posicao VARCHAR(255) NULL,
  dataEmissao TIMESTAMP NULL,
  dataVencto TIMESTAMP NULL,
  dataProrrogacao TIMESTAMP NULL,
  valorDuplicata DECIMAL(18,5) NULL,
  saldoDuplicata DECIMAL(18,5) NULL,
  atraso INTEGER NULL,
  PRIMARY KEY(id)
);

-- criando procedure uspContasReceberDeletar
DROP PROCEDURE IF EXISTS dbintegrafabric.uspContasReceberDeletar;

DELIMITER $$
$$
CREATE PROCEDURE dbintegrafabric.uspContasReceberDeletar()
begin
	TRUNCATE TABLE contasreceber;
END$$
DELIMITER ;

-- criando procedure uspContasReceberInserir
CREATE PROCEDURE dbintegrafabric.uspContasReceberInserir(
	IN cliente VARCHAR(255),
	IN representante VARCHAR(255),
	IN duplicata VARCHAR(255),
	IN tipoTitulo VARCHAR(255),
	IN portador VARCHAR(255),
	IN posicao VARCHAR(255),
	IN dataEmissao TIMESTAMP,
	IN dataVencto TIMESTAMP,
	IN dataProrrogacao TIMESTAMP,
	IN valorDuplicata NUMERIC(18,5),
	IN saldoDuplicata NUMERIC(18,5),
	in atraso INTEGER
)
begin
	INSERT INTO contasReceber
	(
		cliente, 
		representante,
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		dataEmissao,
		dataVencto, 		
		dataProrrogacao, 
		valorDuplicata, 
		saldoDuplicata,
		atraso
	)
	VALUES 
	(
		cliente, 
		representante,
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		dataEmissao,
		dataVencto, 		
		dataProrrogacao, 
		valorDuplicata, 
		saldoDuplicata,
		atraso
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
	SUM(saldoDuplicata) 
FROM 
	contasreceber c;

-- criando view de saldo programado
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasReceberSaldoTotalProgramado as
SELECT 
	SUM(saldoDuplicata) AS receberProgramado
FROM 
	contasreceber c;
-- select na view de saldo programado
SELECT receberProgramado FROM dbintegrafabric.vwcontasrecebersaldototalprogramado v 

-- duplicatas a receber no mês atual (data de prorrogação é igual a data de vencto se a duplicata não for prorrogada)
SELECT 
	SUM(saldoDuplicata) 
FROM contasreceber c 
WHERE 
	dataProrrogacao BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now())); 

-- criando view de saldo mês atual
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasReceberSaldoTotalMesAtual as
SELECT 
	SUM(saldoDuplicata) AS receberMesAtual 
FROM contasreceber c 
WHERE 
	dataProrrogacao BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now()));

-- select na view de saldo mes atual
SELECT receberMesAtual FROM dbintegrafabric.vwcontasrecebersaldototalmesatual v 

-- duplicatas prorrogadas
SELECT * 
FROM 
	contasreceber c 
WHERE 
	dataVencto <> dataProrrogacao;




--
SELECT `cliente`, `representante`, `duplicata`, `TipoTitulo`, `Portador`, `Posicao`, `DataEmissao`, `DataVencto`, `DataProrrogacao`, `ValorDuplicata`, `SaldoDuplicata`, `atraso` FROM `contasReceber` AS `ContasReceber`;