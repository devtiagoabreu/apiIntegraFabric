import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface ContasPagasSaldoTotalMesAtualInstance extends Model {
  
  pagasMesAtual: number;
}

export const ContasPagasSaldoTotalMesAtual = sequelize.define<ContasPagasSaldoTotalMesAtualInstance>('ContasPagasSaldoTotalMesAtual', {
  
  pagasMesAtual: {
    type: DataTypes.NUMBER
  }
},{
  tableName: 'vwContasPagasSaldoTotalMesAtual',
  timestamps: false
});

ContasPagasSaldoTotalMesAtual.removeAttribute('id');

