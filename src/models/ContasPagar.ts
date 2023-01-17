import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasPagarInstance extends Model {
  
  id: number;
  
  fornecedor: string;
  
  duplicata: string;

  tipoTitulo: string

  portador: string;
  
  posicao: string;

  centroCusto: string;

  dataEmissao: string;

  dataTransacao: string;

  dataVencto: string;

  valorParcela: number;

  saldoParcela: number;

}

export const ContasPagar = sequelize.define<ContasPagarInstance>('ContasPagar', {
  
  id: {
    primaryKey: true,
    autoIncrement: true,
    type: DataTypes.INTEGER
  },
  fornecedor: {
    type: DataTypes.STRING
  },
  duplicata: {
    type: DataTypes.STRING
  },
  tipoTitulo: {
    type: DataTypes.STRING
  },
  portador: {
    type: DataTypes.STRING
  },
  posicao: {
    type: DataTypes.STRING
  },
  centroCusto: {
    type: DataTypes.STRING
  },
  dataEmissao: {
    type: DataTypes.STRING
  },
  dataTransacao: {
    type: DataTypes.STRING
  },
  dataVencto: {
    type: DataTypes.STRING
  },
  valorParcela: {
    type: DataTypes.NUMBER
  },
  saldoParcela: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'contasPagar',
  timestamps: false
});