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

-- view
SELECT receberProgramado FROM dbintegrafabric.vwcontasrecebersaldototalprogramado v 

-- duplicatas a receber no mês atual (data de prorrogação é igual a data de vencto se a duplicata não for prorrogada)
SELECT 
	SUM(saldoDuplicata) 
FROM contasreceber c 
WHERE 
	dataProrrogacao BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now())); 

-- view
SELECT receberMesAtual FROM dbintegrafabric.vwcontasrecebersaldototalmesatual v 

-- duplicatas prorrogadas
SELECT * 
FROM 
	contasreceber c 
WHERE 
	dataVencto <> dataProrrogacao;

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



--
SELECT `cliente`, `representante`, `duplicata`, `TipoTitulo`, `Portador`, `Posicao`, `DataEmissao`, `DataVencto`, `DataProrrogacao`, `ValorDuplicata`, `SaldoDuplicata`, `atraso` FROM `contasReceber` AS `ContasReceber`;