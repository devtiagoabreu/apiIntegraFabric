import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasPagarSaldoTotalProgramadoInstance extends Model {
  
  receberProgramado: number;
}

export const ContasPagarSaldoTotalProgramado = sequelize.define<ContasPagarSaldoTotalProgramadoInstance>('ContasPagarSaldoTotalProgramado', {
  
  pagarProgramado: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwContasPagarSaldoTotalProgramado',
  timestamps: false
});

ContasPagarSaldoTotalProgramado.removeAttribute('id');

