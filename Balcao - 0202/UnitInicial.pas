unit UnitInicial;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFInicial = class(TForm)
    Timer1: TTimer;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    imgAbreAsas: TImage;
    imgFechaAsas: TImage;
    imgPrincipal: TImage;
    Timer2: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
  CarregaBMP:BOOLEAN;
    { Public declarations }
  end;

var
  FInicial: TFInicial;

implementation

uses  UnitMenu;

{$R *.DFM}

procedure TFInicial.Timer1Timer(Sender: TObject);
begin

      Application.CreateForm (tfmenu, fmenu);
       fmenu.showmodal;
        fmenu.release;
       end;



procedure TFInicial.FormCreate(Sender: TObject);
var
hg:thandle;
begin
        hg := createellipticrgn(5,10,390,200);
        setwindowrgn(handle,hg,true);
end;

procedure TFInicial.Timer2Timer(Sender: TObject);
begin
     imgPrincipal.Left:=imgPrincipal.Left+10;
     imgPrincipal.Top:=imgPrincipal.Top-6;
     {Alterna a imagem da borboleta}
     if CarregaBMP =true then
        begin
             imgPrincipal.picture:=imgAbreAsas.picture;
        end
     else
             imgPrincipal.picture:=imgFechaAsas.picture;

     {alterna valor do flag}
     CarregaBMP:= not CarregaBMP;

     {Verifica se a borboleta está dentro do form}
      if imgPrincipal.Left > FINICIAL.Width then
         begin
              imgPrincipal.left:=0;
              imgPrincipal.top:=FINICIAL.Height-10;
         end ;

         IF imgprincipal.Top < 60 then
          label1.font.Color := clred;

         IF imgprincipal.Top < 70 then
          label2.font.Color := clred;

end;

end.
