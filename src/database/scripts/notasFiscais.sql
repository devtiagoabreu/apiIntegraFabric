CREATE TABLE notasFiscais (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  emp VARCHAR(255) NULL,
  cnpj VARCHAR(255) NULL,
  razaoSocial VARCHAR(255) NULL,
  fantasia VARCHAR(255) NULL,
  nf VARCHAR(255) NULL,
  seq VARCHAR(255) NULL,
  natureza VARCHAR(255) NULL,
  cfop VARCHAR(255) NULL,
  descNatureza VARCHAR(255) NULL,
  dataMovto TIMESTAMP NULL,
  entradaSaida VARCHAR(255) NULL,
  faturamentoSimNao VARCHAR(255) NULL,
  parametroNatFat VARCHAR(255) NULL,
  tipoTransacao VARCHAR(255) NULL,
  codCanc VARCHAR(255) NULL,
  produto VARCHAR(255) NULL,
  descricaoItem VARCHAR(255) NULL,
  um VARCHAR(255) NULL,
  qtdeSaida DECIMAL(18,5) NULL,
  valorSaida DECIMAL(18,5) NULL,
  unitarioSaida DECIMAL(18,5) NULL,
  qtdeEntrada DECIMAL(18,5) NULL,
  valorEntrada DECIMAL(18,5) NULL,
  unitarioEntrada DECIMAL(18,5) NULL,
  nfOrigem VARCHAR(255) NULL,
  pedido VARCHAR(255) NULL,
  cnpjTransportadora VARCHAR(255) NULL,
  nomeTransportadora VARCHAR(255) NULL,
  deposito VARCHAR(255) NULL,
  centroCusto VARCHAR(255) NULL,
  transacao VARCHAR(255) NULL,
  classificFiscal VARCHAR(255) NULL,
  classifContabil VARCHAR(255) NULL,
  codigoContabil VARCHAR(255) NULL,
  baseIpi DECIMAL(18,5) NULL,
  percIpi DECIMAL(18,5) NULL,
  valorIpi DECIMAL(18,5) NULL,
  cvfIpi DECIMAL(18,5) NULL,
  baseIcms DECIMAL(18,5) NULL,
  percIcms DECIMAL(18,5) NULL,
  valorIcms DECIMAL(18,5) NULL,
  percIcms DECIMAL(18,5) NULL,
  cvfIcms DECIMAL(18,5) NULL,
  procedencia DECIMAL(18,5) NULL,
  baseDiferenca DECIMAL(18,5) NULL,
  cvfPis DECIMAL(18,5) NULL,
  cvfCofins DECIMAL(18,5) NULL,
  percPis DECIMAL(18,5) NULL,
  percCofins DECIMAL(18,5) NULL,
  basePisCofins DECIMAL(18,5) NULL,
  valorPis DECIMAL(18,5) NULL,
  valorCofins DECIMAL(18,5) NULL,
  percSubtituicao DECIMAL(18,5) NULL,
  baseSubtituicao DECIMAL(18,5) NULL,
  valorSubtituicao DECIMAL(18,5) NULL,
  projeto VARCHAR(255) NULL,
  PRIMARY KEY(id)
);

-- criando procedure uspNotasFiscaisDeletar
DROP PROCEDURE IF EXISTS dbintegrafabric.uspNotasFiscaisDeletar;

DELIMITER $$
$$
CREATE PROCEDURE dbintegrafabric.uspNotasFiscaisDeletar()
begin
	TRUNCATE TABLE notasfiscais;
END$$
DELIMITER ;

