unit ulistaproduto;

interface

uses
  Windows, Messages, variants, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, jpeg, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ActnList,
  Buttons, DBCtrls;

type
  Tflistaproduto = class(TForm)
    DataSource1: TDataSource;
    ActionList1: TActionList;
    inserir: TAction;
    formatar: TAction;
    filtrar: TAction;
    foco: TAction;
    DBGrid1: TDBGrid;
    Image1: TDBImage;
    fimagem: TAction;
    Query1: TQuery;
    cmodelo: TAction;
    combos: TAction;
    Table1: TTable;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    combonome: TComboBox;
    combomodelo: TComboBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    combogrupo: TComboBox;
    Label3: TLabel;
    cnome: TAction;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure inserirExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure filtrarExecute(Sender: TObject);
    procedure combonomeChange(Sender: TObject);
    procedure combomodeloChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure Image1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fimagemExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure table1AfterScroll(DataSet: TDataSet);
    procedure cmodeloExecute(Sender: TObject);
    procedure combosExecute(Sender: TObject);
    procedure combomodeloDropDown(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure combogrupoChange(Sender: TObject);
    procedure combonomeDropDown(Sender: TObject);
    procedure cnomeExecute(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
  st, cx : string;
    { Public declarations }
  end;

var
  flistaproduto: Tflistaproduto;

implementation

uses UEntDev, UPedido, upedidofornecedor, UNota, UnitMenu,
  ubalcao;



{$R *.DFM}

procedure Tflistaproduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        TABLE1.CLOSE;
         flistaproduto.release;
end;

procedure Tflistaproduto.FormActivate(Sender: TObject);
begin

   combosexecute(self);
    formatarexecute(self);

end;

procedure Tflistaproduto.inserirExecute(Sender: TObject);
var
prod:string;

begin

  if st <>'nenhum' then begin

  cx:='1';
   inputquery ('Quantidade','Digite aqui a quantidade', cx);

   if table1['produto'] <> null then prod := table1['produto'];
    if table1['descricao'] <> null then prod := prod + ' ' + table1['descricao'];

        if st = 'entrada' then begin
         fentrada.tbitem.insert;
          fentrada.tbitem['codigo'] := table1['codigo'];
           fentrada.tbitem['nome'] := prod;
            fentrada.tbitem['vrunit'] := table1['vrunitario'];
             fentrada.tbitem['al'] := table1['unidade'];
              fentrada.tbitem['qtd'] := strtofloat(cx);
               fentrada.tbitem.fields[10].asfloat := fentrada.tbitem.fields[8].asfloat * fentrada.tbitem.fields[9].asfloat;
            end;

        if st = 'pedidofornecedor' then begin
         fpedidofornecedor.tbitem.insert;
          fpedidofornecedor.tbitem['codigo'] := table1['codigo'];
           fpedidofornecedor.tbitem['nome'] := prod;
            fpedidofornecedor.tbitem['vrunit'] := table1['vrunitario'];
             fpedidofornecedor.tbitem['un'] := table1['unidade'];
              fpedidofornecedor.tbitem['qtd'] := strtofloat(cx);
               fpedidofornecedor.tbitem['total'] := fpedidofornecedor.tbitem.fields[7].asfloat * fpedidofornecedor.tbitem.fields[8].asfloat;
            end;

        if st = 'pedido' then begin
         fpedido.tbitem.insert;
          fpedido.tbitem['codigo'] := table1['codigo'];
           fpedido.tbitem['nome'] := prod;
            fpedido.tbitem['vrunit'] := table1['vrvenda'];
             fpedido.tbitem['un'] := table1['unidade'];
              fpedido.tbitem['qtd'] := strtofloat(cx);
               fpedido.tbitem['total'] := fpedido.tbitem.fields[7].asfloat * fpedido.tbitem.fields[8].asfloat;
            end;

        if st = 'balcao' then begin
         fbalcao.tbitem.insert;
          fbalcao.tbitem['codigo'] := table1['codigo'];
           fbalcao.tbitem['nome'] := prod;
            fbalcao.tbitem['vrunit'] := table1['vrvenda'];
             fbalcao.tbitem['un'] := table1['unidade'];
              fbalcao.tbitem['qtd'] := strtofloat(cx);
               fbalcao.tbitem['total'] := fbalcao.tbitem.fields[7].asfloat * fbalcao.tbitem.fields[8].asfloat;
            end;


        if st = 'nota' then begin
         fnota.tbitem.insert;
          fnota.tbitem['codigo'] := table1['codigo'];
           fnota.tbitem['nome'] := prod;
            fnota.tbitem['vrunit'] := table1['vrvenda'];
             fnota.tbitem['un'] := table1['unidade'];
              fnota.tbitem['qtd'] := strtofloat(cx);
               fnota.tbitem['total'] := fnota.tbitem.fields[7].asfloat * fnota.tbitem.fields[8].asfloat;
            end;
            end;

end;

procedure Tflistaproduto.formatarExecute(Sender: TObject);
begin
 (table1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
  (table1.fieldbyname ('vrvenda') as tfloatfield).displayformat := '###,##0.00';

end;

procedure Tflistaproduto.SpeedButton1Click(Sender: TObject);
var
i:integer;
begin
        table1.Filtered := false;
         table1.CancelRange;

        for i :=0 to componentcount -1 do
         if components[i] is tcombobox then
          tcombobox(components[i]).text := '';

end;

procedure Tflistaproduto.filtrarExecute(Sender: TObject);
begin
        table1.Filtered := false;
         table1.Filter := 'produto = ''' + uppercase(combonome.text) +'*''';
          table1.Filtered := true;

end;

procedure Tflistaproduto.combonomeChange(Sender: TObject);
begin

      if combonome.Text = '' then table1.filtered := false;

        if combogrupo.text <> '' then
         table1.Filter := 'link = ''' + uppercase(combogrupo.text) + ''' and produto = ''' + uppercase(combonome.text) +'*'''
        else
         table1.Filter := 'produto = ''' + uppercase(combonome.text) +'*''';

          table1.Filtered := true;

combomodelo.Clear;


end;

procedure Tflistaproduto.combomodeloChange(Sender: TObject);
begin

      if combomodelo.Text = '' then table1.filtered := false;

        if (combogrupo.text <> '') and (combonome.text <> '') then
         table1.Filter := 'link = ''' + uppercase(combogrupo.text) + ''' and produto = ''' + uppercase(combonome.text) + ''' and descricao = ''' + uppercase(combomodelo.text) +'*'''

        else  if (combogrupo.text <> '') and (combonome.text = '') then
         table1.Filter := 'link = ''' + uppercase(combogrupo.text) + ''' and descricao = ''' + uppercase(combomodelo.text) +'*'''

        else  if (combogrupo.text = '') and (combonome.text <> '') then
         table1.Filter := 'produto = ''' + uppercase(combonome.text) + ''' and descricao = ''' + uppercase(combomodelo.text) +'*'''

         else
         table1.Filter := 'descricao = ''' + uppercase(combomodelo.text) +'*''';

          table1.Filtered := true;


end;

procedure Tflistaproduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  key := #0;
       Perform(WM_nextdlgctl,0,0);
 end Else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tflistaproduto.DBGrid1Enter(Sender: TObject);
begin
        keypreview := false;

end;

procedure Tflistaproduto.DBGrid1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tflistaproduto.focoExecute(Sender: TObject);
begin
        if dbgrid1.Focused = true then
        combonome.SetFocus
        else
        dbgrid1.SetFocus;
end;

procedure Tflistaproduto.Image1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if image1.Width < 430 then begin
        if key = 107 then begin
         image1.width := image1.width + 10;
          image1.height := image1.height + 10;
           image1.left := image1.left - 5;
            image1.top := image1.top - 5;
           end;
           end;

        if image1.Width > 120 then begin
        if key = 109 then begin
         image1.width := image1.width - 10;
          image1.height := image1.height - 10;
           image1.left := image1.left + 5;
            image1.top := image1.top + 5;
             end;
              end;

        if key = 27 then begin
         image1.Hide;
          dbgrid1.setfocus;
           end;

end;

procedure Tflistaproduto.fimagemExecute(Sender: TObject);
 var
  pt : String;
begin
      if table1['imagem'] <> null then begin
       pt := table1['imagem'] ;
       if fileexists (pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile (extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');
     image1.show;
    dbgrid1.SetFocus;

end;

procedure Tflistaproduto.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f4 then begin
         if image1.Visible = false then
          fimagemexecute(self)
         else
          image1.Hide;
        end;
end;

procedure Tflistaproduto.table1AfterScroll(DataSet: TDataSet);
 var
  pt : String;
begin

     if image1.Visible = true then begin
      if table1['imagem'] <> null then begin
       pt := table1['imagem'] ;
       if fileexists (pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile (extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');
end;


end;

procedure Tflistaproduto.cmodeloExecute(Sender: TObject);

begin

   with query1 do begin
    close;
     sql.clear;

     if (combogrupo.text <> '') and(combonome.Text <> '') then
      sql.add ('select distinct descricao from tbproduto where link = "' + uppercase(combogrupo.text)+ '" and produto = "' + uppercase(combonome.text)+ '" order by descricao')

     else if (combogrupo.text <> '') and(combonome.Text = '') then
      sql.add ('select distinct descricao from tbproduto where link = "' + uppercase(combogrupo.text)+ '" order by descricao')

     else if (combogrupo.text = '') and(combonome.Text <> '') then
      sql.add ('select distinct descricao from tbproduto where produto = "' + uppercase(combonome.text)+ '" order by descricao')

     else
      sql.add ('select distinct descricao from tbproduto order by descricao');
       open;
        end;

    combomodelo.Items.Clear;

    query1.First;
    While not query1.Eof do begin
    if query1['descricao'] <> null then
    combomodelo.Items.add(query1['descricao']);

    query1.Next;

    end;

end;

procedure Tflistaproduto.combosExecute(Sender: TObject);
begin

       with query1 do begin
        close;
         sql.Clear;
          sql.add(' select distinct link from tbproduto order by link');
           open;
            end;


       query1.First;


        combogrupo.Items.Clear;

       while not query1.Eof do begin
        if query1['link'] <> null then
        combogrupo.Items.Add (query1['link']);
         query1.Next;
          end;

       with query1 do begin
        close;
         sql.Clear;
          sql.add(' select distinct produto from tbproduto order by produto');
           open;
            end;

       query1.First;

       combonome.Items.Clear;

        while not query1.Eof do begin
        if query1['produto'] <> null then
        combonome.Items.Add (query1['produto']);
         query1.Next;
          end;


       with query1 do begin
        close;
         sql.Clear;
          sql.add(' select distinct descricao from tbproduto order by descricao');
           open;
            end;


       query1.First;


        combomodelo.Items.Clear;

       while not query1.Eof do begin
        if query1['descricao'] <> null then
        combomodelo.Items.Add (query1['descricao']);
         query1.Next;
          end;



end;

procedure Tflistaproduto.combomodeloDropDown(Sender: TObject);
begin
        cmodeloexecute(self);
end;

procedure Tflistaproduto.SpeedButton2Click(Sender: TObject);
begin
        inserirexecute(self);
end;

procedure Tflistaproduto.FormDestroy(Sender: TObject);
begin


  if st = 'entrada' then
   fentrada.totalizarExecute(self)
  else if st = 'pedidofornecedor' then
   fpedidofornecedor.totalizarExecute(self)
  else if st = 'pedido' then
   fpedido.totalizarExecute(self)
  else if st = 'nota' then
   fnota.totalizarExecute(self)
  else if st = 'balcao' then
   fbalcao.totalizarExecute(self);

end;

procedure Tflistaproduto.SpeedButton3Click(Sender: TObject);
var
MSG, st : STRING;
begin

     if table1['produto'] <> null then
      st := table1['produto'];

     if table1['descricao'] <> null then
      st := st + ' ' + table1['descricao'];


    with fmenu.query1 do begin
     close;
      sql.clear;
       sql.add ('select distinct fantasia from tbpedidoitem where nome = "'+ st+'"');
        open;
         end;

    while not fmenu.query1.Eof do begin
    if fmenu.query1['fantasia'] <> null then
    msg := msg + fmenu.query1['fantasia']+ #13;
    fmenu.query1.next;
    end;

    showmessage('CLIENTES QUE CONSOMEM ' + St+':'+ #13+ #13 + msg);


end;

procedure Tflistaproduto.combogrupoChange(Sender: TObject);
begin

      if combogrupo.Text = '' then table1.filtered := false;

         table1.Filter := 'link = ''' + uppercase(combogrupo.text) +'*''';
          table1.Filtered := true;

        combomodelo.Clear;
        combonome.text := '';
end;

procedure Tflistaproduto.combonomeDropDown(Sender: TObject);
begin
        cnomeexecute(self);
end;

procedure Tflistaproduto.cnomeExecute(Sender: TObject);
begin
   with query1 do begin
    close;
     sql.clear;

     if combogrupo.Text <> '' then
      sql.add ('select distinct produto from tbproduto where link = "' + uppercase(combogrupo.text)+ '" order by produto')
     else
      sql.add ('select distinct produto from tbproduto order by produto');
       open;
        end;

    combonome.Items.Clear;

    query1.First;
    While not query1.Eof do begin
    if query1['produto'] <> null then
    combonome.Items.add(query1['produto']);

    query1.Next;

    end;
end;

procedure Tflistaproduto.Edit1Change(Sender: TObject);
begin
                table1.setrange ([edit1.text], ['Z']);
end;

end.
