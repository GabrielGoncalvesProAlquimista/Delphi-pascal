unit ftp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Psock, NMFtp, StdCtrls, Spin, ComCtrls, ExtCtrls, DB, ADODB,
  Mask, DBCtrls, Grids, Buttons, ShellAPI, Menus, registry, OleCtrls,
  SHDocVw, RxGrdCpt, RxGIF, TabNotBk, jpeg, DBGrids, FileCtrl, ImgList;

type
  TPrincipal = class(TForm)
    Button1: TButton;
    NMFTP1: TNMFTP;
    StatusBar1: TStatusBar;
    Button2: TButton;
    Button3: TButton;
    dadosFTP: TADOTable;
    DataSource1: TDataSource;
    dadosFTPhost: TWideStringField;
    dadosFTPusuario: TWideStringField;
    dadosFTPsenha: TWideStringField;
    dadosFTPporta: TIntegerField;
    dadosFTPproxy: TWideStringField;
    dadosFTPproxyporta: TIntegerField;
    Memo1: TMemo;
    Button4: TButton;
    Timer1: TTimer;
    dadosFTPdiretorioservidorupload: TWideStringField;
    dadosFTPh1de: TWideStringField;
    dadosFTPh1ate: TWideStringField;
    PopupMenu1: TPopupMenu;
    pmnuiOpen: TMenuItem;
    pmnuiExit: TMenuItem;
    Timer2: TTimer;
    dadosFTPtempodeespera: TIntegerField;
    Label12: TLabel;
    Label13: TLabel;
    cadastro_diretorios: TADOTable;
    DataSource2: TDataSource;
    cadastro_diretoriosdiretorio_pasta: TWideStringField;
    Button5: TSpeedButton;
    botaoenviaragora: TSpeedButton;
    Button6: TSpeedButton;
    painelconfig: TPanel;
    Notebook: TTabbedNotebook;
    host: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    usuario: TDBEdit;
    Label3: TLabel;
    senha: TDBEdit;
    Label4: TLabel;
    porta: TDBEdit;
    proxy: TDBEdit;
    proxyporta: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    h1de: TDBEdit;
    h1ate: TDBEdit;
    Image4: TImage;
    Image3: TImage;
    Image6: TImage;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Image5: TImage;
    SpeedButton2: TSpeedButton;
    qtdinteracoes: TLabel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton5: TSpeedButton;
    painellistabackups: TPanel;
    Label24: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    OpenDialog1: TOpenDialog;
    cadastro_diretoriosnomedoarquivo: TWideStringField;
    SpeedButton9: TSpeedButton;
    painelSelecionarpasta: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label25: TLabel;
    dadosFTPcompactador: TWideStringField;
    Label26: TLabel;
    Image2: TImage;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    SpeedButton12: TSpeedButton;
    dadosFTPcompactadorcomando: TWideStringField;
    wpercArquivoAtual: TProgressBar;
    wpercTotal: TProgressBar;
    Label29: TLabel;
    Label30: TLabel;
    MainMenu1: TMainMenu;
    Break1: TMenuItem;
    cadastro_diretoriosnomedoarquivoasubir: TWideStringField;
    Image8: TImage;
    oCULTAR1: TMenuItem;
    ImageList1: TImageList;
    Label32: TLabel;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    dadosFTPsenhacompactador: TWideStringField;
    Label20: TLabel;
    dadosFTPtipodeenvio: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    cadastro_diretoriosenvia: TBooleanField;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label33: TLabel;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NMFTP1Success(Trans_Type: TCmdType);
    procedure Button4Click(Sender: TObject);
    procedure NMFTP1Failure(var Handled: Boolean; Trans_Type: TCmdType);
    procedure NMFTP1PacketSent(Sender: TObject);
    procedure NMFTP1Disconnect(Sender: TObject);
    procedure NMFTP1Connect(Sender: TObject);
    procedure NMFTP1PacketRecvd(Sender: TObject);
    procedure NMFTP1TransactionStart(Sender: TObject);
    procedure NMFTP1TransactionStop(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pmnuiOpenClick(Sender: TObject);
    procedure pmnuiExitClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure botaoenviaragoraClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Break1Click(Sender: TObject);
    procedure oCULTAR1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);


  private
         protected procedure WndProc(var Msg: TMessage); override;
    { Private declarations }
  public
    { Public declarations }
    TrayIconData: TNotifyIconData;
    wdeletado:boolean;
    winiciarup:boolean;
    wCHANGE:BOOLEAN;
    wQTDINTERACAOCONTADOR:integer;
    wDEFINIRNOME:string;
  end;

