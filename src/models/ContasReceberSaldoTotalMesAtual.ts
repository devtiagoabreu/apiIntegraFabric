import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasReceberSaldoTotalMesAtualInstance extends Model {
  
  receberMesAtual: number;
}

export const ContasReceberSaldoTotalMesAtual = sequelize.define<ContasReceberSaldoTotalMesAtualInstance>('ContasReceberSaldoTotalMesAtual', {
  
  receberMesAtual: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwContasReceberSaldoTotalMesAtual',
  timestamps: false
});

ContasReceberSaldoTotalMesAtual.removeAttribute('id');

