import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasReceberInstance extends Model {
  
  id: number;
  
  cliente: string;
  
  representante: string;

  duplicata: string;

  TipoTitulo: string

  Portador: string;
  
  Posicao: string;

  DataEmissao: string;

  DataVencto: string;

  DataProrrogacao: string;

  ValorDuplicata: number;

  SaldoDuplicata: number;

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
  TipoTitulo: {
    type: DataTypes.STRING
  },
  Portador: {
    type: DataTypes.STRING
  },
  Posicao: {
    type: DataTypes.STRING
  },
  DataEmissao: {
    type: DataTypes.STRING
  },
  DataVencto: {
    type: DataTypes.STRING
  },
  DataProrrogacao: {
    type: DataTypes.STRING
  },
  ValorDuplicata: {
    type: DataTypes.NUMBER
  },
  SaldoDuplicata: {
    type: DataTypes.NUMBER
  },
  atraso: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'contasReceber',
  timestamps: false
});