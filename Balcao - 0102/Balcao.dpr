program Balcao;

uses
  Forms,
  uajuda in 'uajuda.pas' {fajuda},
  ubalcao in 'ubalcao.pas' {fbalcao},
  Extens in 'Extens.pas',
  UnitInicial in 'UnitInicial.pas' {FInicial},
  ucotacao in 'ucotacao.pas' {fcotacao},
  UEntDev in 'UEntDev.pas' {fentrada},
  UEstado in 'UEstado.pas' {Festado},
  uestoque in 'uestoque.pas' {festoque},
  ulistacliente in 'ulistacliente.pas' {flistacliente},
  ulistafornecedor in 'ulistafornecedor.pas' {flistafornecedor},
  ulistaproduto in 'ulistaproduto.pas' {flistaproduto},
  Unit1 in 'Unit1.pas' {Form1},
  UnitCheque in 'UnitCheque.pas' {FormCheque},
  UnitCliente in 'UnitCliente.pas' {fcliente},
  UnitDadoEmpresa in 'UnitDadoEmpresa.pas' {FormDadoEmpresa},
  UnitFluxo in 'UnitFluxo.pas' {FFluxo},
  UnitFornecedor in 'UnitFornecedor.pas' {ffornecedor},
  UCondPgto in 'UCondPgto.pas' {fcondfatura},
  UnitRelatorioPagar in 'UnitRelatorioPagar.pas' {frpagar},
  UnitProduto in 'UnitProduto.pas' {fproduto},
  UnitRelatorio in 'UnitRelatorio.pas' {frpedido},
  UnitRelatorioCheque in 'UnitRelatorioCheque.pas' {FormRelatorioCheque},
  UnitRelatorioCliente1 in 'UnitRelatorioCliente1.pas' {formrelatoriocliente1},
  UnitRelatorioEntrada in 'UnitRelatorioEntrada.pas' {frentrada},
  UnitRelatorioFornecedor in 'UnitRelatorioFornecedor.pas' {FormRelatorioFornecedor},
  UnitRelatorioNota in 'UnitRelatorioNota.pas' {frnota},
  UnitMenu in 'UnitMenu.pas' {fmenu},
  urpedidofornecedor in 'urpedidofornecedor.pas' {frpedidofornecedor},
  UnitRelatorioProduto in 'UnitRelatorioProduto.pas' {FormRelatorioProduto},
  UnitRelatorioReceber in 'UnitRelatorioReceber.pas' {frreceber},
  UnitVendedor in 'UnitVendedor.pas' {fvendedor},
  UNota in 'UNota.pas' {fnota},
  Unpagar in 'Unpagar.pas' {fpagar},
  upedido in 'upedido.pas' {fpedido},
  upedidofornecedor in 'upedidofornecedor.pas' {fpedidofornecedor},
  ureceber in 'ureceber.pas' {freceber},
  UnBackup in 'UnBackup.pas' {FBackup},
  uRestore in 'uRestore.pas' {fRestore},
  uvenda in 'uvenda.pas' {fvenda},
  uconsultageral in 'uconsultageral.pas' {fconsultageral};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFInicial, FInicial);
  Application.Run;
end.
