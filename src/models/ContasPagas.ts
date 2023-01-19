import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasPagasInstance extends Model {
  
  id: number;
  
  fornecedor: string;
  
  duplicata: string;

  tipoTitulo: string

  portador: string;
  
  posicao: string;

  centroCusto: string;

  dataEmissao: string;

  dataVencto: string;

  dataPagto: string;

  valorParcela: number;

  valorPago: number;

  valorJuros: number;

  valorDesconto: number;

  valorAbatido: number;

  saldoParcela: number;

}

export const ContasPagas = sequelize.define<ContasPagasInstance>('ContasPagas', {
  
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
  dataVencto: {
    type: DataTypes.STRING
  },
  dataPagto: {
    type: DataTypes.STRING
  },
  valorParcela: {
    type: DataTypes.NUMBER
  },
  valorPago: {
    type: DataTypes.NUMBER
  },
  valorJuros: {
    type: DataTypes.NUMBER
  },
  valorDesconto: {
    type: DataTypes.NUMBER
  },
  valorAbatido: {
    type: DataTypes.NUMBER
  },
  saldoParcela: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'contasPagas',
  timestamps: false
});