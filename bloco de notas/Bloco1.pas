unit Bloco1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls;

type
  TfrmBloco = class(TForm)
    txtBloco: TMemo;
    cmdCortar: TButton;
    cmdColar: TButton;
    cmdApagar: TButton;
    cmdSair: TButton;
    procedure FormResize(Sender: TObject);
    procedure cmdSairClick(Sender: TObject);
    procedure cmdApagarClick(Sender: TObject);
    procedure cmdCortarClick(Sender: TObject);
    procedure cmdColarClick(Sender: TObject);
  private
    { Private declarations }
    CortaTexto:string;
  public
    { Public declarations }
  end;

var
  frmBloco: TfrmBloco;

implementation

{$R *.DFM}




procedure TfrmBloco.FormResize(Sender: TObject);
begin
     txtBloco.left:=0;
     txtBloco.Top:=0;
     txtBloco.Width:=frmBloco.ClientWidth;
     txtBloco.Height:=frmBloco.ClientHeight-cmdCortar.Height;
     cmdCortar.left:=0;
     cmdColar.left:=cmdCortar.width;
     cmdApagar.left:=2*cmdColar.width;
     cmdSair.left:=frmBloco.Clientwidth-cmdSair.width;
     cmdCortar.top:=frmBloco.ClientHeight-cmdSair.Height;
     cmdColar.top:=cmdCortar.top;
     cmdApagar.top:=cmdCortar.top;
     cmdSair.top:=cmdCortar.top;

end;

procedure TfrmBloco.cmdSairClick(Sender: TObject);
begin
     close;
end;

procedure TfrmBloco.cmdApagarClick(Sender: TObject);
begin
     txtBloco.text:=' ';
     txtBloco.setfocus;
end;

procedure TfrmBloco.cmdCortarClick(Sender: TObject);
begin
     CortaTexto:=txtBloco.Seltext;
     txtBloco.SelText:='';
     txtBloco.Setfocus;
end;

procedure TfrmBloco.cmdColarClick(Sender: TObject);
begin
     txtBloco.SelText:=CortaTexto;
     txtBloco.SetFocus;
end;

end.
