import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface CaixasFiosInstance extends Model {
  
  id: number;
  emp: string;
  empresa: string;
  dep: string;
  deposito: string;
  tran: string;
  produto: string;
  transacao: string;
  nivel: string;
  grupo: string;
  sub: string;
  item: string;
  um: string;
  narrativa: string;
  tpg: string;
  tipoGlobal: string;
  lote: string;
  loteProduto: string;
  quantidade: number;
  pesoBruto: number;
  pesoLiquido: number;
  numeroVolume: string;
  numeroOrigem: string;
  situacao: string;
  dataEntrada: string;
  nf: string;
  serie: string;
  seqNf: string;
  fornecedor: string;
  nomeFornecedor: string;
  obs: string;

}

export const CaixasFios = sequelize.define<CaixasFiosInstance>('CaixasFios', {
  
  id: {
    primaryKey: true,
    autoIncrement: true,
    type: DataTypes.INTEGER
  },
  emp: {
    type: DataTypes.STRING
  },
  empresa: {
    type: DataTypes.STRING
  },
  dep: {
    type: DataTypes.STRING
  },
  deposito: {
    type: DataTypes.STRING
  },
  tran: {
    type: DataTypes.STRING
  },
  produto: {
    type: DataTypes.STRING
  },
  transacao: {
    type: DataTypes.STRING
  },
  nivel: {
    type: DataTypes.STRING
  },
  grupo: {
    type: DataTypes.STRING
  },
  sub: {
    type: DataTypes.NUMBER
  },
  item: {
    type: DataTypes.NUMBER
  },
  um: {
    type: DataTypes.STRING
  },
  narrativa: {
    type: DataTypes.STRING
  },
  tpg: {
    type: DataTypes.STRING
  },
  tipoGlobal: {
    type: DataTypes.STRING
  },
  lote: {
    type: DataTypes.STRING
  },
  loteProduto: {
    type: DataTypes.STRING
  },
  quantidade: {
    type: DataTypes.NUMBER
  },
  pesoBruto: {
    type: DataTypes.NUMBER
  },
  pesoLiquido: {
    type: DataTypes.NUMBER
  },
  numeroVolume: {
    type: DataTypes.STRING
  },
  numeroOrigem: {
    type: DataTypes.STRING
  },
  situacao: {
    type: DataTypes.STRING
  },
  dataEntrada: {
    type: DataTypes.STRING
  },
  nf: {
    type: DataTypes.STRING
  },
  serie: {
    type: DataTypes.STRING
  },
  seqNf: {
    type: DataTypes.STRING
  },
  fornecedor: {
    type: DataTypes.STRING
  },
  nomeFornecedor: {
    type: DataTypes.STRING
  },
  obs: {
    type: DataTypes.STRING
  }
},{
  tableName: 'caixasFios',
  timestamps: false
});