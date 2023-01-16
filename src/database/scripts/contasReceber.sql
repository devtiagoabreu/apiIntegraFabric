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

-- duplicatas a receber no mês atual (data de prorrogação é igual a data de vencto se a duplicata não for prorrogada)
SELECT 
	SUM(saldoDuplicata) 
FROM contasreceber c 
WHERE 
	dataProrrogacao BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now())); 

-- duplicatas prorrogadas
SELECT * 
FROM 
	contasreceber c 
WHERE 
	dataVencto <> dataProrrogacao;

