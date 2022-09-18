unit UnitProduto;

interface

uses
  clipbrd, Windows, variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, Buttons, ExtCtrls, Db, DBTables,
  ExtDlgs, Grids, DBGrids, Menus, ActnList, ToolWin;

type
  Tfproduto = class(TForm)
    TabelaGrupo: TTable;
    DSTabelaGrupo: TDataSource;
    TabelaProduto: TTable;
    DSTabelaProduto: TDataSource;
    opendialog: TOpenPictureDialog;
    ActionList1: TActionList;
    novo: TAction;
    voltar: TAction;
    avancar: TAction;
    foco: TAction;
    formatartb: TAction;
    gravar: TAction;
    cancelar: TAction;
    imprimir: TAction;
    fimagem: TAction;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel13: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ToolBar1: TToolBar;
    btnPrimeirop: TSpeedButton;
    btnVoltarp: TSpeedButton;
    btnAvancarp: TSpeedButton;
    btnUltimop: TSpeedButton;
    Panel3: TPanel;
    Panel16: TPanel;
    btnnovop: TSpeedButton;
    Panel17: TPanel;
    btngravarp: TSpeedButton;
    Panel18: TPanel;
    btncancelarp: TSpeedButton;
    Panel19: TPanel;
    Panel15: TPanel;
    SpeedButton2: TSpeedButton;
    Panel20: TPanel;
    Panel22: TPanel;
    btimprimirp: TSpeedButton;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid3: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Panel14: TPanel;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBNavigator3: TDBNavigator;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    Edit2: TEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox5: TGroupBox;
    Label33: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label31: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    ToolBar4: TToolBar;
    btnPrimeirop1: TSpeedButton;
    btnVoltarp1: TSpeedButton;
    btnAvancarp1: TSpeedButton;
    btnUltimop1: TSpeedButton;
    Panel31: TPanel;
    Panel32: TPanel;
    btnnovop1: TSpeedButton;
    Panel33: TPanel;
    btngravar1: TSpeedButton;
    Panel34: TPanel;
    btncancelar1: TSpeedButton;
    Panel35: TPanel;
    SpeedButton1: TSpeedButton;
    Panel37: TPanel;
    Panel38: TPanel;
    btimprimir1: TSpeedButton;
    SpeedButton21: TSpeedButton;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit25: TDBEdit;
    image1: TDBImage;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure EditNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure TabelaProdutoAfterScroll(DataSet: TDataSet);
    procedure novoExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure formatartbExecute(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure TabelaGrupoAfterOpen(DataSet: TDataSet);
    procedure TabelaGrupoAfterScroll(DataSet: TDataSet);
    procedure TabelaGrupoBeforeEdit(DataSet: TDataSet);
    procedure btngravarpClick(Sender: TObject);
    procedure btncancelarpClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnPrimeiropClick(Sender: TObject);
    procedure btnVoltarpClick(Sender: TObject);
    procedure btnAvancarpClick(Sender: TObject);
    procedure btnUltimopClick(Sender: TObject);
    procedure btnnovopClick(Sender: TObject);
    procedure btnnovop1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure gravarExecute(Sender: TObject);
    procedure btngravar1Click(Sender: TObject);
    procedure cancelarExecute(Sender: TObject);
    procedure imprimirExecute(Sender: TObject);
    procedure btimprimirpClick(Sender: TObject);
    procedure btimprimir1Click(Sender: TObject);
    procedure btncancelar1Click(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label24Click(Sender: TObject);
    procedure TabelaGrupoNewRecord(DataSet: TDataSet);
    procedure fimagemExecute(Sender: TObject);
    procedure image1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabelaProdutoAfterOpen(DataSet: TDataSet);
    procedure TabelaProdutoBeforeEdit(DataSet: TDataSet);
    procedure btnPrimeirop1Click(Sender: TObject);
    procedure btnVoltarp1Click(Sender: TObject);
    procedure btnAvancarp1Click(Sender: TObject);
    procedure btnUltimop1Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure TabelaProdutoNewRecord(DataSet: TDataSet);
    procedure Label25Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabelaProdutoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
NUM:Integer;
    { Public declarations }
  end;

var
  fproduto: Tfproduto;

implementation

uses UnitMenu, UnitRelatorioProduto, ulistaproduto;




{$R *.DFM}


procedure Tfproduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

         TabelaProduto.edit;
           TabelaProduto.Post;

           TabelaProduto.Close;
            TabelaGrupo.Close;

end;


procedure Tfproduto.FormActivate(Sender: TObject);
begin
        formatartbexecute(self);
         end;

procedure Tfproduto.DBGrid2Enter(Sender: TObject);
begin

         TabelaGrupo.Edit;
          TabelaGrupo.Post;
       if (tabelagrupo['grupo']=null) or (tabelagrupo['nome']=null) then begin
        showmessage('Preencha o grupo ');
         dbedit12.setfocus;
          end else keypreview := false;

end;

procedure Tfproduto.Label2Click(Sender: TObject);
Var
       Grupo:String;
        Loc : Boolean;
begin

     Loc := InputQuery ('localizar', 'Entre com o nome do grupo',Grupo );
      if Loc then begin
       TabelaGrupo.IndexName :='byNOME';
        if not TabelaGrupo.FindKey ([Grupo]) then
         ShowMessage ('Grupo não localizado');
          end;

end;

procedure Tfproduto.EditNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_F12 then begin
   DBGrid2.SetFocus;
   Application.CreateForm (tflistaproduto, flistaproduto);
       flistaproduto.table1.Open;
      flistaproduto.st := 'Produto';
     flistaproduto.ShowModal;
    flistaproduto.Release;
end;
end;

procedure Tfproduto.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
          DBGrid2.SelectedIndex :=  DBGrid2.SelectedIndex + 1;

        if key = #27 then
          DBGrid2.SelectedIndex :=  DBGrid2.SelectedIndex - 1;


end;

procedure Tfproduto.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  bookmark : tbookmarkstr;
begin
     if key = 13 then begin

     bookmark := tabelaproduto.Bookmark;

     try
      tabelaproduto.DisableControls;
    try
      IF Edit2.Text <> '' THEN BEGIN
        TabelaProduto.First;
          While not TabelaProduto.Eof do begin
           TabelaProduto.Edit;
           TabelaProduto['vrunitario'] := TabelaProduto.fields[4].asfloat+(TabelaProduto.fields[4].asfloat / 100 * StrToFloat(Edit2.Text));
           TabelaProduto.Next;
           end;

    end;
    finally

    tabelaproduto.EnableControls;
    end;
    finally
    tabelaproduto.Bookmark := bookmark;
    end;

     END;

end;

procedure Tfproduto.DBEdit2Exit(Sender: TObject);
  var
  bookmark : tbookmarkstr;
begin
     bookmark := tabelaproduto.Bookmark;


     try
      tabelaproduto.DisableControls;
    try

         TabelaProduto.First;
          While not TabelaProduto.Eof do begin
           TabelaProduto.Edit;
            TabelaProduto['vrvenda'] :=TabelaProduto.fields[4].asfloat +(TabelaProduto.fields[4].asfloat * TabelaGrupo.fields[5].asfloat / 100);
             TabelaProduto.Next;
              end;
    finally

    tabelaproduto.EnableControls;
    end;
    finally
    tabelaproduto.Bookmark := bookmark;
     end;

     tabelagrupo.edit;
     tabelagrupo.post;
end;

procedure Tfproduto.DBEdit1Exit(Sender: TObject);
  var
  bookmark : tbookmarkstr;
begin
     bookmark := tabelaproduto.Bookmark;

     try
      tabelaproduto.DisableControls;
    try
         TabelaProduto.First;
          While not TabelaProduto.Eof do begin
           TabelaProduto.Edit;
            TabelaProduto['Revenda'] :=TabelaProduto.fields[4].asfloat +(TabelaProduto.fields[4].asfloat * TabelaGrupo.fields[6].asfloat / 100);
             TabelaProduto.Next;
              end;
    finally

    tabelaproduto.EnableControls;
    end;
    finally
    tabelaproduto.Bookmark := bookmark;
     end;

     tabelagrupo.edit;
     tabelagrupo.post;
end;

procedure Tfproduto.SpeedButton21Click(Sender: TObject);
VAR
bookmark1: tbookmarkstr;
begin


        bookmark1 := tabelaproduto.Bookmark;
     try
        tabelaproduto.DisableControls;

    try

        tabelaproduto.First;

        while not tabelaproduto.Eof do begin
        tabelaproduto.edit;
         TabelaProduto['subgrupo'] := TabelaGrupo['NOME'];
           tabelaproduto.next;
            end;


    finally

        tabelaproduto.EnableControls;
    end;
    finally

    tabelaproduto.Bookmark := bookmark1;
    end;

end;

procedure Tfproduto.Image1Click(Sender: TObject);
begin
        Opendialog.execute;

          tabelaproduto.edit;
           tabelaproduto['imagem'] := opendialog.FileName;
            image1.picture.LoadFromFile (opendialog.FileName);

end;

procedure Tfproduto.TabelaProdutoAfterScroll(DataSet: TDataSet);
 var
  pt : String;
begin

     if tabelaproduto['imagem'] <> null then begin
      pt := tabelaproduto['imagem'] ;
       if FileExists(pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');

                 btnAvancarp1.Enabled := True;
            btnUltimop1.Enabled := True;
             btnPrimeirop1.Enabled := True;
              btnVoltarp1.Enabled := True;

        if tabelaproduto.Bof then begin
         btnPrimeirop1.Enabled := False;
          btnVoltarp1.Enabled := False;

             end;

        if tabelaproduto.Eof then begin

           btnAvancarp1.Enabled := False;
            btnUltimop1.Enabled := False;
             end;


end;

procedure Tfproduto.novoExecute(Sender: TObject);
begin
       if pagecontrol1.ActivePageIndex = 0 then begin
         TabelaGrupo.Insert;
          DBEdit9.SetFocus;
           btngravarp.Enabled:=true;
            btncancelarp.Enabled:=true;

        end else if pagecontrol1.ActivePageIndex = 1 then begin
         Tabelaproduto.Insert;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(codigo) as codigo from tbproduto');
            open;
         end;

        if fmenu.query1['codigo'] <> null then
         tabelaproduto['codigo'] := fmenu.query1['codigo'] + 1
        else
        tabelaproduto['codigo']:='1';

        fmenu.query1.close;

            TabelaProduto['Unidade'] := 'PC';

         TabelaProduto['subgrupo'] := TabelaGrupo['NOME'];

          DBEdit14.SetFocus;
           btngravar1.Enabled:=true;
            btncancelar1.Enabled:=true;
        end;

end;

procedure Tfproduto.voltarExecute(Sender: TObject);
begin
       if pagecontrol1.ActivePageIndex = 0 then
         tabelagrupo.prior

        else if pagecontrol1.ActivePageIndex = 1 then
         tabelaproduto.prior;


end;

procedure Tfproduto.avancarExecute(Sender: TObject);
begin
       if pagecontrol1.ActivePageIndex = 0 then
         tabelagrupo.next

        else if pagecontrol1.ActivePageIndex = 1 then
         tabelaproduto.next;
end;

procedure Tfproduto.focoExecute(Sender: TObject);
begin


       if pagecontrol1.ActivePageIndex = 0 then begin
        if dbgrid3.focused = true then
         dbedit9.setfocus
        else dbgrid3.setfocus;
        end else

       if pagecontrol1.ActivePageIndex = 1 then begin
        if dbgrid2.focused = true then
         dbedit8.setfocus
        else dbgrid2.setfocus;
        end;
end;

procedure Tfproduto.formatartbExecute(Sender: TObject);
begin
 (tabelaproduto.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
  (tabelaproduto.fieldbyname ('vrunitario') as tfloatfield).displayformat := '###,##0.00';
   (tabelaproduto.fieldbyname ('vrvenda') as tfloatfield).displayformat := '###,##0.00';
    (tabelaproduto.fieldbyname ('revenda') as tfloatfield).displayformat := '###,##0.00';

end;

procedure Tfproduto.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
          DBGrid3.SelectedIndex :=  DBGrid3.SelectedIndex + 1;

        if key = #27 then
          DBGrid3.SelectedIndex :=  DBGrid3.SelectedIndex - 1;
end;

procedure Tfproduto.DBGrid2ColExit(Sender: TObject);
begin
       if dbgrid2.selectedindex in [3] then begin
        DBEdit2Exit(self);
         DBEdit1Exit(self);
          end;
end;

procedure Tfproduto.TabelaGrupoAfterOpen(DataSet: TDataSet);
begin
        btngravarp.enabled := false;
        btncancelarp.enabled := false;
end;

procedure Tfproduto.TabelaGrupoAfterScroll(DataSet: TDataSet);
begin
                 btnAvancarp.Enabled := True;
            btnUltimop.Enabled := True;
             btnPrimeirop.Enabled := True;
              btnVoltarp.Enabled := True;

        if tabelagrupo.Bof then begin
         btnPrimeirop.Enabled := False;
          btnVoltarp.Enabled := False;

             end;

        if tabelagrupo.Eof then begin

           btnAvancarp.Enabled := False;
            btnUltimop.Enabled := False;
             end;

end;

procedure Tfproduto.TabelaGrupoBeforeEdit(DataSet: TDataSet);
begin
       btnGravarp.Enabled:=True;
       btncancelarp.enabled := true;
end;

procedure Tfproduto.btngravarpClick(Sender: TObject);
begin
        gravarexecute(self);
end;

procedure Tfproduto.btncancelarpClick(Sender: TObject);
begin
        cancelarexecute(self);
end;

procedure Tfproduto.SpeedButton2Click(Sender: TObject);
begin
        fmenu.Produto1Click(self);
end;

procedure Tfproduto.SpeedButton1Click(Sender: TObject);
begin
        fmenu.Produto1Click(self);
end;

procedure Tfproduto.btnPrimeiropClick(Sender: TObject);
begin
        tabelagrupo.first;
end;

procedure Tfproduto.btnVoltarpClick(Sender: TObject);
begin
        tabelagrupo.Prior;
end;

procedure Tfproduto.btnAvancarpClick(Sender: TObject);
begin
        tabelagrupo.next;
end;

procedure Tfproduto.btnUltimopClick(Sender: TObject);
begin
        tabelagrupo.last;
end;

procedure Tfproduto.btnnovopClick(Sender: TObject);
begin
        novoexecute(self);
end;

procedure Tfproduto.btnnovop1Click(Sender: TObject);
begin
        novoexecute(self);
end;

procedure Tfproduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  key := #0;
       Perform(WM_nextdlgctl,0,0);
 end Else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfproduto.gravarExecute(Sender: TObject);
begin
       if pagecontrol1.ActivePageIndex = 0 then begin
         TabelaGrupo.Edit;
          TabelaGrupo.Post;
            btngravarp.Enabled:=false;
             btncancelarp.Enabled:=false;
        end

        else if pagecontrol1.ActivePageIndex = 1 then begin
         Tabelaproduto.Edit;
          Tabelaproduto.Post;
            btngravar1.Enabled:=false;
             btncancelar1.Enabled:=false;
         end;

end;

procedure Tfproduto.btngravar1Click(Sender: TObject);
begin
        gravarexecute(self);
end;

procedure Tfproduto.cancelarExecute(Sender: TObject);
begin
       if pagecontrol1.ActivePageIndex = 0 then begin
         TabelaGrupo.cancel;
           btngravarp.Enabled:=false;
            btncancelarp.Enabled:=false;
        end

        else if pagecontrol1.ActivePageIndex = 1 then begin
         Tabelaproduto.cancel;
           btngravar1.Enabled:=false;
            btncancelar1.Enabled:=false;
         end;

end;

procedure Tfproduto.imprimirExecute(Sender: TObject);
var
bookmark : tbookmarkstr;

begin

  fmenu.logotipoExecute(self);

          Application.CreateForm (TFormRelatorioProduto,FormRelatorioProduto);

 if pagecontrol1.ActivePageIndex = 0 then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  FormRelatorioProduto.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FormRelatorioProduto.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

   if application.MessageBox('Deseja imprimir apenas este grupo?', 'Imprimir', 4 +MB_ICONWARNING)= mrno then
    tabelaproduto.MasterFields := '';
      FormRelatorioProduto.quickgrupo.Previewmodal;
        tabelagrupo.Filtered := false;
         end;

   if pagecontrol1.ActivePageIndex = 1 then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  FormRelatorioProduto.image2.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt')then
   FormRelatorioProduto.memo2.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

   bookmark := tabelaproduto.Bookmark;

   if application.MessageBox('Deseja imprimir apenas este grupo?','Imprimir', 4 +MB_ICONWARNING)= mrno then begin
    tabelaproduto.MasterFields := '';
     tabelaproduto.IndexFieldNames := 'produto';
      end;

       FormRelatorioProduto.quickproduto.Previewmodal;

   end;
      FormRelatorioProduto.Release;
      tabelaproduto.MasterFields := 'Grupo';
      tabelaproduto.IndexFieldNames := 'Link;Produto';

    tabelaproduto.Bookmark := bookmark;   

 end;


procedure Tfproduto.btimprimirpClick(Sender: TObject);
begin

        imprimirexecute(self);
end;

procedure Tfproduto.btimprimir1Click(Sender: TObject);
begin

        imprimirexecute(self);
end;

procedure Tfproduto.btncancelar1Click(Sender: TObject);
begin
        cancelarexecute(self);
end;

procedure Tfproduto.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 40 then tabelagrupo.Next;
        if key = 38 then tabelagrupo.prior;
        if key = vk_f1 then label22click(self);
end;

procedure Tfproduto.Label20Click(Sender: TObject);
Var
       Codigo:String;

begin

     if InputQuery ('Localizar', 'Entre com a sigla grupo',Codigo ) then
       if not TabelaGrupo.Locate ('grupo',uppercase(Codigo),[]) then
         showmessage('Grupo não localizado!');


end;

procedure Tfproduto.Label21Click(Sender: TObject);
Var
       Codigo:String;

begin

     if InputQuery ('Localizar', 'Entre com a nome do grupo',Codigo ) then
       if not TabelaGrupo.Locate ('nome',uppercase(Codigo),[]) then
         showmessage('Nome não localizado!');

end;

procedure Tfproduto.Label22Click(Sender: TObject);
Var
       Codigo:String;

begin

     if InputQuery ('Localizar', 'Entre com a sigla grupo',Codigo ) then
       if not TabelaGrupo.Locate ('grupo',Codigo,[]) then
         showmessage('Grupo não localizado!');

end;

procedure Tfproduto.Label23Click(Sender: TObject);
Var
       Codigo:String;

begin

     if InputQuery ('Localizar', 'Entre com nome do grupo',Codigo ) then
       if not TabelaGrupo.Locate ('nome',Codigo,[]) then
         showmessage('Nome não localizado!');

end;

procedure Tfproduto.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then label20click(self);
end;

procedure Tfproduto.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then label21click(self);
end;

procedure Tfproduto.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then label23click(self);
end;

procedure Tfproduto.Label24Click(Sender: TObject);
Var
       Codigo:String;

begin

     if InputQuery ('Localizar', 'Entre com código',Codigo ) then
       if not Tabelaproduto.Locate ('codigo',Codigo,[]) then
         showmessage('Este código não está cadastrado, ou pertence a outro grupo.' + #13 +
          'Clique em consulta, para verificar!');

end;

procedure Tfproduto.TabelaGrupoNewRecord(DataSet: TDataSet);
begin
        TabelaGrupo['VendaPercent'] := '0';
        TabelaGrupo['RevendaPercent'] := '0';
end;

procedure Tfproduto.fimagemExecute(Sender: TObject);
 var
  pt : String;
begin
     if dbgrid2.Focused = true then begin
      if image1.visible = false then
       image1.show
        else
       image1.Hide;
       if tabelaproduto['imagem'] <> null then begin
       pt := tabelaproduto['imagem'] ;
       if fileexists (pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile (extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');
    end;
end;

procedure Tfproduto.image1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 27 then
         image1.Hide;
end;

procedure Tfproduto.TabelaProdutoAfterOpen(DataSet: TDataSet);
begin
        btngravar1.enabled := false;
        btncancelar1.enabled := false;
end;

procedure Tfproduto.TabelaProdutoBeforeEdit(DataSet: TDataSet);
begin
       btnGravar1.Enabled:=True;
       btncancelar1.enabled := true;
end;

procedure Tfproduto.btnPrimeirop1Click(Sender: TObject);
begin
        tabelaproduto.First;
end;

procedure Tfproduto.btnVoltarp1Click(Sender: TObject);
begin
        tabelaproduto.prior;
end;

procedure Tfproduto.btnAvancarp1Click(Sender: TObject);
begin
        tabelaproduto.next;
end;

procedure Tfproduto.btnUltimop1Click(Sender: TObject);
begin
        tabelaproduto.last;
end;

procedure Tfproduto.DBEdit15Exit(Sender: TObject);
begin
        tabelaproduto.edit;
         TabelaProduto['vrvenda'] :=TabelaProduto.fields[4].asfloat +(TabelaProduto.fields[4].asfloat * TabelaGrupo.fields[5].asfloat / 100);
          TabelaProduto['Revenda'] :=TabelaProduto.fields[4].asfloat +(TabelaProduto.fields[4].asfloat * TabelaGrupo.fields[6].asfloat / 100);
end;

procedure Tfproduto.DBGrid2Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfproduto.TabelaProdutoNewRecord(DataSet: TDataSet);
begin
         TabelaProduto['subgrupo'] := TabelaGrupo['NOME'];
end;

procedure Tfproduto.Label25Click(Sender: TObject);
Var
       produto:String;

begin

     if InputQuery ('Localizar', 'Entre com produto',produto ) then
       if not Tabelaproduto.Locate ('produto',uppercase(produto),[]) then
         showmessage('Este produto não está cadastrado, ou pertence a outro grupo.' + #13 +
          'Clique em consulta, para verificar!');



end;

procedure Tfproduto.FormShow(Sender: TObject);
begin
        tabelaproduto.Last;
end;

procedure Tfproduto.TabelaProdutoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
        showmessage('Este produto já foi cadastrado, ou existe campos (nome e descrição) vazios');
         abort;
end;

procedure Tfproduto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        IF btngravar1.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair de Cadastro de Produto',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tabelaproduto.edit;
          tabelaproduto.post;
           canclose:=true;
            end;

         idno : begin
          tabelaproduto.cancel;
           canclose:=true;
            end;

         idcancel :
           canclose:=false;
end;
end;
end;

procedure Tfproduto.SpeedButton3Click(Sender: TObject);
var
MSG, st : STRING;
begin

     if tabelaproduto['produto'] <> null then
      st := tabelaproduto['produto'];

     if tabelaproduto['descricao'] <> null then
      st := st + ' ' + tabelaproduto['descricao'];


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

end.


