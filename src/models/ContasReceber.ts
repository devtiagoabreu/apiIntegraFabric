import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasReceberInstance extends Model {
  
  id: number;
  
  cliente: string;
  
  representante: string;

  duplicata: string;

  tipoTitulo: string

  portador: string;
  
  posicao: string;

  dataEmissao: string;

  dataVencto: string;

  dataProrrogacao: string;

  valorDuplicata: number;

  saldoDuplicata: number;

  atraso: number;
}

export const ContasReceber = sequelize.define<ContasReceberInstance>('ContasReceber', {
  
  id: {
    primaryKey: true,
    autoIncrement: true,
    type: DataTypes.INTEGER
  },
  cliente: {
    type: DataTypes.STRING
  },
  representante: {
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
  dataEmissao: {
    type: DataTypes.STRING
  },
  dataVencto: {
    type: DataTypes.STRING
  },
  dataProrrogacao: {
    type: DataTypes.STRING
  },
  valorDuplicata: {
    type: DataTypes.NUMBER
  },
  saldoDuplicata: {
    type: DataTypes.NUMBER
  },
  atraso: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'contasReceber',
  timestamps: false
});