-- Criando procedure uspNotasFiscaisInserir
CREATE PROCEDURE dbintegrafabric.uspNotasFiscaisInserir(
	IN emp VARCHAR(255),
  IN cnpj VARCHAR(255),
  IN razaoSocial VARCHAR(255),
  IN fantasia VARCHAR(255),
  IN nf VARCHAR(255),
  IN seq VARCHAR(255),
  IN natureza VARCHAR(255),
  IN cfop VARCHAR(255),
  IN descNatureza VARCHAR(255),
  IN dataMovto TIMESTAMP,
  IN entradaSaida VARCHAR(255),
  IN faturamentoSimNao VARCHAR(255),
  IN parametroNatFat VARCHAR(255),
  IN tipoTransacao VARCHAR(255),
  IN codCanc VARCHAR(255),
  IN produto VARCHAR(255),
  IN descricaoItem VARCHAR(255),
  IN um VARCHAR(255),
  IN qtdeSaida DECIMAL(18,5),
  IN valorSaida DECIMAL(18,5),
  IN unitarioSaida DECIMAL(18,5),
  IN qtdeEntrada DECIMAL(18,5),
  IN valorEntrada DECIMAL(18,5),
  IN unitarioEntrada DECIMAL(18,5),
  IN nfOrigem VARCHAR(255),
  IN pedido VARCHAR(255),
  IN cnpjTransportadora VARCHAR(255),
  IN nomeTransportadora VARCHAR(255),
  IN deposito VARCHAR(255),
  IN centroCusto VARCHAR(255),
  IN transacao VARCHAR(255),
  IN classificFiscal VARCHAR(255),
  IN classifContabil VARCHAR(255),
  IN codigoContabil VARCHAR(255),
  IN baseIpi DECIMAL(18,5),
  IN percIpi DECIMAL(18,5),
  IN valorIpi DECIMAL(18,5),
  IN cvfIpi DECIMAL(18,5),
  IN baseIcms DECIMAL(18,5),
  IN percIcms DECIMAL(18,5),
  IN valorIcms DECIMAL(18,5),
  IN cvfIcms DECIMAL(18,5),
  IN procedencia DECIMAL(18,5),
  IN baseDiferenca DECIMAL(18,5),
  IN cvfPis DECIMAL(18,5),
  IN cvfCofins DECIMAL(18,5),
  IN percPis DECIMAL(18,5),
  IN percCofins DECIMAL(18,5),
  IN basePisCofins DECIMAL(18,5),
  IN valorPis DECIMAL(18,5),
  IN valorCofins DECIMAL(18,5),
  IN percSubtituicao DECIMAL(18,5),
  IN baseSubtituicao DECIMAL(18,5),
  IN valorSubtituicao DECIMAL(18,5),
  IN projeto VARCHAR(255)
)
begin
	INSERT INTO notasFiscais
	(
	  emp,
    cnpj,
    razaoSocial,
    fantasia,
    nf,
    seq,
    natureza,
    cfop,
    descNatureza,
    dataMovto,
    entradaSaida,
    faturamentoSimNao,
    parametroNatFat,
    tipoTransacao,
    codCanc,
    produto,
    descricaoItem,
    um,
    qtdeSaida,
    valorSaida,
    unitarioSaida,
    qtdeEntrada,
    valorEntrada,
    unitarioEntrada,
    nfOrigem,
    pedido,
    cnpjTransportadora,
    nomeTransportadora,
    deposito,
    centroCusto,
    transacao,
    classificFiscal,
    classifContabil,
    codigoContabil,
    baseIpi,
    percIpi,
    valorIpi,
    cvfIpi,
    baseIcms,
    percIcms,
    valorIcms,
    cvfIcms,
    procedencia,
    baseDiferenca,
    cvfPis,
    cvfCofins,
    percPis,
    percCofins,
    basePisCofins,
    valorPis,
    valorCofins,
    percSubtituicao,
    baseSubtituicao,
    valorSubtituicao,
    projeto
	)
	VALUES 
	(
		emp,
    cnpj,
    razaoSocial,
    fantasia,
    nf,
    seq,
    natureza,
    cfop,
    descNatureza,
    dataMotivo,
    entradaSaida,
    faturamentoSimNao,
    parametroNatFat,
    tipoTransacao,
    codCanc,
    produto,
    descricaoItem,
    um,
    qtdeSaida,
    valorSaida,
    unitarioSaida,
    qtdeEntrada,
    valorEntrada,
    unitarioEntrada,
    nfOrigem,
    pedido,
    cnpjTransportadora,
    nomeTransportadora,
    deposito,
    centroCusto,
    transacao,
    classificFiscal,
    classifContabil,
    codigoContabil,
    baseIpi,
    percIpi,
    valorIpi,
    cvfIpi,
    baseIcms,
    percIcms,
    valorIcms,
    cvfIcms,
    procedencia,
    baseDiferenca,
    cvfPis,
    cvfCofins,
    percPis,
    percCofins,
    basePisCofins,
    valorPis,
    valorCofins,
    percSubtituicao,
    baseSubtituicao,
    valorSubtituicao,
    projeto
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

-- Notas fiscais (faturado no mês atual)
select 
 sum(valorSaida) as totalSaida
from
    notasfiscais n 
where
   entradaSaida = 'Saida' and 
   dataMovto between cast(cast(current_timestamp() - interval (dayofmonth(current_timestamp()) - 1) day as date) as datetime) and cast(last_day(current_timestamp()) as datetime);
   






        