var
  Principal: TPrincipal;
  const WM_ICONTRAY = WM_USER + 1;


implementation

{$R *.dfm}

function EliminaFormatacao(sTexto:String):String;
// Elimina os caracteres de formatacao da string
// (inclusive os espaços entre as palavras)
var
iPos : Integer;
iTamanho : Integer;
sTextoSemFormato : String;
sCaractere : String;
sCaracMascaras : String;
begin
Result := sTexto;
if sTexto = '' then
begin
Exit;
end;
sTextoSemFormato := '';
sCaracMascaras := '"!@#$%¨&*()-=+}{[]`´~^?/\|;:,. ¡¢£¤¥¦§¨©ª«¬­®¯°±²³µ¶·¸¹º»¼¾½¿';
iTamanho := Length(sTexto);
for iPos := 1 to iTamanho do
begin
sCaractere := Copy(sTexto,iPos,1);
if Pos(sCaractere,sCaracMascaras) = 0 then
begin
sTextoSemFormato := sTextoSemFormato + sCaractere;
end;
end;
Result := sTextoSemFormato;
end;



procedure TPrincipal.Button1Click(Sender: TObject);
begin
try
   NMFTP1.Vendor := NMOS_AUTO;
   NMFTP1.Host := host.Text;
   NMFTP1.UserID := usuario.Text;
   NMFTP1.Password := senha.Text;
   NMFTP1.Port := dadosFTPporta.Value;
   if proxy.Text <> '' then begin
      NMFTP1.Proxy := proxy.Text;
      NMFTP1.ProxyPort := dadosFTPproxyporta.value;
   end;

   if (host.Text <> '') and (usuario.Text<>'') then begin
      nmftp1.Connect
   end;
Except
   StatusBar1.SimpleText := 'Erro ao conectar...';
end;

if nmftp1.Connected = false then begin
    StatusBar1.SimpleText := 'Não conectado...';
    nmftp1.Disconnect;
    exit;
end;
StatusBar1.SimpleText := 'Conectado...';
//listbox1.Items.Clear;
//nmftp1.ChangeDir('dados');
//listbox1.Items.Add( '..' );
//listbox1.Items.Add( nmftp1.CurrentDir );
end;

procedure TPrincipal.Button2Click(Sender: TObject);
begin
try
nmftp1.Abort;
nmftp1.Cancel;
nmftp1.Disconnect;
StatusBar1.SimpleText := 'Desconectado...';
botaoenviaragora.Enabled :=true;
Button1.Enabled :=true;
Button2.Enabled :=true;
except
memo1.Lines.Add('Ftp descontectado!')
end;
memo1.Lines.Add('-------------------------------------------------------------')

end;

procedure TPrincipal.Button3Click(Sender: TObject);
begin
button2.Click;
close;
end;

procedure TPrincipal.FormShow(Sender: TObject);
begin
cadastro_diretorios.Active:=true;

qtdinteracoes.Caption:='0';
wQTDINTERACAOCONTADOR:=0;
dadosFTP.Active :=true;
wdeletado:=false;
winiciarup:=false;
TIMER1.Enabled := TRUE;
Notebook.PageIndex:=0;

end;

