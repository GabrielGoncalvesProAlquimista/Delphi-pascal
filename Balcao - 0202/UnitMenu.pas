unit UnitMenu;

interface

uses
  Windows, variants, ubalcao, clipbrd, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, jpeg, StdCtrls, Db, DBTables, Buttons, ToolWin, ComCtrls,
  ActnList, DBCtrls, ImgList;

type
  Tfmenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    CadastroCliente1: TMenuItem;
    Locao1: TMenuItem;
    Cheques1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Internet1: TMenuItem;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Fornecedor1: TMenuItem;
    Vendedor1: TMenuItem;
    NotaFiscal1: TMenuItem;
    PedidoaoFornecedor1: TMenuItem;
    EntradadeProduto1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    EstoqueParcial1: TMenuItem;
    Query1: TQuery;
    N6: TMenuItem;
    BackUp1: TMenuItem;
    restaurarBackUp1: TMenuItem;
    ActionList1: TActionList;
    cliente: TAction;
    Query2: TQuery;
    tbcliente: TTable;
    Cadastro2: TMenuItem;
    EntradaseSadas1: TMenuItem;
    Consultas1: TMenuItem;
    Financeiro1: TMenuItem;
    Estoque1: TMenuItem;
    Ajuda1: TMenuItem;
    N1: TMenuItem;
    eclasdeAtalho1: TMenuItem;
    Comousaroprograma1: TMenuItem;
    CoolBar1: TCoolBar;
    tcadastro: TToolBar;
    bcli: TSpeedButton;
    bpr: TSpeedButton;
    bvend: TSpeedButton;
    bfor: TSpeedButton;
    bent: TSpeedButton;
    bpedc: TSpeedButton;
    bnota: TSpeedButton;
    bcota: TSpeedButton;
    pedf: TSpeedButton;
    bcontr: TSpeedButton;
    bcontp: TSpeedButton;
    bfluxo: TSpeedButton;
    CadastrodeEstado1: TMenuItem;
    CadastroCondFaturamento1: TMenuItem;
    Cotao1: TMenuItem;
    fluxosintetico: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    estoque: TAction;
    tbauxiliar: TTable;
    DataSource1: TDataSource;
    Produto1: TMenuItem;
    Cliente1: TMenuItem;
    Clientesemmovimento1: TMenuItem;
    Produtosemmovimento1: TMenuItem;
    Enabled: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    VendanoBalcao1: TMenuItem;
    N8: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Dadosdaempresa1: TMenuItem;
    logotipo: TAction;
    PopupMenu1: TPopupMenu;
    Vendedor2: TMenuItem;
    Estado1: TMenuItem;
    CondFaturamento1: TMenuItem;
    Produto2: TMenuItem;
    Cliente2: TMenuItem;
    Fornecedor2: TMenuItem;
    N11: TMenuItem;
    SpeedButton1: TSpeedButton;
    N12: TMenuItem;
    eclasdeAtalho2: TMenuItem;
    Comousaresteprograma1: TMenuItem;
    N13: TMenuItem;
    Sairdosistema1: TMenuItem;
    Panel13: TPanel;
    ComboBoxEx1: TComboBoxEx;
    ImageList1: TImageList;
    barranome: TAction;
    Fornecedor3: TMenuItem;
    Cadastros1: TMenuItem;
    EntradasSadas1: TMenuItem;
    PedidoFornecedor1: TMenuItem;
    PedidoCliente1: TMenuItem;
    EntradadeMercadorias1: TMenuItem;
    Vendedor3: TMenuItem;
    N14: TMenuItem;
    Osmaisvendidos1: TMenuItem;
    Osmenosvendidos1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    CONSULTAERAL1: TMenuItem;
    SpeedButton2: TSpeedButton;
    Panel14: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure CadastroCliente1Click(Sender: TObject);
    procedure Locao1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Internet1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure PedidoaoFornecedor1Click(Sender: TObject);
    procedure EntradadeProduto1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EstoqueParcial1Click(Sender: TObject);
    procedure BackUp1Click(Sender: TObject);
    procedure restaurarBackUp1Click(Sender: TObject);
    procedure clienteExecute(Sender: TObject);
    procedure bprClick(Sender: TObject);
    procedure bforClick(Sender: TObject);
    procedure bcliClick(Sender: TObject);
    procedure bpedcClick(Sender: TObject);
    procedure bentClick(Sender: TObject);
    procedure bnotaClick(Sender: TObject);
    procedure bcontpClick(Sender: TObject);
    procedure bcontrClick(Sender: TObject);
    procedure bfluxoClick(Sender: TObject);
    procedure CadastrodeEstado1Click(Sender: TObject);
    procedure CadastroCondFaturamento1Click(Sender: TObject);
    procedure bvendClick(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure fluxosinteticoExecute(Sender: TObject);
    procedure pedfClick(Sender: TObject);
    procedure estoqueExecute(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure bcotaClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Clientesemmovimento1Click(Sender: TObject);
    procedure Produtosemmovimento1Click(Sender: TObject);
    procedure VendanoBalcao1Click(Sender: TObject);
    procedure Dadosdaempresa1Click(Sender: TObject);
    procedure logotipoExecute(Sender: TObject);
    procedure Vendedor2Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure CondFaturamento1Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure Fornecedor2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure eclasdeAtalho1Click(Sender: TObject);
    procedure Comousaroprograma1Click(Sender: TObject);
    procedure eclasdeAtalho2Click(Sender: TObject);
    procedure Comousaresteprograma1Click(Sender: TObject);
    procedure Sairdosistema1Click(Sender: TObject);
    procedure ComboBoxEx1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure barranomeExecute(Sender: TObject);
    procedure ComboBoxEx1Change(Sender: TObject);
    procedure Fornecedor3Click(Sender: TObject);
    procedure Vendedor3Click(Sender: TObject);
    procedure PedidoFornecedor1Click(Sender: TObject);
    procedure EntradadeMercadorias1Click(Sender: TObject);
    procedure PedidoCliente1Click(Sender: TObject);
    procedure Osmaisvendidos1Click(Sender: TObject);
    procedure Osmenosvendidos1Click(Sender: TObject);
    procedure CONSULTAERAL1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  fmenu: Tfmenu;

implementation

uses uajuda, UnitInicial, Unpagar, uvenda, UnitFluxo, UnitProduto, UnitFornecedor, UPedido, UnitVendedor, unota, UEntDev,
  uestado, UnitCliente, UCondPgto, ucotacao, UnitCheque, ureceber,
  upedidofornecedor, uestoque, unbackup, urestore, ulistaproduto, UnitDadoEmpresa,
  uconsultageral;



{$R *.DFM}

procedure Tfmenu.FormActivate(Sender: TObject);
begin
           FInicial.Timer2.Enabled := False;
          FInicial.Timer1.Enabled := False;
         FInicial.Hide;
       // FInicial.Free;
       Caption := 'MENU INICIAL -  VENDA NO BALCÃO  -  HOJE: ' + DateToStr(Now);


end;

procedure Tfmenu.Cadastro1Click(Sender: TObject);
begin
     Application.CreateForm (TFProduto, FProduto);
       FProduto.PageControl1.ActivePageIndex := 1;
          FProduto.TabelaProduto.Open;
           FProduto.TabelaGrupo.Open;
             FProduto.ShowModal;
              FProduto.Release;
end;

procedure Tfmenu.CadastroCliente1Click(Sender: TObject);
begin
        clienteexecute(self);
end;

procedure Tfmenu.Locao1Click(Sender: TObject);
begin
        Application.CreateForm(Tfpedido, fpedido);

         fpedido.tbpedido.open;
          fpedido.tbitem.open;
          fpedido.tbfatura.open;
           fpedido.PageControl1.ActivePageIndex := 0;
             fpedido.tbvendedor.open;
               fpedido.ShowModal;
                fpedido.Release;
end;

procedure Tfmenu.Cheques1Click(Sender: TObject);
begin
     Application.CreateForm (TFormCheque, FormCheque);
      FormCheque.Caption := 'CONTROLE DE CHEQUES ';
      FormCheque.TabelaCheque.Open;
       FormCheque.ShowModal;
        FormCheque.Release;
end;

procedure Tfmenu.Calculadora1Click(Sender: TObject);
begin
     WinExec ('Calc.exe',SW_Show);
end;

procedure Tfmenu.Word1Click(Sender: TObject);
begin
          WinExec ('C:\Arquivos de programas\Microsoft Office\Office\WinWord',SW_Show);
end;

procedure Tfmenu.Excel1Click(Sender: TObject);
begin
          WinExec ('C:\Arquivos de programas\Microsoft Office\Office\Excel',SW_Show);
end;

procedure Tfmenu.Internet1Click(Sender: TObject);
begin
          WinExec ('C:\Arquivos de programas\Internet Explorer\Iexplore',SW_Show);
end;



procedure Tfmenu.ContasaPagar1Click(Sender: TObject);
begin
        application.CreateForm (tfpagar, fpagar);
         fpagar.pagecontrol1.activepageindex := 0;
          fpagar.tbpagar.open;
           fpagar.showmodal;
            fpagar.release;
end;

procedure Tfmenu.ContasaReceber1Click(Sender: TObject);
begin
        Application.CreateForm(TFreceber, Freceber);
         Freceber.tbreceber.open;
           Freceber.pagecontrol1.activepageindex := 0;
             Freceber.caption := 'CONTAS A RECEBER/DUPLICATAS ';
              Freceber.ShowModal;
               Freceber.Release;
end;

procedure Tfmenu.Fornecedor1Click(Sender: TObject);
begin
       Application.CreateForm (tffornecedor, ffornecedor);

        ffornecedor.TabelaFornecedor.Open;
         ffornecedor.tbfatura.Open;

          ffornecedor.formatarexecute(self);
           ffornecedor.ShowModal;
            ffornecedor.Release;
end;

procedure Tfmenu.Vendedor1Click(Sender: TObject);
begin
       Application.CreateForm (tFVendedor, FVendedor);

        FVendedor.TabelaVendedor.Open;
         FVendedor.tabelavendedor.open;
          FVendedor.formatarexecute(self);
           FVendedor.ShowModal;
            FVendedor.Release;
end;

procedure Tfmenu.NotaFiscal1Click(Sender: TObject);
begin
        Application.CreateForm(Tfnota, fnota);


        fnota.tbnota.open;
          fnota.tbitem.open;
            fnota.tbvendedor.open;
              fnota.ShowModal;
               fnota.Release;
end;

procedure Tfmenu.PedidoaoFornecedor1Click(Sender: TObject);
begin
        Application.CreateForm(tfpedidofornecedor, fpedidofornecedor);
         fpedidofornecedor.tbpedido.open;
          fpedidofornecedor.tbitem.open;
            fpedidofornecedor.PageControl1.ActivePageIndex := 0;
             fpedidofornecedor.ShowModal;
               fpedidofornecedor.Release;


end;

procedure Tfmenu.EntradadeProduto1Click(Sender: TObject);
begin
        Application.CreateForm(Tfentrada, fentrada);
         fentrada.PageControl1.ActivePageIndex := 0;
          fentrada.tbentrada.open;
           fentrada.tbfatura.open;
            fentrada.tbitem.open;
             fentrada.ShowModal;
              fentrada.Release;

end;

procedure Tfmenu.FluxodeCaixa1Click(Sender: TObject);
begin
           fluxosinteticoexecute(self);

       Application.CreateForm(tffluxo, ffluxo);

        with ffluxo.querysintetico do begin
         close;
          sql.clear;
           sql.add( 'select (Campo6) as Vencimento, (Campo1)as Entradas, (Campo3)as Saídas, (Campo4) as Saldo,');
            sql.add ('(Campo5) as Acúmulo from tbauxiliar order by vencimento');
             open;
              end;



             ffluxo.PageControl1.ActivePageIndex := 1;
              ffluxo.ShowModal;
               ffluxo.Release;

end;

procedure Tfmenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

      // application.CreateForm(tfinicial,finicial);
        FInicial.Close;
end;

procedure Tfmenu.EstoqueParcial1Click(Sender: TObject);
begin

        estoqueexecute(self);

        with Query1 do begin
         close;
          sql.clear;
           sql.add ('select (campo1) as Código, (campo2) as Produto, sum(campo3)as Entradas,');
            sql.add (' sum(campo4) as Saídas, (campo5)as Saldo from tbauxiliar group by Código, Produto, Saldo');
             open;
        end;

            Application.CreateForm(tfestoque, festoque);
             festoque.ShowModal;
              festoque.Release;

end;
procedure Tfmenu.BackUp1Click(Sender: TObject);
begin
       Application.CreateForm (tFBackup, FBackup);
       FBackup.showmodal;
         FBackup.release;
end;

procedure Tfmenu.restaurarBackUp1Click(Sender: TObject);
begin
      Application.CreateForm (tfrestore, frestore);
        frestore.showmodal;
         frestore.release;
end;

procedure Tfmenu.clienteExecute(Sender: TObject);
begin

     Application.CreateForm (tFCliente, FCliente);
       FCliente.tbcliente.Open;
        FCliente.tabelavendedor.open;
         FCliente.tbestado.open;
          FCliente.tbfatura.open;
           FCliente.formatarexecute(self);
           FCliente.PageControl1.ActivePageIndex := 0;
       FCliente.ShowModal;
        FCliente.Release;
end;

procedure Tfmenu.bprClick(Sender: TObject);
begin
        Cadastro1Click(self);
end;

procedure Tfmenu.bforClick(Sender: TObject);
begin
        Fornecedor1Click(self);
end;

procedure Tfmenu.bcliClick(Sender: TObject);
begin
        CadastroCliente1Click (Self);
end;

procedure Tfmenu.bpedcClick(Sender: TObject);
begin
        Locao1Click(self);
end;

procedure Tfmenu.bentClick(Sender: TObject);
begin
        EntradadeProduto1Click(self);
end;

procedure Tfmenu.bnotaClick(Sender: TObject);
begin
        NotaFiscal1Click(self);
end;

procedure Tfmenu.bcontpClick(Sender: TObject);
begin
        ContasaPagar1Click(self);
end;

procedure Tfmenu.bcontrClick(Sender: TObject);
begin
        ContasaReceber1Click(self);
end;

procedure Tfmenu.bfluxoClick(Sender: TObject);
begin
        FluxodeCaixa1Click(self);
end;

procedure Tfmenu.CadastrodeEstado1Click(Sender: TObject);
begin
        application.CreateForm(tFestado,Festado);
         Festado.tbestado.open;
          Festado.showmodal;
           Festado.release;

end;

procedure Tfmenu.CadastroCondFaturamento1Click(Sender: TObject);
begin
        application.CreateForm(tfcondfatura,fcondfatura);
         fcondfatura.tbcondfatura.open;
          fcondfatura.showmodal;
           fcondfatura.release;
end;

procedure Tfmenu.bvendClick(Sender: TObject);
begin
        Vendedor1Click(self);
end;

procedure Tfmenu.Cotao1Click(Sender: TObject);
begin
        Application.CreateForm(tfcotacao, fcotacao);

        with Query1 do begin
         close;
          sql.clear;
           sql.add ('select Distinct Data, (Fantasia) as Fornecedor, (Codigo) as Código, (nome) as Produto, (vrunit) as Valor from tbentradaitem');
            open;
        end;

             fcotacao.ShowModal;
              fcotacao.Release;

end;

procedure Tfmenu.fluxosinteticoExecute(Sender: TObject);
var
 tot : real;
begin

      tbauxiliar.close;
      tbauxiliar.EmptyTable;


        ///// contas a receber
        with query1 do begin
         close;
          sql.clear;
           sql.add( 'select (datavencimento) as Vencimento, sum(vrdesconto)as valor from tbreceber');
            sql.add ( ' group by vencimento order by vencimento');
             open;
              end;

           ///// armazena contas a receber
           query1.First;
           tbauxiliar.open;

           while not query1.eof do begin
            tbauxiliar.insert;
            tbauxiliar['campo6'] := query1['vencimento'];
            tbauxiliar['campo1'] := query1['Valor'];
            query1.Next;
            tbauxiliar.Post;
           end;


        ///// contas a pagar
        with query1 do begin
         close;
          sql.clear;
           sql.add( 'select (datavencimento) as Vencimento, sum(vrdesconto)as valor from tbpagar');
            sql.add ( ' group by vencimento order by vencimento');
             open;
              end;

           ///// armazena contas a pagar
           query1.First;
           tbauxiliar.open;

           while not query1.eof do begin
            tbauxiliar.insert;
            tbauxiliar['campo6'] := query1['vencimento'];
            tbauxiliar['campo3'] := query1['Valor'];
            query1.Next;
            tbauxiliar.Post;
           end;


        //// soma entradas e saidas da mesma data


        with query1 do begin
         close;
          sql.clear;
           sql.add( 'select (campo6) as vencimento, sum(campo1)as Entrada, sum(campo3)as saida from tbauxiliar');
            sql.add ( ' group by vencimento order by vencimento');
             open;
              end;


      tbauxiliar.close;
      tbauxiliar.EmptyTable;
      tbauxiliar.open;

      /// armazena as somas

           query1.First;

           while not query1.eof do begin
            tbauxiliar.insert;
            tbauxiliar['campo6'] := query1['vencimento'];
            tbauxiliar['campo1'] := query1['entrada'];
            tbauxiliar['campo3'] := query1['saida'];
            query1.Next;
           end;

         tot := 0;

        tbauxiliar.First;
        while not tbauxiliar.eof do begin
        tbauxiliar.edit;
         tbauxiliar['campo4'] := (tbauxiliar.fields[0].asfloat - tbauxiliar.fields[2].asfloat);
         tot := tot + tbauxiliar['campo4'];
          tbauxiliar['campo5'] := tot;
           tbauxiliar.next;
            end;
        query1.close;
        tbauxiliar.close;


end;

procedure Tfmenu.pedfClick(Sender: TObject);
begin
        PedidoaoFornecedor1Click(self);
end;

procedure Tfmenu.estoqueExecute(Sender: TObject);

begin
     // entradas
        with Query1 do begin
         close;
          sql.clear;
           sql.add ('select codigo, nome, sum(qtd)as entrada from tbentradaitem');
            sql.add (' group by codigo, nome');
            open;
        end;

        tbauxiliar.emptytable;
        tbauxiliar.open;

        while not query1.eof do begin
         tbauxiliar.insert;
          tbauxiliar['campo1'] := query1['codigo'];
           tbauxiliar['campo2'] := query1['nome'];
            tbauxiliar['campo3'] := query1['entrada'];
             query1.next
              end;

         query1.close;


        //////         SAIDAS


        with Query2 do begin
         close;
          sql.clear;
           sql.add ('select codigo, nome, sum(qtd) as saida from tbpedidoitem');
            sql.add (' where operacao ="P" group by codigo, nome');
            open;
        end;

        query2.first;

        while not query2.eof do begin

          if tbauxiliar.locate('campo1', query2['codigo'] ,[]) then begin
           tbauxiliar.edit;
             tbauxiliar['campo4'] := query2['saida'];
            end else begin

           tbauxiliar.insert;
            tbauxiliar['campo1'] := query2['codigo'];
             tbauxiliar['campo2'] := query2['nome'];
              tbauxiliar['campo4'] := query2['saida'];
               end;

               query2.next;
                end;

         query2.close;

         tbauxiliar.first;

         while not tbauxiliar.eof do begin
          tbauxiliar.edit;
           tbauxiliar.fields[4].asfloat := (tbauxiliar.fields[2].asfloat - tbauxiliar.fields[3].asfloat);
            tbauxiliar.next;
             end;
         tbauxiliar.close;


end;

procedure Tfmenu.Produto1Click(Sender: TObject);
begin
         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.st :='nenhum';
           flistaproduto.table1.open;
            flistaproduto.showmodal;
end;

procedure Tfmenu.bcotaClick(Sender: TObject);
begin
        Cotao1Click (self);
end;

procedure Tfmenu.Cliente1Click(Sender: TObject);
begin
     Application.CreateForm (tFCliente, FCliente);
       FCliente.tbcliente.Open;
        FCliente.tabelavendedor.open;
         FCliente.tbestado.open;
          FCliente.tbfatura.open;
           FCliente.formatarexecute(self);
            FCliente.PageControl1.ActivePageIndex := 1;
             FCliente.PageControl1Change(self);
       FCliente.ShowModal;
        FCliente.Release;

end;

procedure Tfmenu.Clientesemmovimento1Click(Sender: TObject);
var
MSG, st, st1 : STRING;
begin

          if InputQuery ('Cliente sem movimento', 'Cliente sem movimento desde: (digite a data abaixo "dd/mm/yyyy")', st) then begin

          st1 := formatdatetime ('mm/dd/yyyy', strtodate(st));

    with query1 do begin
     close;
      sql.clear;
       sql.add ('select distinct fantasia, max(data) as Data from tbpedido where data <= "'+ st1+'" group by fantasia order by fantasia');
        open;
         end;

    while not query1.Eof do begin
    if query1['fantasia'] <> null then
    msg := msg + query1['fantasia']+ #13;
    query1.next;
    end;

    showmessage('Cliente sem movimento desde:'  + St + #13+ #13 + msg);
    end;

end;

procedure Tfmenu.Produtosemmovimento1Click(Sender: TObject);
var
MSG, st, st1 : STRING;
begin

          if InputQuery ('Produto sem movimento', 'Produto sem movimento desde: (digite a data abaixo "dd/mm/yyyy")', st) then begin

           st1 := formatdatetime ('mm/dd/yyyy', strtodate(st));

    with query1 do begin
     close;
      sql.clear;
       sql.add ('select distinct codigo, nome, max(data) as data from tbpedidoitem where data <= "'+ st1+'" group by codigo, nome order by codigo');
        open;
         end;

    while not query1.Eof do begin
    if query1['codigo'] <> null then
    msg := msg + floattostr(query1['codigo'])+ '            ';
    if query1['nome'] <> null then
    msg := msg + query1['nome']+ #13;
    query1.next;
    end;



    showmessage('Produto sem movimento desde:'  + St+ #13+ #13 + 'Código -  Produto'+ #13+#13 + msg);
    end;


end;


procedure Tfmenu.VendanoBalcao1Click(Sender: TObject);
begin
        Application.CreateForm(Tfbalcao, fbalcao);
         fbalcao.tbpedido.open;
          fbalcao.tbitem.open;
           fbalcao.tbfatura.open;
             fbalcao.formatarexecute(self);
              fbalcao.ShowModal;
               fbalcao.Release;
               end;
procedure Tfmenu.Dadosdaempresa1Click(Sender: TObject);
var
st :string;

begin
       st := inputbox('Dados', 'Digite a senha', '');

       if st = 'xanin' then begin

       Application.CreateForm (tFormDadoEmpresa, FormDadoEmpresa);
        FormDadoEmpresa.showmodal;
         FormDadoEmpresa.release;
          end else
           Showmessage('senha inválida');

end;

procedure Tfmenu.logotipoExecute(Sender: TObject);
var
  MyFormat : Word;
  Bitmap : TBitMap;
  AData: THandle;
  APalette : HPALETTE;
begin
  Bitmap := TBitmap.Create;
  try

    if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
    Bitmap.LoadFromFile(extractfilepath(paramstr(0)) + '\imagem\logo.bmp');
    Bitmap.SaveToClipBoardFormat(MyFormat,AData,APalette);
    ClipBoard.SetAsHandle(MyFormat,AData);
    end;
  finally
    Bitmap.Free;
  end;

end;

procedure Tfmenu.Vendedor2Click(Sender: TObject);
begin
        Vendedor1Click(self);
end;

procedure Tfmenu.Estado1Click(Sender: TObject);
begin
        CadastrodeEstado1Click(self);
end;

procedure Tfmenu.CondFaturamento1Click(Sender: TObject);
begin
CadastroCondFaturamento1Click(self);
end;

procedure Tfmenu.Produto2Click(Sender: TObject);
begin
        Cadastro1Click(self);
end;

procedure Tfmenu.Cliente2Click(Sender: TObject);
begin
        clienteexecute(self);
end;

procedure Tfmenu.Fornecedor2Click(Sender: TObject);
begin
        Fornecedor1Click(self)
end;

procedure Tfmenu.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure Tfmenu.eclasdeAtalho1Click(Sender: TObject);
begin
       Application.CreateForm (tfajuda, fajuda);
        fajuda.Memo1.Lines.LoadFromFile(extractfilepath(paramstr(0)) + '\imagem\ajuda.txt');
         fajuda.showmodal;
          fajuda.release;
end;

procedure Tfmenu.Comousaroprograma1Click(Sender: TObject);
begin
        Application.MessageBox('1 - Primeiramente cadastre todos os ítens do menu "Cadastro" na ordem que está.' + #13 +
         '2 - Estando cadastrados, poderá dar entradas e saídas.' + #13 +
         '3 - O estoque só mostrará ítens que já foram dados entradas, faça isso antes de executar vendas.'+#13+
         '4 - Em todas as telas poderá consultar e emitir Relatórios/Impressões.' +#13+
         '5 - Consulte tecla de atalho para usar melhor os recursos deste programa.'+#13+
         '6 - Use o botão direito do mouse, para acessar o munu de cadastro.'+#13+
         '7 - Clique no botão NOVO, antes de inserir um registro, para gerar o código.',
         'COMO USAR ESTE PROGRAMA', MB_OK + MB_ICONWARNING );
end;

procedure Tfmenu.eclasdeAtalho2Click(Sender: TObject);
begin
        eclasdeAtalho1Click(self);
end;

procedure Tfmenu.Comousaresteprograma1Click(Sender: TObject);
begin
        Comousaroprograma1Click(self);
end;

procedure Tfmenu.Sairdosistema1Click(Sender: TObject);
begin
       if application.MessageBox('Deseja encerrar este programa?','Fechar',4) = mryes then begin
       // application.CreateForm(tfinicial,finicial);
         FInicial.Close;
          end;
end;

procedure Tfmenu.ComboBoxEx1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if key = 13 then
         barranomeexecute(self);
end;

procedure Tfmenu.barranomeExecute(Sender: TObject);
begin

         if uppercase (ComboBoxEx1.Text) = 'CLIENTE' then
          CadastroCliente1Click (Self)

         else if uppercase (ComboBoxEx1.Text) = 'PRODUTO' then
          Cadastro1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'VENDEDOR' THEN
          Vendedor1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'FORNECEDOR' THEN
          Fornecedor1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'PEDIDO FORNECEDOR' THEN
          PedidoaoFornecedor1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'ENTRADA' THEN
          EntradadeProduto1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'PEDIDO CLIENTE' THEN
         Locao1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'NOTA FISCAL' THEN
          NotaFiscal1Click(self)

         else if ComboBoxEx1.ItemIndex = 11 THEN
          Cotao1Click (self)

         else if uppercase (ComboBoxEx1.Text) = 'CONTAS A PAGAR' THEN
         ContasaPagar1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'CONTAS A RECEBER' THEN
          ContasaReceber1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'FLUXO DE CAIXA' THEN
          FluxodeCaixa1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'ESTOQUE GERAL' THEN
          EstoqueParcial1click(self)

         else if uppercase (ComboBoxEx1.Text) = 'ESTADO' THEN
          CadastrodeEstado1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'FATURAMENTO' THEN
          CadastroCondFaturamento1Click(self)

         else if uppercase (ComboBoxEx1.Text) = 'BALCAO' THEN
          VendanoBalcao1Click(self);

end;

procedure Tfmenu.ComboBoxEx1Change(Sender: TObject);
begin
         if uppercase (ComboBoxEx1.Text) = 'CL' then
          ComboBoxEx1.Text := 'CLIENTE'

         else if uppercase (ComboBoxEx1.Text) = 'PR' then
          ComboBoxEx1.Text := 'PRODUTO'

         else if uppercase (ComboBoxEx1.Text) = 'VE' THEN
          ComboBoxEx1.Text := 'VENDEDOR'

         else if uppercase (ComboBoxEx1.Text) = 'FO' THEN
         ComboBoxEx1.Text := 'FORNECEDOR'

         else if uppercase (ComboBoxEx1.Text) = 'PEDIDO F' THEN
          ComboBoxEx1.Text := 'PEDIDO FORNECEDOR'

         else if uppercase (ComboBoxEx1.Text) = 'EN' THEN
          ComboBoxEx1.Text := 'ENTRADA'

         else if uppercase (ComboBoxEx1.Text) = 'PE' THEN
         ComboBoxEx1.Text := 'PEDIDO CLIENTE'

         else if uppercase (ComboBoxEx1.Text) = 'NO' THEN
          ComboBoxEx1.Text := 'NOTA FISCAL'

         else if uppercase (ComboBoxEx1.Text) = 'COT' THEN
          ComboBoxEx1.Text := 'COTAÇÃO'

         else if uppercase (ComboBoxEx1.Text) = 'CON' THEN
         ComboBoxEx1.Text := 'CONTAS A RECEBER'

         else if uppercase (ComboBoxEx1.Text) = 'CONTAS A P' THEN
          ComboBoxEx1.Text := 'CONTAS A PAGAR'

         else if uppercase (ComboBoxEx1.Text) = 'FL' THEN
          ComboBoxEx1.Text := 'FLUXO DE CAIXA'

         else if uppercase (ComboBoxEx1.Text) = 'ES' THEN
          ComboBoxEx1.Text := 'ESTOQUE GERAL'

         else if uppercase (ComboBoxEx1.Text) = 'ESTA' THEN
          ComboBoxEx1.Text := 'ESTADO'

         else if uppercase (ComboBoxEx1.Text) = 'FAT' THEN
          ComboBoxEx1.Text := 'FATURAMENTO'

         else if uppercase (ComboBoxEx1.Text) = 'BA' THEN
          ComboBoxEx1.Text := 'BALCAO';
end;

procedure Tfmenu.Fornecedor3Click(Sender: TObject);
begin
        Fornecedor1Click(self);
end;

procedure Tfmenu.Vendedor3Click(Sender: TObject);
begin
Vendedor1Click(self);
end;

procedure Tfmenu.PedidoFornecedor1Click(Sender: TObject);
begin
        Application.CreateForm(tfpedidofornecedor, fpedidofornecedor);
         fpedidofornecedor.tbpedido.open;
          fpedidofornecedor.tbitem.open;
            fpedidofornecedor.PageControl1.ActivePageIndex := 1;
             fpedidofornecedor.PageControl1Change(self);
              fpedidofornecedor.ShowModal;
               fpedidofornecedor.Release;
end;

procedure Tfmenu.EntradadeMercadorias1Click(Sender: TObject);
begin
        Application.CreateForm(Tfentrada, fentrada);
         fentrada.PageControl1.ActivePageIndex := 1;
         fentrada.PageControl1Change(self);
          fentrada.tbentrada.open;
           fentrada.tbfatura.open;
            fentrada.tbitem.open;
             fentrada.ShowModal;
              fentrada.Release;
end;

procedure Tfmenu.PedidoCliente1Click(Sender: TObject);
begin
        Application.CreateForm(Tfpedido, fpedido);
          fpedido.tbpedido.open;
           fpedido.tbitem.open;
            fpedido.tbfatura.open;
             fpedido.PageControl1.ActivePageIndex := 1;
              fpedido.PageControl1Change(self);
               fpedido.tbvendedor.open;
                fpedido.ShowModal;
                 fpedido.Release;
end;

procedure Tfmenu.Osmaisvendidos1Click(Sender: TObject);
var
st, st1:real;
 st2, st3 : string;
begin

          if InputQuery ('Os Produtos mais vendidos', 'A partir de que data?: (digite a data abaixo "dd/mm/yyyy")', st3) then begin

           st2 := formatdatetime ('mm/dd/yyyy', strtodate(st3));


        with query1 do begin
         close;
          sql.clear;
           sql.add ('select (codigo) as Código, (nome)as Produto, sum(qtd) as Vendido from tbpedidoitem where data >= "'+ st2+'" and operacao ="P" group by codigo, nome order by vendido desc');
            open;

        query1.first;

        st:= (query1.fieldbyname('vendido').AsFloat);

        query1.MoveBy(19);

        st1 := (query1.fieldbyname('vendido').AsFloat);

        query1.Filter := 'vendido >=''' + floattostr(st1) + ''' and vendido <=''' + floattostr(st) + '''';
         query1.Filtered := true;


         application.CreateForm(tfvenda, fvenda);
          fvenda.showmodal;
           fvenda.release;
             query1.Filtered := false;
              query1.Filter := '';
end;
end;
    end;
procedure Tfmenu.Osmenosvendidos1Click(Sender: TObject);
var
st, st1:real;
 st2, st3 : string;
begin

          if InputQuery ('Os Produtos mais vendidos', 'A partir de que data?: (digite a data abaixo "dd/mm/yyyy")', st3) then begin

           st2 := formatdatetime ('mm/dd/yyyy', strtodate(st3));

        with query1 do begin
         close;
          sql.clear;
           sql.add ('select (codigo) as Código, (nome)as Produto, sum(qtd) as Vendido from tbpedidoitem where data >= "'+ st2+'" and operacao ="P" group by codigo, nome order by vendido');
            open;

        query1.first;

        st:= (query1.fieldbyname('vendido').AsFloat);

        query1.MoveBy(19);

        st1 := (query1.fieldbyname('vendido').AsFloat);

        query1.Filter := 'vendido >=''' + floattostr(st) + ''' and vendido <=''' + floattostr(st1) + '''';
         query1.Filtered := true;


         application.CreateForm(tfvenda, fvenda);
          fvenda.showmodal;
           fvenda.release;
             query1.Filtered := false;
              query1.Filter := '';
end;
     end;

end;

procedure Tfmenu.CONSULTAERAL1Click(Sender: TObject);
begin
        application.Createform(tfconsultageral, fconsultageral);
         fconsultageral.showmodal;
          fconsultageral.release;
end;

procedure Tfmenu.SpeedButton2Click(Sender: TObject);
begin
        VendanoBalcao1Click(self);
end;

end.

