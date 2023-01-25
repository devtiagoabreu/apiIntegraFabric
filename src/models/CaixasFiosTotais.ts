import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface CaixasFiosTotaisInstance extends Model {
  
  produto: string;
  narrativa: string;
  volumes: number;
  quantidade: number;
}

export const CaixasFiosTotais = sequelize.define<CaixasFiosTotaisInstance>('CaixasFiosTotais', {
  
  produto: {
    type: DataTypes.STRING
  },
  narrativa: {
    type: DataTypes.STRING
  },
  volumes: {
    type: DataTypes.NUMBER
  },
  quantidade: {
    type: DataTypes.NUMBER
  },
},{
  tableName: 'vwCaixasFiosTotais',
  timestamps: false
});

CaixasFiosTotais.removeAttribute('id');