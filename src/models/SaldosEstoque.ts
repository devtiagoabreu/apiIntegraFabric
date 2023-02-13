import { Model, DataTypes } from 'sequelize';
import { sequelize } from '../instances/mdb';

export interface SaldosEstoqueInstance extends Model {
  
  id: number;
  emp: string;
  empresa: string;
  dep: string;
  deposito: string;
  nivel: string;
  grupo: string;
  sub: string;
  cor: string;
  produto: string;
  um: string;
  codigoBarras: string;
  codigoVelho: string;
  nomeGrupo: string;
  nomeSub: string;
  nomeCor: string;
  narrativa: string;
  cf: string;
  col: string;
  colecao: string;
  lin: string;
  linha: string;
  art: string;
  artigo: string;
  cota: string;
  artigoCotas: string;
  ces: string;
  contaEstoque: string;
  tpg: string;
  tipoProdutoGlobal: string;
  tprogTpg: string;
  nivTpg: string;
  estTpg: string;
  depTpg: string;
  cliente: string;
  nomeCliente: string;
  marca: string; 
  nomeMarca: string;
  tipoTecido: string;
  tpm: string;
  ncm: string;
  altp: string;
  rotp: string;
  antc: string;
  rotc: string;
  valorMedioEstoque: number;
  valorUltimaCompra: number;
  custo: number;
  custoInformado: number;
  lead: string;
  familiaTear: string;
  loteTam: string;
  pesoLiquido: number;
  pesoRolo: number;
  pesoMiniRolo: number;
  descTamFicha: string;
  tipoProdQuimico: string;
  itemAtivo: string;
  codigoContabil: string;
  codProcesso: string;
  lote: string;
  loteProduto: string;
  saldoAtual: string;
  volumes: string;
  qtEstqInicioMes: number;
  qtEstqFinalMes: number;
  ultimaEntrada: string;
  ultimaSaida: string;
  qtSugerida: number;
  qtEmpenhada: number;
  cnpjFornecedor: string;
  notaFiscal: string;
  periodoEstoque: string;

}

export const SaldosEstoque = sequelize.define<SaldosEstoqueInstance>('SaldosEstoque', {
  
  id: {
    primaryKey: true,
    autoIncrement: true,
    type: DataTypes.INTEGER
  },
  emp: {
    type: DataTypes.STRING
  },
  empresa: {
    type: DataTypes.STRING
  },
  dep: {
    type: DataTypes.STRING
  },
  deposito: {
    type: DataTypes.STRING
  },
  nivel: {
    type: DataTypes.STRING
  },
  grupo: {
    type: DataTypes.STRING
  },
  sub: {
    type: DataTypes.STRING
  },
  cor: {
    type: DataTypes.STRING
  },
  produto: {
    type: DataTypes.STRING
  },
  um: {
    type: DataTypes.STRING
  },
  codigoBarras: {
    type: DataTypes.STRING
  },
  codigoVelho: {
    type: DataTypes.STRING
  },
  nomeGrupo: {
    type: DataTypes.STRING
  },
  nomeSub: {
    type: DataTypes.STRING
  },
  nomeCor: {
    type: DataTypes.STRING
  },
  narrativa: {
    type: DataTypes.STRING
  },
  cf: {
    type: DataTypes.STRING
  },
  col: {
    type: DataTypes.STRING
  },
  colecao: {
    type: DataTypes.STRING
  },
  lin: {
    type: DataTypes.STRING
  },
  linha: {
    type: DataTypes.STRING
  },
  art: {
    type: DataTypes.STRING
  },
  artigo: {
    type: DataTypes.STRING
  },
  cota: {
    type: DataTypes.STRING
  },
  artigoCotas: {
    type: DataTypes.STRING
  },
  ces: {
    type: DataTypes.STRING
  },
  contaEstoque: {
    type: DataTypes.STRING
  },
  tpg: {
    type: DataTypes.STRING
  },
  tipoProdutoGlobal: {
    type: DataTypes.STRING
  },
  tprogTpg: {
    type: DataTypes.STRING
  },
  nivTpg: {
    type: DataTypes.STRING
  },
  estTpg: {
    type: DataTypes.STRING
  },
  depTpg: {
    type: DataTypes.STRING
  },
  cliente: {
    type: DataTypes.STRING
  },
  nomeCliente: {
    type: DataTypes.STRING
  },
  marca: {
    type: DataTypes.STRING
  }, 
  nomeMarca: {
    type: DataTypes.STRING
  },
  tipoTecido: {
    type: DataTypes.STRING
  },
  tpm: {
    type: DataTypes.STRING
  },
  ncm: {
    type: DataTypes.STRING
  },
  altp: {
    type: DataTypes.STRING
  },
  rotp: {
    type: DataTypes.STRING
  },
  antc: {
    type: DataTypes.STRING
  },
  rotc: {
    type: DataTypes.STRING
  },
  valorMedioEstoque: {
    type: DataTypes.NUMBER
  },
  valorUltimaCompra: {
    type: DataTypes.NUMBER
  },
  custo: {
    type: DataTypes.NUMBER
  },
  custoInformado: {
    type: DataTypes.NUMBER
  },
  lead: {
    type: DataTypes.STRING
  },
  familiaTear: {
    type: DataTypes.STRING
  },
  loteTam: {
    type: DataTypes.STRING
  },
  pesoLiquido: {
    type: DataTypes.NUMBER
  },
  pesoRolo: {
    type: DataTypes.NUMBER
  },
  pesoMiniRolo: {
    type: DataTypes.NUMBER
  },
  descTamFicha: {
    type: DataTypes.STRING
  },
  tipoProdQuimico: {
    type: DataTypes.STRING
  },
  itemAtivo: {
    type: DataTypes.STRING
  },
  codigoContabil: {
    type: DataTypes.STRING
  },
  codProcesso: {
    type: DataTypes.STRING
  },
  lote: {
    type: DataTypes.STRING
  },
  loteProduto: {
    type: DataTypes.STRING
  },
  saldoAtual: {
    type: DataTypes.STRING
  },
  volumes: {
    type: DataTypes.STRING
  },
  qtEstqInicioMes: {
    type: DataTypes.NUMBER
  },
  qtEstqFinalMes: {
    type: DataTypes.NUMBER
  },
  ultimaEntrada: {
    type: DataTypes.STRING
  },
  ultimaSaida: {
    type: DataTypes.STRING
  },
  qtSugerida: {
    type: DataTypes.NUMBER
  },
  qtEmpenhada: {
    type: DataTypes.NUMBER
  },
  cnpjFornecedor: {
    type: DataTypes.STRING
  },
  notaFiscal: {
    type: DataTypes.STRING
  },
  periodoEstoque: {
    type: DataTypes.STRING
  }
},{
  tableName: 'saldosEstoque',
  timestamps: false
});