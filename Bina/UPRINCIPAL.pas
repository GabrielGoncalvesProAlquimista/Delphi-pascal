unit UPRINCIPAL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, Db, Grids, DBGrids,
  DBTables, spBina, Menus;

type
  TFBINA = class(TForm)
    spBina1: TspBina;
    Panel1: TPanel;
    Memo1: TMemo;
    Label7: TLabel;
    Temporizador: TTimer;
    MainMenu1: TMainMenu;
    Opes1: TMenuItem;
    Button1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Panel4: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure spBina1DTMF(Sender: TObject; Count: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure TemporizadorTimer(Sender: TObject);
    procedure limpaCampos;
    procedure AtivarBina1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
  private
    { Private declarations }
  public
  inicio,texto,mascara,tipo,ddd,fone,vDDD,Porta : string;
  iniciar, tempo, final :integer;
  ok : boolean;
    { Public declarations }
  end;

var
  FBINA: TFBINA;

implementation

{$R *.DFM}

procedure TFBINA.spBina1DTMF(Sender: TObject; Count: Integer);
var
saida, DTMF : string;
begin

  if final = 0 then begin
     edit1.Text := '';
     edit2.text := '';
     MaskEdit1.EditMask := '';
     Maskedit1.Text := '';
     inicio :='0';
  end;

  spBina1.LeiaDTMF(DTMF,count);

  if trim(DTMF) = 'RING' then memo1.Lines.add(#13);
  memo1.lines.text := memo1.lines.text + trim(DTMF);

  saida := trim(DTMF);
  spBina1.PrepareModemBina(saida,inicio);

   if inicio = '1' then
       begin
        spBina1.DecodifiqueNumero(saida,tipo,ddd,fone);
        texto := trim(texto)+trim(saida);
       end
     else
       begin
         vDDD := edit3.Text;
         spBina1.FormateResultado(texto,mascara,tipo,vDDD,fone);
         if length(fone) > 3 then
            begin
              edit1.Text := tipo;
              edit2.text := vDDD;
              MaskEdit1.EditMask := mascara;
              Maskedit1.Text := fone;
              fone :='';
              final := 1;
              memo1.Clear;


              tempo := 40;
              spBina1.FinalizaModemBina;

              Temporizador.Enabled := true;
            end;
   if inicio = '2' then
     begin
       limpaCampos;
       memo1.lines.add('Chave Seletora não está no Modo BINA');
       panel4.visible := true;
       memo1.lines.add('Desativando...');
       tempo := 30;
       temporizador.enabled := true;
       spBina1.FinalizaModemBina;
     end;
  end;
end;

procedure TFBINA.ComboBox1Change(Sender: TObject);
begin
Porta := combobox1.Text;
end;

procedure TFBINA.TemporizadorTimer(Sender: TObject);
begin
 inc(tempo);

 if panel4.visible then
     if panel4.Font.Color = clLime then
       panel4.Font.Color := clBlack
     else
      panel4.Font.Color := clLime;

 if tempo = 7 then
    spBina1.ConvertaModemBina(ok);

 if tempo = 14 then
    spBina1.IniciaModemBina;

 if tempo = 21 then
    begin
       limpaCampos;
       Button1.enabled := true;
       Button1.Caption := 'Desativar Bina';
       memo1.lines.add('Bina Ativado');
       Panel1.Caption :='Bina Ativado' ;
       panel4.visible := false;
       spBina1.ClearBuffer(true,true);
       Temporizador.Enabled := false;
    end;

 if tempo = 28 then
     spBina1.FinalizaModemBina;

 if tempo = 35 then
    begin
      limpaCampos;
      spBina1.Close;
      button1.Enabled := true;
      Button1.Caption := 'Ativar Bina';
      memo1.lines.add('Bina Desativado');
      Panel1.Caption :='Bina Desativado' ;
      panel4.visible := false;
      Temporizador.Enabled := false;
    end;

 if tempo = 47 then
    begin
      Panel4.Visible := false;
      spBina1.Close;
      Button1.Enabled := true;
      Button1.Caption := 'Ativar Bina';
      Panel1.Caption := 'Bina Desativado';
    end;
 if tempo = 67 then
      Button1.Click;
end;

procedure TFBINA.limpaCampos;
begin
   spBina1.ClearBuffer(true,true);
   memo1.lines.Clear;
   edit1.Clear;
   edit2.clear;
   maskedit1.Clear;
   MaskEdit1.EditMask :='';
   texto := '';
   mascara :='';
   tipo :='';
   fone :='';
   memo1.clear;
   inicio :='';
end;

procedure TFBINA.AtivarBina1Click(Sender: TObject);
begin
if trim(edit3.text) ='' then  begin
   showmessage('É necessário colocar o DDD Local');
   exit;
end;
Porta := Combobox1.Text;
memo1.Clear;
Panel4.Visible := true;
if spBina1.Conectado = false then
   begin
    Button1.enabled := false;
    memo1.lines.add('Aguarde... Ativando...');

    spBina1.Porta := Porta;
    spBina1.Open;
    iniciar := 1;

     tempo := 1;
     temporizador.Enabled := true;

   end
 else
   begin

     Button1.enabled := false;
     inicio :='';
     texto  :='';
     mascara:='';
     tipo   :='';
     ddd    :='';
     fone   :='';
     memo1.lines.add('Aguade...Desativando Bina');
     tempo := 25;
     temporizador.Enabled := true;
   end;

end;

procedure TFBINA.Limpar1Click(Sender: TObject);
begin
LimpaCampos;
end;

end.
