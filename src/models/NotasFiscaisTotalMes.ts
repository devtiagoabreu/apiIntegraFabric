import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface NotasFiscaisTotalMesInstance extends Model {
  
  totalMesSaida: number;
  
}

export const NotasFiscaisTotalMes = sequelize.define<NotasFiscaisTotalMesInstance>('NotasFiscaisTotalMes', {
  
  totalMesSaida: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwnotasfiscaistotalmes',
  timestamps: false
});

NotasFiscaisTotalMes.removeAttribute('id');