-- criando tabelas de caixas fios
CREATE TABLE caixasFios (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  emp VARCHAR(255) NULL,
  empresa VARCHAR(255) NULL,
  dep VARCHAR(255) NULL,
  deposito VARCHAR(255) NULL,
  tran VARCHAR(255) NULL,
  produto VARCHAR(255) NULL,
  transacao VARCHAR(255) NULL,
  nivel VARCHAR(255) NULL,
  grupo VARCHAR(255) NULL,
  sub VARCHAR(255) NULL,
  item VARCHAR(255) NULL,
  um VARCHAR(255) NULL,
  narrativa VARCHAR(255) NULL,
  tpg VARCHAR(255) NULL,
  tipoGlobal VARCHAR(255) NULL,
  lote VARCHAR(255) NULL,
  loteProduto VARCHAR(255) NULL,
  quantidade DECIMAL(18,5) NULL,
  pesoBruto DECIMAL(18,5) NULL,
  pesoLiquido DECIMAL(18,5) NULL,
  numeroVolume VARCHAR(255) NULL,
  numeroOrigem VARCHAR(255) NULL,
  situacao VARCHAR(255) NULL,
  dataEntrada TIMESTAMP NULL,
  nf VARCHAR(255) NULL,
  serie VARCHAR(255) NULL,
  seqNf VARCHAR(255) NULL,
  fornecedor VARCHAR(255) NULL,
  nomeFornecedor VARCHAR(255) NULL,
  obs VARCHAR(255) NULL,
  PRIMARY KEY(id)
);

-- criando procedure uspContasPagasDeletar
DROP PROCEDURE IF EXISTS dbintegrafabric.uspCaixasFiosDeletar;

DELIMITER $$
$$
CREATE PROCEDURE dbintegrafabric.uspCaixasFiosDeletar()
begin
	TRUNCATE TABLE CaixasFios;
END$$
DELIMITER ;

-- Criando procedure uspCaixasFiosInserir
CREATE PROCEDURE dbintegrafabric.uspCaixasFiosInserir(
	IN emp VARCHAR(255),
  IN empresa VARCHAR(255),
  IN dep VARCHAR(255),
  IN deposito VARCHAR(255),
  IN tran VARCHAR(255),
  IN produto VARCHAR(255),
  IN transacao VARCHAR(255),
  IN nivel VARCHAR(255),
  IN grupo VARCHAR(255),
  IN sub VARCHAR(255),
  IN item VARCHAR(255),
  IN um VARCHAR(255),
  IN narrativa VARCHAR(255),
  IN tpg VARCHAR(255),
  IN tipoGlobal VARCHAR(255),
  IN lote VARCHAR(255),
  IN loteProduto VARCHAR(255),
  IN quantidade DECIMAL(18,5),
  IN pesoBruto DECIMAL(18,5),
  IN pesoLiquido DECIMAL(18,5),
  IN numeroVolume VARCHAR(255),
  IN numeroOrigem VARCHAR(255),
  IN situacao VARCHAR(255),
  IN dataEntrada TIMESTAMP,
  IN nf VARCHAR(255),
  IN serie VARCHAR(255),
  IN seqNf VARCHAR(255),
  IN fornecedor VARCHAR(255),
  IN nomeFornecedor VARCHAR(255),
  IN obs VARCHAR(255)
	
)
begin
	INSERT INTO CaixasFios
	(
		emp,
  	empresa,
  	dep,
		deposito,
		tran,
		produto,
		transacao,
		nivel,
		grupo,
		sub,
		item,
		um,
		narrativa,
		tpg,
		tipoGlobal,
		lote,
		loteProduto,
		quantidade,
		pesoBruto,
		pesoLiquido,
		numeroVolume,
		numeroOrigem,
		situacao,
		dataEntrada,
		nf,
		serie,
		seqNf,
		fornecedor,
		nomeFornecedor,
		obs
	)
	VALUES 
	(
		emp,
  	empresa,
  	dep,
		deposito,
		tran,
		produto,
		transacao,
		nivel,
		grupo,
		sub,
		item,
		um,
		narrativa,
		tpg,
		tipoGlobal,
		lote,
		loteProduto,
		quantidade,
		pesoBruto,
		pesoLiquido,
		numeroVolume,
		numeroOrigem,
		situacao,
		dataEntrada,
		nf,
		serie,
		seqNf,
		fornecedor,
		nomeFornecedor,
		obs
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

-- caixas fios (TOTAL)
SELECT 
 produto,
 narrativa, 
 COUNT(numeroVolume) AS volumes,
 SUM(quantidade) AS quantidade 
FROM 
 CaixasFios c
WHERE 
 situacao= '0' AND
 dep = '10' AND
 emp = '1'
GROUP BY  
 produto,
 narrativa;
	

-- criando view total de caixas fios
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwCaixasFiosTotais as
SELECT 
 produto,
 narrativa, 
 COUNT(numeroVolume) AS volumes,
 SUM(quantidade) AS quantidade 
FROM 
 CaixasFios c
WHERE 
 situacao= '0' AND
 dep = '10' AND
 emp = '1'
GROUP BY  
 produto,
 narrativa;

-- select na view
select * from vwCaixasFiosTotais;