procedure TPrincipal.NMFTP1Success(Trans_Type: TCmdType);
begin
  case Trans_Type of
    cmdChangeDir:
      begin
        Memo1.Lines.Add('Sucesso ao trocar diretório');
        NMFTP1.List;
      end;
    cmdMakeDir: Memo1.Lines.Add('Sucesso ao criar diretório');
    cmdRemoveDir: Memo1.Lines.Add('Sucesso ao remover diretório');

    cmdDelete:
    begin
       Memo1.Lines.Add('Sucesso ao deletar');
       wdeletado :=  True;
    end;
    cmdRename: Memo1.Lines.Add('Sucesso ao renomear');
    cmdReInit: Memo1.Lines.Add('Sucesso ao reiniciar');
    cmdCurrentDir: Memo1.Lines.Add('diretório corrente ok');
  end;


end;

procedure TPrincipal.Button4Click(Sender: TObject);
begin
NMFTP1.List;

end;

procedure TPrincipal.NMFTP1Failure(var Handled: Boolean;
  Trans_Type: TCmdType);
begin
case Trans_Type of
    cmdChangeDir: Memo1.Lines.Add('trocar diretório falhou');
    cmdMakeDir: Memo1.Lines.Add('criar diretório falhou');
    cmdDelete:
    begin
       //Memo1.Lines.Add('deletar falhou');
       wdeletado :=  False;
    end;
    cmdRemoveDir: Memo1.Lines.Add('remover falhou');
    cmdList: Memo1.Lines.Add('listar falhou');
    cmdRename: Memo1.Lines.Add('renomear falhou');
    cmdUpRestore: Memo1.Lines.Add('Restaurar upload falhou');
    cmdDownRestore: Memo1.Lines.Add('Restaurar download falhou');
    cmdDownload: Memo1.Lines.Add('Download falhou');

    cmdUpload: Memo1.Lines.Add('Upload falhou');
    cmdAppend: Memo1.Lines.Add('Upload Append falhou');
    cmdReInit: Memo1.Lines.Add('Reinicializar falhou');
    cmdAllocate: Memo1.Lines.Add('Alocar falhou');
    cmdNList: Memo1.Lines.Add('NList falhou');
    cmdDoCommand: Memo1.Lines.Add('DoCommand falhou');
    cmdCurrentDir: Memo1.Lines.Add('diretorio atual falhou');
  end;

end;

procedure TPrincipal.NMFTP1PacketSent(Sender: TObject);
var
byteatual:integer;
bytetotal:integer;
begin
byteatual:=NMFTP1.BytesSent;
bytetotal:=NMFTP1.BytesTotal;

StatusBar1.SimpleText := 'Enviados '+IntToStr(byteatual)+' bytes de '+IntToStr(bytetotal)+' total';
//wpercArquivoAtual.Max:=byteatual;
wpercArquivoAtual.Position:= (100 * byteatual) div bytetotal;
end;

procedure TPrincipal.NMFTP1Disconnect(Sender: TObject);
begin
Memo1.Lines.Add('Desconnectado');
end;

procedure TPrincipal.NMFTP1Connect(Sender: TObject);
begin
Memo1.Lines.Add('Connectado');

end;

procedure TPrincipal.NMFTP1PacketRecvd(Sender: TObject);
begin
StatusBar1.SimpleText := 'Recebidos '+IntToStr(NMFTP1.BytesRecvd)+' bytes de '+IntToStr(NMFTP1.BytesTotal)+' total';

end;

procedure TPrincipal.NMFTP1TransactionStart(Sender: TObject);
begin
 Memo1.Lines.Add('iniciando transferência...');

end;

procedure TPrincipal.NMFTP1TransactionStop(Sender: TObject);
begin
  Memo1.Lines.Add('transferência finalizada...');

end;

function StrToPChar(const Str: string): PChar;
{Converte String em Pchar}
type
TRingIndex = 0..7;
var
Ring: array[TRingIndex] of PChar;
RingIndex: TRingIndex;
Ptr: PChar;
begin
Ptr := @Str[Length(Str)];
Inc(Ptr);
if Ptr^ = #0 then
begin
Result := @Str[1];
end
else
begin
Result := StrAlloc(Length(Str)+1);
RingIndex := (RingIndex + 1) mod (High(TRingIndex) + 1);
StrPCopy(Result,Str);
StrDispose(Ring[RingIndex]);
Ring[RingIndex]:= Result;
end;
end;

