unit uvenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tfvenda = class(TForm)
    DBGrid1: TDBGrid;
    ListBox1: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvenda: Tfvenda;

implementation

{$R *.dfm}

end.
