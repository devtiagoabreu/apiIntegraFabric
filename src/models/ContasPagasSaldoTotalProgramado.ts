import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasPagasSaldoTotalProgramadoInstance extends Model {
  
  pagasProgramado: number;
}

export const ContasPagasSaldoTotalProgramado = sequelize.define<ContasPagasSaldoTotalProgramadoInstance>('ContasPagasSaldoTotalProgramado', {
  
  pagasProgramado: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwContasPagasSaldoTotalProgramado',
  timestamps: false
});

ContasPagasSaldoTotalProgramado.removeAttribute('id');