procedure TPrincipal.Timer1Timer(Sender: TObject);
begin
   if (time >= StrToTime(h1de.Text )) and (time <= strtotime( h1ate.Text))then begin //or
//      (time >= StrToTime(h2de.Text )) and (time <= strtotime( h2ate.Text)) or
//      (time >= StrToTime(h3de.Text )) and (time <= strtotime( h3ate.Text))
//      then begin
      timer1.Enabled := false;
      Button1.Click;
      botaoenviaragora.Click;
   end;
end;
procedure TPrincipal.FormCreate(Sender: TObject);
begin
wCHANGE:=FALSE;
with TrayIconData do
begin
cbSize := Sizeof(TrayIconData);
Wnd := Handle;
uID := 0;
uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
uCallbackMessage := WM_ICONTRAY;
hIcon := Application.Icon.Handle;
StrPCopy(SzTip, Application.Title);
end;
Shell_NotifyIcon(NIM_ADD, @TrayIconData);
//RunOnStartup('Ftp','Controle_ftp.exe',False);

end;

procedure TPrincipal.FormDestroy(Sender: TObject);
begin
Shell_NotifyIcon(NIM_DELETE, @TrayIconData);
end;


procedure TPrincipal.WndProc(var Msg: TMessage);
var
p: TPoint;
begin
case Msg.Msg of
WM_USER + 1:
case Msg.lParam of
WM_RBUTTONDOWN:
begin
SetForegroundWindow(Handle);
GetCursorPos(p);
PopupMenu1.Popup(p.x,p.y);
PostMessage(Handle, WM_NULL, 0, 0);
end;
WM_LBUTTONDBLCLK:
begin
pmnuiOpen.Click;
end;
end;
end;
inherited;
end;


procedure TPrincipal.pmnuiOpenClick(Sender: TObject);
begin
Principal.Show;
ShowWindow(Application.Handle, SW_HIDE);

end;

procedure TPrincipal.pmnuiExitClick(Sender: TObject);
begin
nmftp1.Abort;
NMFTP1.Cancel;
nmftp1.Disconnect;
BUTTON2.Click;
dadosFTP.Active := false;
cadastro_diretorios.Active:=false;

dadosFTP.Close;
cadastro_diretorios.Close;

Application.ProcessMessages;
Application.Terminate;

end;

procedure TPrincipal.Timer2Timer(Sender: TObject);
begin
Timer1.Interval := (60000 * dadosFTPtempodeespera.Value);
TIMER2.Enabled :=FALSE;
principal.Hide;

end;

procedure TPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
pmnuiExit.Click;
end;

procedure TPrincipal.Button5Click(Sender: TObject);
begin
Painelconfig.Visible := true;
Painelconfig.BringToFront;
Painelconfig.Left:= 240;
Painelconfig.Top:= 40;
Painelconfig.Width:= 385;
Painelconfig.Height:= 265;
end;



procedure comando(wCOMANDO:String);
var
pi: TProcessInformation;
si: TStartupInfo;
RESULT:boolean;
begin

