unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, Db, Grids, DBGrids,
  DBTables, spBina;

type
  TFBINA = class(TForm)
    spBina1: TspBina;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Button3: TButton;
    Label7: TLabel;
    Temporizador: TTimer;
    Panel4: TPanel;
    procedure spBina1DTMF(Sender: TObject; Count: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TemporizadorTimer(Sender: TObject);
    procedure limpaCampos;
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

  //Mantém campos limpos
  if final = 0 then begin
     edit1.Text := '';
     edit2.text := '';
     MaskEdit1.EditMask := '';
     Maskedit1.Text := '';
     inicio :='0';
  end;

  // Lê o DTMF
  spBina1.LeiaDTMF(DTMF,count);
  //Retorna valor do DTMF

  //////////////////////////////////////////////////
  if trim(DTMF) = 'RING' then memo1.Lines.add(#13);
  memo1.lines.text := memo1.lines.text + trim(DTMF);
  //////////////////////////////////////////////////

  //Se o DTMF for válido, prepara para decodificar
  saida := trim(DTMF);
  spBina1.PrepareModemBina(saida,inicio);
  //Se detectou INICIO do DTMF, seta var inicio = '1')
  // Se detectou FINAL do DTMF volta var inicio = '0')

  // enquanto var inicio = '1', apenas decodifica o DTMF
   if inicio = '1' then
       begin
        spBina1.DecodifiqueNumero(saida,tipo,ddd,fone);
        // une resultados, seta  texto = texto+DTMF
        texto := trim(texto)+trim(saida);
       end
     else  // Se 'zerou'  (inicio=0)...
       begin
         vDDD := edit3.Text;      // seu Banco de Dados
         //...formata o resultado contido em var texto
         spBina1.FormateResultado(texto,mascara,tipo,vDDD,fone);
         if length(fone) > 3 then
            begin
              edit1.Text := tipo; // Tipo da Chamada (1,2,3,4,5,6 e 7. Consulte sua prestadora)
              edit2.text := vDDD; // Se for chamada de outra área, altera o vDDD local
              MaskEdit1.EditMask := mascara; // Separa o prefixo (exemplo: 239-6171 ou 3829-6442)
              Maskedit1.Text := fone;
              fone :='';
              final := 1;
              memo1.Clear;


              tempo := 40; // seta base de tempo para o temporizador
               // Libera porta para o toque da campainha (ver spBina.htm)
              spBina1.FinalizaModemBina;

              // Liga o temporizador (iniciando a contagem a partir de 40)
              Temporizador.Enabled := true;
            end;
   // ERRO: Ativado no modo BINA, mas sem o Adptador (ver spBina.htm)
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

procedure TFBINA.Button1Click(Sender: TObject);
begin
if trim(edit3.text) ='' then  begin
   showmessage('É necessário colocar o DDD Local');
   exit;
end;
Porta := Combobox1.Text; // setar diretamente do  banco de dados
memo1.Clear;
Panel4.Visible := true;
if spBina1.Conectado = false then
   begin
    Button1.enabled := false;
    memo1.lines.add('Aguarde... Ativando...');

    // Seta porta e abre
    spBina1.Porta := Porta;
    spBina1.Open; // Se não abrir, retorna código de erro (direto do componente).
    iniciar := 1; // normal (se zero, final)

     // liga o temporizador (verificar comandos na procedure TemporizadorTimer()
     tempo := 1; // Seta base de tempo inicial
     temporizador.Enabled := true;

   end
 else  // se já estiver conectado...
   begin
    // desativar  e manter resultados
     Button1.enabled := false;
     inicio :='';
     texto  :='';
     mascara:='';
     tipo   :='';
     ddd    :='';
     fone   :='';
     memo1.lines.add('Aguade...Desativando');
     tempo := 25; // seta base de tempo para finalização
     temporizador.Enabled := true;
   end;
end;
procedure TFBINA.Button2Click(Sender: TObject);
begin
  LimpaCampos;
end;
procedure TFBINA.ComboBox1Change(Sender: TObject);
begin
Porta := combobox1.Text;
end;

procedure TFBINA.Button3Click(Sender: TObject);
begin
memo1.lines.Clear;
end;

procedure TFBINA.TemporizadorTimer(Sender: TObject);
begin
 // incrementa base de tempo
 inc(tempo);

 // mensagem "aguarde..."
 if panel4.visible then
     if panel4.Font.Color = clLime then
       panel4.Font.Color := clBlack
     else
      panel4.Font.Color := clLime;

 // 7 segundos após abrir a Porta Comunic, envia cactreres de conversão.
 if tempo = 7 then
    spBina1.ConvertaModemBina(ok);

 // 7 segundos após converter, inicia modem/Bina
 if tempo = 14 then
    spBina1.IniciaModemBina;

 // 7 segundos após iniciar, abilita e desabilita controles
 if tempo = 21 then
    begin
       limpaCampos;
       Button1.enabled := true;
       Button1.Caption := 'Desativar SuperBina';
       memo1.lines.add('SuperBina Ativado');
       Panel1.Caption :='SuperBina Ativado' ;
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
      Button1.Caption := 'Ativar SuperBina';
      memo1.lines.add('SuperBina Desativado');
      Panel1.Caption :='SuperBina Desativado' ;
      panel4.visible := false;
      Temporizador.Enabled := false;
    end;

 // Fechar 7 segundos após detectar (base de tempo iniciada em 40)
 if tempo = 47 then
    begin
      Panel4.Visible := false;
      spBina1.Close;
      Button1.Enabled := true;
      Button1.Caption := 'Ativar SuperBina';
      Panel1.Caption := 'SuperBina Desativado';
      //manter temporizador ligado....
    end;
 // 20 segundos após após fechar, ativa novamente todo o sistema
 if tempo = 67 then
      Button1.Click; // aciona Button1 (Ativar) temporizador será desligado em
                     // Button1 (se desligar aquí, paralisa!
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

end.
