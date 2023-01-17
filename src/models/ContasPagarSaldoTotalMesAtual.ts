import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasPagarSaldoTotalMesAtualInstance extends Model {
  
  pagarMesAtual: number;
}

export const ContasPagarSaldoTotalMesAtual = sequelize.define<ContasPagarSaldoTotalMesAtualInstance>('ContasPagarSaldoTotalMesAtual', {
  
  pagarMesAtual: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwContasPagarSaldoTotalMesAtual',
  timestamps: false
});

ContasPagarSaldoTotalMesAtual.removeAttribute('id');