FillMemory( @si, sizeof( si ), 0 );
FillChar ( si, Sizeof (si), #0);
si.cb := sizeof( si );
si.dwFlags := STARTF_USESHOWWINDOW;
si.wShowWindow:=SW_HIDE;

RESULT := CreateProcess(Nil, STRTOPCHAR(wCOMANDO), Nil, Nil, False, NORMAL_PRIORITY_CLASS, Nil, Nil, si, pi );
if Result then begin
   WaitForSingleObject(PI.hProcess, INFINITE);
   //Libera os Handles
   CloseHandle(pi.hProcess);
   CloseHandle(pi.hThread);
end;
end;


function GetShortFileName (const Arquivo : String) : String;
var
aTmp : array [0..255] of char; 
begin 
if GetShortPathName (PChar (Arquivo), aTmp, sizeof (aTmp) - 1) = 0 then 
Result := Arquivo 
else 
Result := StrPas (aTmp); 
end; 
function GetLongFileName (const Arquivo : String) : String; 
var 
aInfo : TSHFileInfo; 
begin 
if SHGetFileInfo (PChar(Arquivo), 0, aInfo, sizeof (aInfo), SHGFI_DISPLAYNAME) <>0 then 
Result := String (aInfo.szDisplayName) 
else 
Result := Arquivo; 
end;

procedure entreemudadiretorio;
begin
         if principal.dadosFTPtipodeenvio.Value=1 then begin
           principal.nmftp1.mode(MODE_ASCII);
         end else if principal.dadosFTPtipodeenvio.Value=2 then begin
           principal.nmftp1.mode(MODE_BYTE);
         end else begin
           principal.nmftp1.mode(MODE_IMAGE);
         end;
         if FileExists('\tmpbck\arquivo.zip') then begin
            DeleteFile('\tmpbck\arquivo.zip');
            RemoveDir('\tmpbck');
         end;
         principal.painellistabackups.Enabled:=false;
         principal.botaoenviaragora.Enabled :=false;
         principal.Button1.Enabled :=false;
         principal.Button2.Enabled :=false;

         principal.Button1.Enabled :=false;
         principal.Button2.Enabled :=false;
         //IF wCHANGE=FALSE THEN BEGIN
         try
            principal.MEMO1.Lines.Add('Criando pasta '+UpperCase(principal.dadosFTPdiretorioservidorupload.Text));
            principal.nmftp1.MakeDirectory(principal.dadosFTPdiretorioservidorupload.Text);
         except
            principal.MEMO1.Lines.Add('Acessando pasta '+UpperCase(principal.dadosFTPdiretorioservidorupload.Text));
         end;

         principal.nmftp1.ChangeDir(principal.dadosFTPdiretorioservidorupload.Text);
         MkDir('\tmpbck');

end;


procedure TPrincipal.botaoenviaragoraClick(Sender: TObject);
var
wINICIA:Boolean;
wCOMANDO,wPARAMETROS:STRING;
begin


wQTDINTERACAOCONTADOR:=wQTDINTERACAOCONTADOR+1;
principal.qtdinteracoes.Caption := inttostr(wQTDINTERACAOCONTADOR)+ ' - '+TimeToStr(time);

botaoenviaragora.Enabled :=false;
TIMER1.Enabled :=FALSE;
wINICIA:=false;

if cadastro_diretorios.RecordCount<=0 then begin
   memo1.Lines.Add('Você não inseriu nenhum backup ! Verifique !');
   botaoenviaragora.Enabled :=True;
   Button1.Enabled :=True;
   Button2.Enabled :=True;
   button2.Click;
   TIMER1.Enabled :=TRUE;
   exit;
end;


{
if FileExists('temp.ftp') then DeleteFile('temp.ftp');
if FileExists(  dadosFTParquivo_upload.Text ) then begin
   if CopyFile(StrToPChar( dadosFTParquivo_upload.Text ),'temp.ftp',true ) then begin
      winicia:=true;
   end;
end;


if winicia=false then begin
   memo1.Lines.Add('Não foi possível copiar '+dadosFTParquivo_upload.Text+' !');
   timer1.Enabled := true;
   exit;
end;
}
memo1.Lines.Add('Conectando, aguarde.... !');

if NMFTP1.Connected = FALSE THEN BEGIN
   BUTTON1.Click
END;

if NMFTP1.Connected then begin
         wCHANGE:=TRUE;
         //END;
         entreemudadiretorio;

         cadastro_diretorios.First;
         //wpercTotal.Max := cadastro_diretorios.RecordCount;
         while not cadastro_diretorios.Eof do begin

               //try
               //   if cadastro_diretoriosnomedoarquivo.Value<>'$ZIPAR$' then begin
               //      nmftp1.Delete(cadastro_diretoriosnomedoarquivo.Value);
               //      wdeletado:=true;
               //   end;
               //Except
                  //MEMO1.Lines.Add('Não foi possível deletar "'+cadastro_diretoriosnomedoarquivo.Value+ '"! Não existe no host!');
               //   wdeletado:=true;
               //   botaoenviaragora.Enabled :=true;
               //   Button1.Enabled :=True;
               //   Button2.Enabled :=true;
               //end;

               TRY
                  botaoenviaragora.Enabled :=false;
                  Button1.Enabled :=false;
                  Button2.Enabled :=false;
                  if cadastro_diretoriosenvia.Value = true then begin

                     MEMO1.Lines.Add('Enviando '+cadastro_diretoriosdiretorio_pasta.Value);

                     if (DirectoryExists(cadastro_diretoriosdiretorio_pasta.Value) and  (cadastro_diretoriosnomedoarquivo.Value='$ZIPAR$')) or (FileExists(cadastro_diretoriosdiretorio_pasta.Value)) then begin

                              wCOMANDO   :=dadosFTPcompactador.Text;
                              wPARAMETROS:=dadosFTPcompactadorcomando.Text+dadosFTPsenhacompactador.Text+' \tmpbck\arquivo.zip '+GetShortFileName(cadastro_diretoriosdiretorio_pasta.Text);
                              wCOMANDO   := wCOMANDO+' '+wPARAMETROS;
                              comando(wCOMANDO);

                              if nmftp1.Connected=false then begin
                                 MEMO1.Lines.Add('O Servidor desconectou por tempo de ociosidade, conectando novamente !');
                                 entreemudadiretorio;
                              end;
                              if NMFTP1.Connected=true then nmftp1.UploadAppend( '\tmpbck\arquivo.zip', EliminaFormatacao(cadastro_diretoriosnomedoarquivoasubir.Text) +'.zip' );

                     end else begin
                        MEMO1.Lines.Add('O arquivo ou pasta '+cadastro_diretoriosdiretorio_pasta.Value+', não existe mais no seu computador! Verifique, você pode ter apagado ou movido de local !');
                     end;
                  end;
               Except
                  MEMO1.Lines.Add('Não foi possível subir o arquivo, pode estar em uso, tente novamente!');
                  Button2.Click;
               END;
               DeleteFile('\tmpbck\arquivo.zip');
               cadastro_diretorios.Next;
               wpercTotal.Position :=(100 * cadastro_diretorios.RecNo ) div cadastro_diretorios.RecordCount;
         end;

         NMFTP1.ChangeDir('..');
         RmDir('\tmpbck');
         botaoenviaragora.Enabled :=True;
         Button1.Enabled :=True;
         Button2.Enabled :=True;
         painellistabackups.Enabled:=true;
         button2.Click;

         memo1.Lines.Add('Fim - Hora:'+ TimeToStr( time ));

         try
            NMFTP1.Cancel;
            NMFTP1.Disconnect;
            StatusBar1.SimpleText:='Backup Finalizado';
         except
            //ja desconectado
            StatusBar1.SimpleText:='Ftp não está desconectado...';

         end;
         TIMER1.Enabled :=TRUE;
end;

end;

procedure TPrincipal.SpeedButton4Click(Sender: TObject);
begin
painelconfig.Visible:=false;
dadosftp.Cancel;
end;

procedure TPrincipal.Button6Click(Sender: TObject);
begin
principal.Hide;
end;

procedure TPrincipal.SpeedButton1Click(Sender: TObject);
begin
Notebook.PageIndex:=Notebook.PageIndex-1;
end;

procedure TPrincipal.SpeedButton3Click(Sender: TObject);
begin
Notebook.PageIndex:=Notebook.PageIndex+1;
end;

procedure TPrincipal.SpeedButton5Click(Sender: TObject);
begin
pmnuiExit.Click;
end;

procedure TPrincipal.SpeedButton2Click(Sender: TObject);
begin
painellistabackups.Visible:=true;
end;

procedure TPrincipal.SpeedButton6Click(Sender: TObject);
begin
painellistabackups.Visible:=false;
cadastro_diretorios.Cancel;
end;

procedure TPrincipal.SpeedButton8Click(Sender: TObject);
begin
if cadastro_diretorios.RecordCount<=0 then begin
  ShowMessage('Nada para ser excluído !');
end;
if MessageDlg('Deseja excluir da lista de backup '+cadastro_diretoriosdiretorio_pasta.Text+' ?',mtConfirmation,mbOKCancel,0)=2 then exit;;
cadastro_diretorios.Delete;
end;

function definirnome:string;
var
wDEFINIRNOME:string;
wRECNO:Integer;
begin
wDEFINIRNOME:='';
wRECNO := Principal.cadastro_diretorios.RecNo;
while wDEFINIRNOME='' do begin
   wDEFINIRNOME:= InputBox('Obrigatório digitar um nome para compactar','Digite um nome para armazenamento deste arquivo ','');
   if principal.cadastro_diretorios.Locate('nomedoarquivoasubir',wDEFINIRNOME,[]) then begin
      showmessage('Nome já cadastrado, digite novamente!');
      wDEFINIRNOME:='';
   end;
end;
principal.cadastro_diretorios.RecNo:=wRECNO;
principal.cadastro_diretorios.Edit;
principal.cadastro_diretoriosnomedoarquivoasubir.Text:=wDEFINIRNOME;
principal.cadastro_diretorios.Post;

//Result:=wDEFINIRNOME;
end;

procedure TPrincipal.SpeedButton7Click(Sender: TObject);
begin
if OpenDialog1.Execute then begin

   cadastro_diretorios.Insert;
   cadastro_diretoriosdiretorio_pasta.Value := OpenDialog1.FileName;
   cadastro_diretoriosnomedoarquivo.Value   := ExtractFileName(OpenDialog1.FileName);
   cadastro_diretorios.Post;
   definirnome;
end;
end;

procedure TPrincipal.SpeedButton9Click(Sender: TObject);
begin
painelSelecionarpasta.Visible:= true;
painelSelecionarpasta.Top:=32;
painelSelecionarpasta.Left:=0;
painelSelecionarpasta.Height:=313;
painelSelecionarpasta.Width:=633;

end;

procedure TPrincipal.SpeedButton11Click(Sender: TObject);
begin
painelSelecionarpasta.Visible:=false;
cadastro_diretorios.Cancel;
end;

procedure TPrincipal.SpeedButton10Click(Sender: TObject);
begin
cadastro_diretorios.Insert;
cadastro_diretoriosdiretorio_pasta.Value := DirectoryListBox1.Directory;
cadastro_diretoriosnomedoarquivo.Value   := '$ZIPAR$';
cadastro_diretorios.Post;
definirnome;

end;

procedure TPrincipal.SpeedButton12Click(Sender: TObject);
begin
if OpenDialog1.Execute then begin
   dadosFTP.Edit;
   dadosFTPcompactador.Value := OpenDialog1.FileName;
   dadosFTP.Post;
end;

end;

procedure TPrincipal.Break1Click(Sender: TObject);
begin
nmftp1.Abort;
nmftp1.Cancel;
botaoenviaragora.Enabled:=true;
painellistabackups.Enabled:=true;

end;

procedure TPrincipal.oCULTAR1Click(Sender: TObject);
begin
button6.Click;
end;

procedure TPrincipal.DBGrid1DblClick(Sender: TObject);
begin
cadastro_diretorios.Edit;
if cadastro_diretoriosenvia.Value= false then begin
   cadastro_diretoriosenvia.Value := true;
   exit;
end else if cadastro_diretoriosenvia.Value= true then cadastro_diretoriosenvia.Value := false;
end;

end.
