import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface NotasFiscaisTotalMesInstance extends Model {
  
  totalSaida: number;
  
}

export const NotasFiscais = sequelize.define<NotasFiscaisTotalMesInstance>('NotasFiscaisTotalMes', {
  
  totalSaida: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwnotasfiscaistotalmes',
  timestamps: false
});