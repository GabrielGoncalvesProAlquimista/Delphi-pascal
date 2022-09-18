unit UnitDadoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Db, DBTables, ExtDlgs, ExtCtrls;

type
  TFormDadoEmpresa = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    Memo1: TMemo;
    Image1: TDBImage;
    open1: TOpenPictureDialog;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  ST:string;

    { Public declarations }
  end;

var
  FormDadoEmpresa: TFormDadoEmpresa;

implementation

{$R *.DFM}

procedure TFormDadoEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
   key:=#0;
     Perform(WM_nextdlgctl,0,0);

end;
end;

procedure TFormDadoEmpresa.SpeedButton1Click(Sender: TObject);
begin
        open1.Execute;
        image1.Picture.LoadFromFile(open1.FileName);

end;

procedure TFormDadoEmpresa.BitBtn1Click(Sender: TObject);
begin

  image1.Picture.SaveToFile (extractfilepath(paramstr(0)) + '\imagem\logo.bmp');
  memo1.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

end;

procedure TFormDadoEmpresa.FormShow(Sender: TObject);
begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then
  image1.Picture.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\logo.bmp');
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   memo1.lines.loadfromfile (extractfilepath(paramstr(0)) + '\imagem\dado.txt');

end;

end.
