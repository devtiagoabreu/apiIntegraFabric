import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface NotasFiscaisInstance extends Model {
  
  id: number;
  emp: string;
  cnpj: string;
  razaoSocial: string;
  fantasia: string;
  nf: string;
  seq: string;
  natureza: string;
  cfop: string;
  descNatureza: string;
  dataMotivo: string; 
  entradaSaida: string;
  faturamentoSimNao: string;
  parametroNatFat: string;
  tipoTransacao: string;
  codCanc: string;
  produto: string;
  descricaoItem: string;
  um: string;
  qtdeSaida: number;
  valorSaida: number;
  unitarioSaida: number;
  qtdeEntrada: number;
  valorEntrada: number;
  unitarioEntrada: number;
  nfOrigem: string;
  pedido: string;
  cnpjTransportadora: string;
  nomeTransportadora: string;
  deposito: string;
  centroCusto: string;
  transacao: string;
  classificFiscal: string;
  classifContabil: string;
  codigoContabil: string;
  baseIpi: number;
  percIpi: number;
  valorIpi: number;
  cvfIpi: number;
  baseIcms: number;
  valorIcms: number;
  cvfIcms: number;
  procedencia: number;
  baseDiferencia: number;
  cvfPis: number;
  cvfConfins: number;
  percPis: number;
  percConfins: number;
  basePisCofins: number;
  valorPis: number;
  valorCofins: number;
  percSubtituicao: number;
  baseSubtituicao: number;
  valorSubtituicao: number;
  projeto: string;

}

export const NotasFiscais = sequelize.define<NotasFiscaisInstance>('NotasFiscais', {
  
  id: {
    primaryKey: true,
    autoIncrement: true,
    type: DataTypes.INTEGER
  },
  emp: {
    type: DataTypes.STRING
  },
  cnpj: {
    type: DataTypes.STRING
  },
  razaoSocial: {
    type: DataTypes.STRING
  },
  fantasia: {
    type: DataTypes.STRING
  },
  nf: {
    type: DataTypes.STRING
  },
  seq: {
    type: DataTypes.STRING
  },
  natureza: {
    type: DataTypes.STRING
  },
  cfop: {
    type: DataTypes.STRING
  },
  descNatureza: {
    type: DataTypes.STRING
  },
  dataMotivo: {
    type: DataTypes.STRING
  }, 
  entradaSaida: {
    type: DataTypes.STRING
  },
  faturamentoSimNao: {
    type: DataTypes.STRING
  },
  parametroNatFat: {
    type: DataTypes.STRING
  },
  tipoTransacao: {
    type: DataTypes.STRING
  },
  codCanc: {
    type: DataTypes.STRING
  },
  produto: {
    type: DataTypes.STRING
  },
  descricaoItem: {
    type: DataTypes.STRING
  },
  um:{
    type: DataTypes.STRING
  },
  qtdeSaida: {
    type: DataTypes.NUMBER
  },
  valorSaida: {
    type: DataTypes.NUMBER
  },
  unitarioSaida: {
    type: DataTypes.NUMBER
  },
  qtdeEntrada: {
    type: DataTypes.NUMBER
  },
  valorEntrada: {
    type: DataTypes.NUMBER
  },
  unitarioEntrada:{
    type: DataTypes.NUMBER
  },
  nfOrigem: {
    type: DataTypes.STRING
  },
  pedido: {
    type: DataTypes.STRING
  },
  cnpjTransportadora: {
    type: DataTypes.STRING
  },
  nomeTransportadora: {
    type: DataTypes.STRING
  },
  deposito: {
    type: DataTypes.STRING
  },
  centroCusto: {
    type: DataTypes.STRING
  },
  transacao: {
    type: DataTypes.STRING
  },
  classificFiscal: {
    type: DataTypes.STRING
  },
  classifContabil: {
    type: DataTypes.STRING
  },
  codigoContabil: {
    type: DataTypes.STRING
  },
  baseIpi: {
    type: DataTypes.NUMBER
  },
  percIpi: {
    type: DataTypes.NUMBER
  },
  valorIpi: {
    type: DataTypes.NUMBER
  },
  cvfIpi: {
    type: DataTypes.NUMBER
  },
  baseIcms: {
    type: DataTypes.NUMBER
  },
  valorIcms: {
    type: DataTypes.NUMBER
  },
  cvfIcms: {
    type: DataTypes.NUMBER
  },
  procedencia: {
    type: DataTypes.NUMBER
  },
  baseDiferencia: {
    type: DataTypes.NUMBER
  },
  cvfPis: {
    type: DataTypes.NUMBER
  },
  cvfConfins: {
    type: DataTypes.NUMBER
  },
  percPis: {
    type: DataTypes.NUMBER
  },
  percConfins: {
    type: DataTypes.NUMBER
  },
  basePisCofins: {
    type: DataTypes.NUMBER
  },
  valorPis: {
    type: DataTypes.NUMBER
  },
  valorCofins: {
    type: DataTypes.NUMBER
  },
  percSubtituicao: {
    type: DataTypes.NUMBER
  },
  baseSubtituicao: {
    type: DataTypes.NUMBER
  },
  valorSubtituicao: {
    type: DataTypes.NUMBER
  },
  projeto: {
    type: DataTypes.STRING
  }
},{
  tableName: 'notasfiscais',
  timestamps: false
});