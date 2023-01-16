create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasReceberSaldoTotalProgramado as
SELECT 
	SUM(saldoDuplicata) AS receberProgramado
FROM 
	contasreceber c;
	
create or replace
algorithm = UNDEFINED view dbintegrafabric.vwContasReceberSaldoTotalMesAtual as
SELECT 
	SUM(saldoDuplicata) AS receberMesAtual 
FROM contasreceber c 
WHERE 
	dataProrrogacao BETWEEN TIMESTAMP(DATE(DATE_SUB(now(), INTERVAL DAYOFMONTH(now())-1 DAY))) 
	AND TIMESTAMP(LAST_DAY(now())); 
