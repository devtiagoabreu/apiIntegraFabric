import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasReceberSaldoTotalProgramadoInstance extends Model {
  
  receberProgramado: number;
}

export const ContasReceberSaldoTotalProgramado = sequelize.define<ContasReceberSaldoTotalProgramadoInstance>('ContasReceberSaldoTotalProgramado', {
  
  receberProgramado: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwContasReceberSaldoTotalProgramado',
  timestamps: false
});

ContasReceberSaldoTotalProgramado.removeAttribute('id');

