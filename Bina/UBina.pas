unit UBina;

{$I spBina.inc}

interface

uses
  Windows, Dialogs, Messages, Classes, SysUtils, IniFiles, Registry;

type
  TPorta = string;
  TBaudRate = (Custom, br2400);
  TStopBits = (sbOneStopBit, sbOne5StopBits, sbTwoStopBits);
  TDataBits = (dbFive, dbSix, dbSeven, dbEight);
  TComEvent = (evDTMF, evInicialize);
  TComEvents = set of TComEvent;
  TComSignal = (csCTS, csDSR, csRing, csRLSD);
  TComSignals = set of TComSignal;
  TComError = (ceFrame, ceRxParity, ceOverrun, ceBreak, ceIO, ceMode, ceRxOver,
    ceTxFull);
  TComErrors = set of TComError;
  TSyncMethod = (smThreadSync, smWindowSync, smNone);
  TStoreType = (stRegistry, stIniFile);
  TStoredProp = (spBasic,spTimeouts, spParity,
    spOthers);
  TStoredProps = set of TStoredProp;
  TDTMFEvent = procedure(Sender: TObject; Count: Integer) of object;
  TRxBufEvent = procedure(Sender: TObject; const Buffer;
    Count: Integer) of object;
  TComErrorEvent = procedure(Sender: TObject; Errors: TComErrors) of object;
  TComSignalEvent = procedure(Sender: TObject; OnOff: Boolean) of object;

  TOperationKind = (okWrite, okRead);
  TAsync = record
    Overlapped: TOverlapped;
    Kind: TOperationKind;
    Data: Pointer;
    Size: Integer;
  end;
  PAsync = ^TAsync;

  TSuperBina = class;

  TComLink = class
  private
  public
  end;

  TComThread = class(TThread)
  private
    FSuperBina: TSuperBina;
    FStopEvent: THandle;
    FEvents: TComEvents;
  protected
    procedure DispatchComMsg;
    procedure DoEvents;
    procedure Execute; override;
    procedure SendEvents;
    procedure Stop;
  public
    constructor Create(AComPort: TSuperBina);
    destructor Destroy; override;
  end;
  TComTimeouts = class(TPersistent)
  private
    FSuperBina: TSuperBina;
    FReadInterval: Integer;
    FReadTotalM: Integer;
    FReadTotalC: Integer;
    FWriteTotalM: Integer;
    FWriteTotalC: Integer;
    procedure SeTSuperBina(const AComPort: TSuperBina);
    procedure SetReadInterval(const Value: Integer);
    procedure SetReadTotalM(const Value: Integer);
    procedure SetReadTotalC(const Value: Integer);
    procedure SetWriteTotalM(const Value: Integer);
    procedure SetWriteTotalC(const Value: Integer);
  protected
  public
    constructor Create;
    property ComPort: TSuperBina read FSuperBina;
  published
    property ReadInterval: Integer read FReadInterval write SetReadInterval default -1;
    property ReadTotalMultiplier: Integer read FReadTotalM write SetReadTotalM default 0;
    property ReadTotalConstant: Integer read FReadTotalC write SetReadTotalC default 0;
    property WriteTotalMultiplier: Integer
      read FWriteTotalM write SetWriteTotalM default 100;
    property WriteTotalConstant: Integer
      read FWriteTotalC write SetWriteTotalC default 1000;
  end;

  TComFlowControl = class(TPersistent)
  private
    FSuperBina: TSuperBina;
  protected
  public
    property ComPort: TSuperBina read FSuperBina;
  published
  end;

  TComParity = class(TPersistent)
  private
    FSuperBina: TSuperBina;
    FCheck: Boolean;
    FReplace: Boolean;
    FReplaceChar: Char;
    procedure SetCheck(const Value: Boolean);
    procedure SetReplace(const Value: Boolean);
    procedure SetReplaceChar(const Value: Char);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    property ComPort: TSuperBina read FSuperBina;
  published
    property Check: Boolean read FCheck write SetCheck default False;
    property Replace: Boolean read FReplace write SetReplace default False;
    property ReplaceChar: Char read FReplaceChar write SetReplaceChar default #0;
  end;

  TComBuffer = class(TPersistent)
  private
    FSuperBina: TSuperBina;
    FInputSize: Integer;
    FOutputSize: Integer;
    procedure SeTSuperBina(const AComPort: TSuperBina);
    procedure SetInputSize(const Value: Integer);
    procedure SetOutputSize(const Value: Integer);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create;
    property ComPort: TSuperBina read FSuperBina;
  published
    property InputSize: Integer read FInputSize write SetInputSize default 1024;
    property OutputSize: Integer read FOutputSize write SetOutputSize default 1024;
  end;
  TSuperBina = class(TComponent)
  private
    FEventThread: TComThread;
    FThreadCreated: Boolean;
    FHandle: THandle;
    FWindow: THandle;
    FUpdateCount: Integer;
    FLinks: TList;
    FTriggersOnDTMF: Boolean;
    FHasLink: Boolean;
    FConectado: Boolean;
    FBaudRate: TBaudRate;
    FCustomBaudRate: Integer;
    FPort: TPorta;
    FStopBits: TStopBits;
    FDataBits: TDataBits;
    FEvents: TComEvents;
    FBuffer: TComBuffer;
    FTimeouts: TComTimeouts;
    FSyncMethod: TSyncMethod;
    FStoredProps: TStoredProps;
    FOnDTMF: TDTMFEvent;
    FOnInicialize: TNotifyEvent;
    function GetTriggersOnDTMF: Boolean;
    procedure SetTriggersOnDTMF(const Value: Boolean);
    procedure SetConectado(const Value: Boolean);
    procedure SetBaudRate(const Value: TBaudRate);
    procedure SetCustomBaudRate(const Value: Integer);
    procedure SetPort(const Value: TPorta);
    procedure SetStopBits(const Value: TStopBits);
    procedure SetDataBits(const Value: TDataBits);
    procedure SetSyncMethod(const Value: TSyncMethod);
    procedure SetTimeouts(const Value: TComTimeouts);
    procedure CheckSignals(Open: Boolean);
    procedure WindowMethod(var Message: TMessage);
    procedure CallInicialize;
    procedure CallDTMF;
  protected
    procedure Loaded; override;
    procedure DoInicialize; dynamic;
    procedure DoDTMF(Count: Integer); dynamic;
    procedure StoreRegistry(Reg: TRegistry); virtual;
    procedure StoreIniFile(IniFile: TIniFile); virtual;
    procedure LoadRegistry(Reg: TRegistry); virtual;
    procedure LoadIniFile(IniFile: TIniFile); virtual;
    procedure CreateHandle; virtual;
    procedure DestroyHandle; virtual;
    procedure ApplyDCB; dynamic;
    procedure ApplyTimeouts; dynamic;
    procedure ApplyBuffer; dynamic;
    procedure SetupComPort; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure StoreSettings(StoreType: TStoreType; StoreTo: string);
    procedure LoadSettings(StoreType: TStoreType; LoadFrom: string);
    procedure Open;
    procedure Close;
    function InputCount: Integer;
    function OutputCount: Integer;
    function Signals: TComSignals;
    function StateFlags: TComStateFlags;
    procedure ClearBuffer(Input, Output: Boolean);
    function LastErrors: TComErrors;
    function Write(const Buffer; Count: Integer): Integer;
    function WriteDTMF(const Str: string): Integer;
    function Read(var Buffer; Count: Integer): Integer;


    /// Inicio das alterações.
    function ConvertaModemBina(var Ok: Boolean): Boolean;
    function PrepareModemBina(var sDTMF, inicio: string):string;
    function LeiaDTMF(var DTMF: string; Count: Integer): Integer;
    function DecodifiqueNumero(var leitura, tipo,ddd,fone: string): string;
    function FormateResultado(var stexto,smascara, stipo, sddd, sfone: string): string;
    procedure IniciaModemBina;
    procedure FinalizaModemBina;
    // final

    function WriteAsync(const Buffer; Count: Integer;
      var AsyncPtr: PAsync): Integer;
    function WriteDTMFAsync(const Str: string; var AsyncPtr: PAsync): Integer;
    function ReadAsync(var Buffer; Count: Integer;
      var AsyncPtr: PAsync): Integer;
    function ReadStrAsync(var Str: string; Count: Integer; var AsyncPtr: PAsync): Integer;
    function WaitForAsync(var AsyncPtr: PAsync): Integer;
    function IsAsyncCompleted(AsyncPtr: PAsync): Boolean;
    procedure WaitForEvent(var Events: TComEvents; StopEvent: THandle;
      Timeout: Integer);
    procedure AbortAllAsync;
    procedure TransmitChar(Ch: Char);
    property Handle: THandle read FHandle;
    property TriggersOnDTMF: Boolean
      read GetTriggersOnDTMF write SetTriggersOnDTMF;
    property StoredProps: TStoredProps read FStoredProps write FStoredProps;
    property Conectado: Boolean read FConectado write SetConectado default False;
    property BaudRate: TBaudRate read FBaudRate write SetBaudRate;
    property CustomBaudRate: Integer
      read FCustomBaudRate write SetCustomBaudRate;
    property Porta: TPorta read FPort write SetPort;
    property StopBits: TStopBits read FStopBits write SetStopBits;
    property DataBits: TDataBits read FDataBits write SetDataBits;
    property Events: TComEvents read FEvents write FEvents;
    property Timeouts: TComTimeouts read FTimeouts write SetTimeouts;
    property SyncMethod: TSyncMethod
     read FSyncMethod write SetSyncMethod default smThreadSync;
    property OnInicialize: TNotifyEvent read FOnInicialize write FOnInicialize;
    property OnDTMF: TDTMFEvent read FOnDTMF write FOnDTMF;
  end;

  TSpBina = class(TSuperBina)
    property Conectado;
    property Porta;
    property Events;
    property OnInicialize;
    property OnDTMF;
  end;

  TComStrEvent = procedure(Sender: TObject; const Str: string) of object;
  TCustPacketEvent = procedure(Sender: TObject; const Str: string;
    var Pos: Integer) of object;
  TComDataPacket = class(TComponent)
  private
    FComLink: TComLink;
    FSuperBina: TSuperBina;
    FStartString: string;
    FStopString: string;
    FMaxBufferSize: Integer;
    FSize: Integer;
    FIncludeStrings: Boolean;
    FCaseInsensitive: Boolean;
    FInPacket: Boolean;
    FBuffer: string;
    FOnPacket: TComStrEvent;
    FOnDiscard: TComStrEvent;
    FOnCustomStart: TCustPacketEvent;
    FOnCustomStop: TCustPacketEvent;
    procedure SeTSuperBina(const Value: TSuperBina);
    procedure SetCaseInsensitive(const Value: Boolean);
    procedure SetSize(const Value: Integer);
    procedure SetStartString(const Value: string);
    procedure SetStopString(const Value: string);
    procedure CheckIncludeStrings(var Str: string);
    function Upper(const Str: string): string;
    procedure EmptyBuffer;
    function ValidStop: Boolean;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure DoDiscard(const Str: string); dynamic;
    procedure DoPacket(const Str: string); dynamic;
    procedure DoCustomStart(const Str: string; var Pos: Integer); dynamic;
    procedure DoCustomStop(const Str: string; var Pos: Integer); dynamic;
    procedure HandleBuffer; virtual;
    property Buffer: string read FBuffer write FBuffer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AddData(const Str: string);
  published
    property ComPort: TSuperBina read FSuperBina write SeTSuperBina;
    property CaseInsensitive: Boolean
      read FCaseInsensitive write SetCaseInsensitive default False;
    property IncludeStrings: Boolean read FIncludeStrings write FIncludeStrings default False;
    property MaxBufferSize: Integer read FMaxBufferSize write FMaxBufferSize default 1024;
    property StartString: string read FStartString write SetStartString;
    property StopString: string read FStopString write SetStopString;
    property Size: Integer read FSize write SetSize default 0;
    property OnDiscard: TComStrEvent read FOnDiscard write FOnDiscard;
    property OnPacket: TComStrEvent read FOnPacket write FOnPacket;
    property OnCustomStart: TCustPacketEvent
      read FOnCustomStart write FOnCustomStart;
    property OnCustomStop: TCustPacketEvent
      read FOnCustomStop write FOnCustomStop;
  end;

  ESuperBina = class(Exception)
  private
    FWinCode: Integer;
    FCode: Integer;
  public
    constructor Create(ACode: Integer; AWinCode: Integer);
    constructor CreateNoWinCode(ACode: Integer);
    property WinCode: Integer read FWinCode write FWinCode;
    property Code: Integer read FCode write FCode;
  end;

procedure InitAsync(var AsyncPtr: PAsync);
procedure DoneAsync(var AsyncPtr: PAsync);
procedure EnumComPorts(Ports: TStrings);

function StrToBaudRate(Str: string): TBaudRate;
function StrToStopBits(Str: string): TStopBits;
function StrToDataBits(Str: string): TDataBits;
function BaudRateToStr(BaudRate: TBaudRate): string;
function StopBitsToStr(StopBits: TStopBits): string;
function DataBitsToStr(DataBits: TDataBits): string;

const
  WaitInfinite = Integer(INFINITE);

  CError_FalhaNaAbertura = 1;
  CError_FalhaNaEscrita  = 2;
  CError_FalhaNaLeitura  = 3;
  CError_PortaInvalida   = 4;
  CError_InvalidAsync    = 5;
  CError_PurgeFailed     = 6;
  CError_AsyncCheck      = 7;
  CError_SetStateFailed  = 8;
  CError_TimeoutsFailed  = 9;
  CError_SetupComFailed  = 10;
  CError_ClearComFailed  = 11;
  CError_ModemStatFailed = 12;
  CError_EscapeComFailed = 13;
  CError_TransmitFailed  = 14;
  CError_SyncMeth        = 15;
  CError_StoreFailed     = 16;
  CError_LoadFailed      = 17;
  CError_RegFailed       = 18;
  CError_LedStateFailed  = 19;
  CError_ThreadCreated   = 20;
  CError_WaitFailed      = 21;
  CError_HasLink         = 22;

procedure Register;

implementation

uses
 Controls, Forms, WinSpool;

const
  BinaMsgErro: array[1..22] of string =
    ('Impossivel abrir Porta de Comunicação',
     'Falha ao escrever DTMF',
     'Falha ao ler código DTMF',
     'Invalid Async parameter',
     'PurgeComm function failed',
     'Unable to get async status',
     'SetCommState function failed',
     'SetCommTimeouts failed',
     'SetupComm function failed',
     'ClearCommError function failed',
     'GetCommModemStatus function failed',
     'EscapeCommFunction function failed',
     'TransmitCommChar function failed',
     'Cannot set SyncMethod while Conectado',
     'EnumPorts function failed',
     'Failed to store settings',
     'Failed to load settings',
     'Link (un)registration failed',
     'Cannot change led state if ComPort is selected',
     'Cannot wait for event if event thread is created',
     'WaitForEvent method failed',
     'A component is linked to OnRxBuf event');

  dcb_Binary           = $00000001;
  dcb_Parity           = $00000002;
  dcb_OutxCTSFlow      = $00000004;
  dcb_OutxDSRFlow      = $00000008;
  dcb_DTRControl       = $00000030;
  dcb_DSRSensivity     = $00000040;
  dcb_TxContinueOnXoff = $00000080;
  dcb_OutX             = $00000100;
  dcb_InX              = $00000200;
  dcb_ErrorChar        = $00000400;
  dcb_Null             = $00000800;
  dcb_RTSControl       = $00003000;
  dcb_AbortOnError     = $00004000;

  CM_COMPORT           = WM_USER + 1;

function EventsToInt(const Events: TComEvents): Integer;
begin
  Result := 0;
  if evDTMF in Events then
    Result := Result or EV_RXCHAR;
end;

function IntToEvents(Mask: Integer): TComEvents;
begin
  Result := [];
  if (EV_RXCHAR and Mask) <> 0 then
    Result := Result + [evDTMF];
end;

constructor TComThread.Create(AComPort: TSuperBina);
begin
  inherited Create(True);
  FStopEvent := CreateEvent(nil, True, False, nil);
  FSuperBina := AComPort;
  SetCommMask(FSuperBina.Handle, EventsToInt(FSuperBina.Events));
  Resume;
end;

destructor TComThread.Destroy;
begin
  Stop;
  inherited Destroy;
end;

procedure TComThread.Execute;
var
  EventHandles: array[0..1] of THandle;
  Overlapped: TOverlapped;
  Signaled, BytesTrans, Mask: DWORD;
begin
  FillChar(Overlapped, SizeOf(Overlapped), 0);
  Overlapped.hEvent := CreateEvent(nil, True, True, nil);
  EventHandles[0] := FStopEvent;
  EventHandles[1] := Overlapped.hEvent;
  repeat
    WaitCommEvent(FSuperBina.Handle, Mask, @Overlapped);
    Signaled := WaitForMultipleObjects(2, @EventHandles, False, INFINITE);
    if (Signaled = WAIT_OBJECT_0 + 1)
      and GetOverlappedResult(FSuperBina.Handle, Overlapped, BytesTrans, False)
    then
    begin
      FEvents := IntToEvents(Mask);
      DispatchComMsg;
    end;
  until Signaled <> (WAIT_OBJECT_0 + 1);
  SetCommMask(FSuperBina.Handle, 0);
  PurgeComm(FSuperBina.Handle, PURGE_TXCLEAR or PURGE_RXCLEAR);
  CloseHandle(Overlapped.hEvent);
  CloseHandle(FStopEvent);
end;

procedure TComThread.Stop;
begin
  SetEvent(FStopEvent);
  Sleep(0);
end;

procedure TComThread.DispatchComMsg;
begin
  case FSuperBina.SyncMethod of
    smThreadSync: Synchronize(DoEvents);
    smWindowSync: SendEvents;
    smNone:       DoEvents;  
  end;
end;

procedure TComThread.SendEvents;
begin
  if evDTMF in FEvents then
    SendMessage(FSuperBina.FWindow, CM_COMPORT, EV_RXCHAR, 0);
end;

procedure TComThread.DoEvents;
begin
  if evDTMF in FEvents then
    FSuperBina.CallDTMF;
  if evInicialize in FEvents then
    FSuperBina.CallInicialize;
end;

constructor TComTimeouts.Create;
begin
  inherited Create;
  FReadInterval := -1;
  FWriteTotalM := 100;
  FWriteTotalC := 1000;
end;

procedure TComTimeouts.SeTSuperBina(const AComPort: TSuperBina);
begin
  FSuperBina := AComPort;
end;

procedure TComTimeouts.SetReadInterval(const Value: Integer);
begin
  if Value <> FReadInterval then
  begin
    FReadInterval := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetReadTotalC(const Value: Integer);
begin
  if Value <> FReadTotalC then
  begin
    FReadTotalC := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetReadTotalM(const Value: Integer);
begin
  if Value <> FReadTotalM then
  begin
    FReadTotalM := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetWriteTotalC(const Value: Integer);
begin
  if Value <> FWriteTotalC then
  begin
    FWriteTotalC := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetWriteTotalM(const Value: Integer);
begin
  if Value <> FWriteTotalM then
  begin
    FWriteTotalM := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyTimeouts;
  end;
end;

procedure TComParity.AssignTo(Dest: TPersistent);
begin
  if Dest is TComParity then
  begin
    with TComParity(Dest) do
    begin
      FCheck       := Self.Check;
      FReplace     := Self.Replace;
      FReplaceChar := Self.ReplaceChar;
    end
  end
  else
    inherited AssignTo(Dest);
end;

//procedure TComParity.SeTSuperBina(const AComPort: TSuperBina);
//begin
//  FSuperBina := AComPort;
//end;

procedure TComParity.SetCheck(const Value: Boolean);
begin
  if Value <> FCheck then
  begin
    FCheck := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyDCB;
  end;
end;

procedure TComParity.SetReplace(const Value: Boolean);
begin
  if Value <> FReplace then
  begin
    FReplace := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyDCB;
  end;
end;

procedure TComParity.SetReplaceChar(const Value: Char);
begin
  if Value <> FReplaceChar then
  begin
    FReplaceChar := Value;
    if FSuperBina <> nil then
      FSuperBina.ApplyDCB;
  end;
end;

constructor TComBuffer.Create;
begin
  inherited Create;
  FInputSize := 1024;
  FOutputSize := 1024;
end;

procedure TComBuffer.AssignTo(Dest: TPersistent);
begin
  if Dest is TComBuffer then
  begin
    with TComBuffer(Dest) do
    begin
      FOutputSize  := Self.OutputSize;
      FInputSize   := Self.InputSize;
    end
  end
  else
    inherited AssignTo(Dest);
end;

procedure TComBuffer.SeTSuperBina(const AComPort: TSuperBina);
begin
  FSuperBina := AComPort;
end;

procedure TComBuffer.SetInputSize(const Value: Integer);
begin
  if Value <> FInputSize then
  begin
    FInputSize := Value;
    if (FInputSize mod 2) = 1 then
      Dec(FInputSize);
    if FSuperBina <> nil then
      FSuperBina.ApplyBuffer;
  end;
end;

procedure TComBuffer.SetOutputSize(const Value: Integer);
begin
  if Value <> FOutputSize then
  begin
    FOutputSize := Value;
    if (FOutputSize mod 2) = 1 then
      Dec(FOutputSize);
    if FSuperBina <> nil then
      FSuperBina.ApplyBuffer;
  end;
end;


constructor TSuperBina.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FComponentStyle := FComponentStyle - [csInheritable];
  FLinks := TList.Create;
  FTriggersOnDTMF := True;
  FBaudRate := br2400;
  FCustomBaudRate := 2400;
  FPort := 'COM1';
  FStopBits := sbOneStopBit;
  FDataBits := dbEight;
  FEvents := [evDTMF, evInicialize];
  FHandle := INVALID_HANDLE_VALUE;
  FStoredProps := [spBasic];
  FTimeouts := TComTimeouts.Create;
  FTimeouts.SeTSuperBina(Self);
  FBuffer := TComBuffer.Create;
  FBuffer.SeTSuperBina(Self);
end;

destructor TSuperBina.Destroy;
begin
  Close;
  FBuffer.Free;
  FTimeouts.Free;
  inherited Destroy;
  FLinks.Free;
end;

procedure TSuperBina.CreateHandle;
begin
  FHandle := CreateFile(
    PChar('\\.\' + FPort),
    GENERIC_READ or GENERIC_WRITE,
    0,
    nil,
    OPEN_EXISTING,
    FILE_FLAG_OVERLAPPED,
    0);

  if FHandle = INVALID_HANDLE_VALUE then
    raise ESuperBina.Create(CError_FalhaNaAbertura, GetLastError);
end;

procedure TSuperBina.DestroyHandle;
begin
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle);
end;

procedure TSuperBina.Loaded;
begin
  inherited Loaded;
  if FConectado and not (csDesigning in ComponentState) then
  begin
    FConectado := False;
    try
      Open;
    except
      Application.HandleException(Self);
    end;
  end;
end;

procedure TSuperBina.WindowMethod(var Message: TMessage);
begin
  with Message do
    if Msg = CM_COMPORT then
      try
        case wParam of
          EV_RXCHAR :   CallDTMF;
        end
      except
        Application.HandleException(Self);
      end
    else
      Result := DefWindowProc(FWindow, Msg, wParam, lParam);
end;

procedure TSuperBina.BeginUpdate;
begin
  FUpdateCount := FUpdateCount + 1;
end;

procedure TSuperBina.EndUpdate;
begin
  if FUpdateCount > 0 then
  begin
    FUpdateCount := FUpdateCount - 1;
    if FUpdateCount = 0 then
      SetupComPort;
  end;
end;

procedure TSuperBina.Open;
begin
  if not FConectado and not (csDesigning in ComponentState) then
  begin
    CreateHandle;
    FConectado := True;
    try
      SetupComPort;
    except
      DestroyHandle;
      FConectado := False;
      raise;
    end;
    if (FEvents = []) then
      FThreadCreated := False
    else
    begin
      if (FSyncMethod = smWindowSync) then
        FWindow := AllocateHWnd(WindowMethod);
      FEventThread := TComThread.Create(Self);
      FThreadCreated := True;
    end;
    CallInicialize;
  end;
end;

procedure TSuperBina.Close;
begin
  if FConectado and not (csDesigning in ComponentState) then
  begin
    AbortAllAsync;
    if FThreadCreated then
    begin
      FEventThread.Free;
      FThreadCreated := False;
      if FSyncMethod = smWindowSync then
        DeallocateHWnd(FWindow);
    end;
    DestroyHandle;
    FConectado := False;
  end;
end;

procedure TSuperBina.ApplyDCB;
const
  CStopBits: array[TStopBits] of Integer =
    (ONESTOPBIT, ONE5STOPBITS, TWOSTOPBITS);
  CBaudRate: array[TBaudRate] of Integer =
    (0, CBR_2400);
  CDataBits: array[TDataBits] of Integer = (5, 6, 7, 8);

var
  DCB: TDCB;

begin
  if FConectado and (FUpdateCount = 0) and
    not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
  begin
    DCB.DCBlength := SizeOf(TDCB);
    DCB.XonLim := FBuffer.InputSize div 4;
    DCB.XoffLim := DCB.XonLim;

    DCB.Flags := dcb_Binary;
    DCB.StopBits := CStopBits[FStopBits];

    if FBaudRate <> Custom then
      DCB.BaudRate := CBaudRate[FBaudRate]
    else
      DCB.BaudRate := FCustomBaudRate;
    DCB.ByteSize := CDataBits[FDataBits];

    if not SetCommState(FHandle, DCB) then
      raise ESuperBina.Create(CError_SetStateFailed, GetLastError);
  end;
end;

procedure TSuperBina.ApplyTimeouts;
var
  Timeouts: TCommTimeouts;

  function GetTOValue(const Value: Integer): DWORD;
  begin
    if Value = -1 then
      Result := MAXDWORD
    else
      Result := Value;
  end;

begin
  if FConectado and (FUpdateCount = 0) and
    not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
  begin
    Timeouts.ReadIntervalTimeout := GetTOValue(FTimeouts.ReadInterval);
    Timeouts.ReadTotalTimeoutMultiplier := GetTOValue(FTimeouts.ReadTotalMultiplier);
    Timeouts.ReadTotalTimeoutConstant := GetTOValue(FTimeouts.ReadTotalConstant);
    Timeouts.WriteTotalTimeoutMultiplier := GetTOValue(FTimeouts.WriteTotalMultiplier);
    Timeouts.WriteTotalTimeoutConstant := GetTOValue(FTimeouts.WriteTotalConstant);

    if not SetCommTimeouts(FHandle, Timeouts) then
      raise ESuperBina.Create(CError_TimeoutsFailed, GetLastError);
  end;
end;

procedure TSuperBina.ApplyBuffer;
begin
  if FConectado and (FUpdateCount = 0) and
      not ((csDesigning in ComponentState) or (csLoading in ComponentState))
  then
    if not SetupComm(FHandle, FBuffer.InputSize, FBuffer.OutputSize) then
      raise ESuperBina.Create(CError_SetupComFailed, GetLastError);
end;

procedure TSuperBina.SetupComPort;
begin
  ApplyBuffer;
  ApplyDCB;
  ApplyTimeouts;
end;

function TSuperBina.InputCount: Integer;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ESuperBina.Create(CError_ClearComFailed, GetLastError);
  Result := ComStat.cbInQue;
end;

function TSuperBina.OutputCount: Integer;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ESuperBina.Create(CError_ClearComFailed, GetLastError);
  Result := ComStat.cbOutQue;
end;

function TSuperBina.Signals: TComSignals;
var
  Status: DWORD;
begin
  if not GetCommModemStatus(FHandle, Status) then
    raise ESuperBina.Create(CError_ModemStatFailed, GetLastError);
  Result := [];

  if (MS_CTS_ON and Status) <> 0 then
    Result := Result + [csCTS];
  if (MS_DSR_ON and Status) <> 0 then
    Result := Result + [csDSR];
  if (MS_RING_ON and Status) <> 0 then
    Result := Result + [csRing];
  if (MS_RLSD_ON and Status) <> 0 then
    Result := Result + [csRLSD];
end;

function TSuperBina.StateFlags: TComStateFlags;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ESuperBina.Create(CError_ClearComFailed, GetLastError);
  Result := ComStat.Flags;
end;

procedure TSuperBina.ClearBuffer(Input, Output: Boolean);
var
  Flag: DWORD;
begin
  Flag := 0;
  if Input then
    Flag := PURGE_RXCLEAR;
  if Output then
    Flag := Flag or PURGE_TXCLEAR;

  if not PurgeComm(FHandle, Flag) then
    raise ESuperBina.Create(CError_PurgeFailed, GetLastError);
end;

function TSuperBina.LastErrors: TComErrors;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ESuperBina.Create(CError_ClearComFailed, GetLastError);
  Result := [];

  if (CE_FRAME and Errors) <> 0 then
    Result := Result + [ceFrame];
  if (CE_OVERRUN and Errors) <> 0 then
    Result := Result + [ceOverrun];
  if (CE_RXOVER and Errors) <> 0 then
    Result := Result + [ceRxOver];
  if (CE_TXFULL and Errors) <> 0 then
    Result := Result + [ceTxFull];
  if (CE_BREAK and Errors) <> 0 then
    Result := Result + [ceBreak];
  if (CE_IOE and Errors) <> 0 then
    Result := Result + [ceIO];
  if (CE_MODE and Errors) <> 0 then
    Result := Result + [ceMode];
end;

procedure PrepareAsync(AKind: TOperationKind; const Buffer;
  Count: Integer; AsyncPtr: PAsync);
begin
  with AsyncPtr^ do
  begin
    Kind := AKind;
    if Data <> nil then
      FreeMem(Data);
    GetMem(Data, Count);
    Move(Buffer, Data^, Count);
    Size := Count;
  end;
end;

function TSuperBina.WriteAsync(const Buffer; Count: Integer; var AsyncPtr: PAsync): Integer;
var
  Success: Boolean;
  BytesTrans: DWORD;
begin
  if AsyncPtr = nil then
    raise ESuperBina.CreateNoWinCode(CError_InvalidAsync);
  PrepareAsync(okWrite, Buffer, Count, AsyncPtr);

  Success := WriteFile(FHandle, Buffer, Count, BytesTrans, @AsyncPtr^.Overlapped)
    or (GetLastError = ERROR_IO_PENDING);

  if not Success then
    raise ESuperBina.Create(CError_FalhaNaEscrita, GetLastError);

  Result := BytesTrans;
end;

function TSuperBina.Write(const Buffer; Count: Integer): Integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    WriteAsync(Buffer, Count, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

function TSuperBina.WriteDTMFAsync(const Str: string; var AsyncPtr: PAsync): Integer;
begin
  if Length(Str) > 0 then
    Result := WriteAsync(Str[1], Length(Str), AsyncPtr)
  else
    Result := 0;
end;

function TSuperBina.WriteDTMF(const Str: string): Integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    WriteDTMFAsync(Str, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

function TSuperBina.ReadAsync(var Buffer; Count: Integer; var AsyncPtr: PAsync): Integer;
var
  Success: Boolean;
  BytesTrans: DWORD;
begin
  if AsyncPtr = nil then
    raise ESuperBina.CreateNoWinCode(CError_InvalidAsync);
  AsyncPtr^.Kind := okRead;

  Success := ReadFile(FHandle, Buffer, Count, BytesTrans, @AsyncPtr^.Overlapped)
    or (GetLastError = ERROR_IO_PENDING);

  if not Success then
    raise ESuperBina.Create(CError_FalhaNaLeitura, GetLastError);

  Result := BytesTrans;
end;

function TSuperBina.Read(var Buffer; Count: Integer): Integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    ReadAsync(Buffer, Count, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

function TSuperBina.ReadStrAsync(var Str: string; Count: Integer; var AsyncPtr: PAsync): Integer;
begin
  SetLength(Str, Count);
  if Count > 0 then
    Result := ReadAsync(Str[1], Count, AsyncPtr)
  else
    Result := 0;
end;

procedure TSuperBina.IniciaModemBina;
var
S : string;
begin
 S := 'ATDT000'; //Tira o fone do gancho e disca '000' (se esquecer de
                 //colocar a chave em BINA, retorna ocupado imediatamente)
 S := S+ #13+#10;
 WriteDTMF(S);   // envia discagem + enter
end;


function TSuperBina.PrepareModemBina(var sDTMF, inicio: string): string;
var
i : integer;
begin

 // Verifica o  final da Transmissão.
 // 'A = inicio' .
 // 'C', 'D' e '#' ou '*' são opções de caracteres usadas
 // pelas companhia telefonicas para finalizar a transmissão

//OPÇÕES PARA sDTMF:
//b := linha ocupada (sempre em minúsculos)
//d := tom de linha  ("               "   )

for i := 1 to length(trim(sDTMF)) do
   begin
     if (trim(sDTMF[i])    = 'C')
        or (trim(sDTMF[i]) = 'D')
        or (trim(sDTMF[i]) = '#')
        or (trim(sDTMF[i]) = '*') then
        inicio := '0'

     // caso se esqueça de colocar a chave seletora no modo BINA, vai dar
     // ocupado!
     else if trim(sDTMF[i]) = 'b' then // Ocupado
        inicio := '2'
     else  // senão contém final...
       inicio := '1';  // ...mantém inicio
   end;
   result := inicio;
end;

function TSuperBina.ConvertaModemBina(var Ok: boolean): Boolean;
var
inicial : string;
begin
   // Leia algo sobre comandos AT (normal e extendidos), descobrirá
   // muita coisa interessante!

   //Coloca o modem em modo resposta
   Inicial :='AT&F &C0 V1 S40=2 S41=1 X3 #CLS=8 #VRA=0 #VRN=0';
   Inicial := Inicial+#13+#10;
   // envia os caracteres de configuração
   WriteDTMF(Inicial);

   // Valida a o parâmetro 'ok'...
   ok := true;
   // ...e retorna
   result :=ok;
end;
function TSuperBina.LeiaDTMF(var DTMF: string; Count: Integer): Integer;
var
  AsyncPtr: PAsync;
begin
// Esta função não foi alterada, apenas o nome foi
// personalizado (de STR para DTMF)
  InitAsync(AsyncPtr);
  try
    ReadStrAsync(DTMF, Count, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
    DoneAsync(AsyncPtr);
    SetLength(DTMF, Result);
  finally

  end;
end;

function TSuperBina.DecodifiqueNumero(var leitura,tipo,ddd,fone: string): string;
var
i: integer;
stexto : string;
begin
 {# Note que a decodificação é feita um a um e não no string inteiro, ou seja,
  # a medida em que recebe o caracter, o modem inicia a decodificação e a cada
  #  novo caracter recebido ele torna a decodificar. Deste modo é como se fizesse
  # uma 'revisão', tornando assim, uma decodificação segura e confiável.  }
 for i := 1 to length(leitura) do
    if leitura[i] in  ['0'..'9'] then
       begin
        stexto:= stexto+ leitura[i];
       end
     else
       stexto:=stexto;

 leitura  := stexto; // Usar stexto para separar tipos!!!!
end;


//// Função para formatar o munero
{ AQUÍ SUA ATENÇAO TEM QUE SER REDOBRADA. O SPBINA
TRABALHA COM O COMPRIMENTO DO NUMERO PARA DETERMINAR:
LIGAÇÃO LOCAL/INTERURBANA, TIPO, DDD, PREFIXO E FONE}
function TSuperBina.FormateResultado
             (var stexto,smascara, stipo,
             sddd, sfone: string): string;
var
i : integer;
final: string;
begin
 /// separar tipos ( tipo, ddd, prefix e numero)
  // vamos determinar o numero 8 para o tamanho minimo...
  // se for menor, não formata, apenas mostra (exemplo: 1500, 121, 130 etc)

  final := '';
  if length(stexto) > 7 then  begin
   // Tipo de chamada   LOCAL
   if length(stexto) = 8  then
      begin
         for i := 1 to length(trim(stexto)) -7 do // Localize o 1º caracter (Tipo)
            final := final+stexto[i];
            stipo := final; // localizamos o "Tipo" de uma chamada local.

            // achar Prefixo e numero (exemplo: 222-2222)
            final :='';
            for i := 2 to length(stexto) do  // pule o primeiro caracter (Tipo)
                final := final + stexto[i];
                smascara :=  '000\-0000;0;';  // 222-2222
                sfone := final;
                final := '';
           end

            // 1 - 2222-2222   = 9 digitos LOCAL
 else if length(stexto) = 9  then    // 1 - 2222-2222
           begin
            // Tipo de chamada
             for i := 1 to length(stexto) -8 do
                 final := final+stexto[i];
                 stipo:= final;
                 final :='';

              // Prefixo e numero   2222-2222
             for i := 2 to length(stexto) do
                 final := final + stexto[i];
                 smascara:=  '0000\-0000;0;';  // 2222-2222
                 sfone := final;
                 final := '';
             end

            // 1 17 222 2222   = 10 digitos
 else if length(stexto) = 10  then
            // Tipo de chamada
             begin
               final := '';
               for i := 1 to length(stexto) -9 do
                   final := final+stexto[i];
                   stipo := final;

                  // DDD    1 17 222 2222
                  final :='';
               for i := 2 to length(stexto) -7 do
                   final := final + stexto[i];
                   sddd := final;
                   final := '';

               // Prefixo e numero   222-2222
              for i := 4 to length(stexto) do
                   final := final + stexto[i];
                   smascara:= '000\-0000;0;';  // 2222-2222
                   sfone := final;
                   final := '';
              end

          // 1 17 2222 2222   = 11 digitos
 else if length(stexto) = 11  then
              begin
              final := '';
              // Tipo de chamada
               for i := 1 to length(stexto) -10 do
                   final := final+stexto[i];
                   stipo := final;

               // DDD    1 17 2222 2222
               final :='';
               for i := 2 to length(stexto) -8 do
                   final := final + stexto[i];
                   sddd := final;
                   final := '';

                   // Prefixo e numero   2222-2222
               for i := 4 to length(stexto) do
                   final := final + stexto[i];
                   smascara :=  '0000\-0000;0;';  // 2222-2222
                   sfone := final;
                   final := '';
             end;

          end
 else
  begin
     // Se numeros especiais usados pela companhias telefônicas
    smascara:=  '';  // 000000000000
    sfone := stexto;
  end;

end;
//Final Formatação

// Finalizar Modem/Bina
procedure TSuperBina.FinalizaModemBina;
var
S : string;
begin
 S := '+++AT H0';
 S := S+#13+#10;
 WriteDTMF(S);
end;



function ErrorCode(AsyncPtr: PAsync): Integer;
begin
  Result := 0;
  case AsyncPtr^.Kind of
    okWrite: Result := CError_FalhaNaEscrita;
    okRead:  Result := CError_FalhaNaLeitura;
  end;
end;

function TSuperBina.WaitForAsync(var AsyncPtr: PAsync): Integer;
var
 BytesTrans, Signaled: DWORD;
 Success: Boolean;
begin
  if AsyncPtr = nil then
    raise ESuperBina.CreateNoWinCode(CError_InvalidAsync);
  Signaled := WaitForSingleObject(AsyncPtr^.Overlapped.hEvent, INFINITE);
  Success := (Signaled = WAIT_OBJECT_0) and
      (GetOverlappedResult(FHandle, AsyncPtr^.Overlapped, BytesTrans, False));
 if not Success then
    raise ESuperBina.Create(ErrorCode(AsyncPtr), GetLastError);
  if (AsyncPtr^.Kind = okRead) and (InputCount = 0) then
     result :=BytesTrans
 else
    if AsyncPtr^.Data <> nil then

 // Result := BytesTrans;
end;

procedure TSuperBina.AbortAllAsync;
begin
  if not PurgeComm(FHandle, PURGE_TXABORT or PURGE_RXABORT) then
    raise ESuperBina.Create(CError_PurgeFailed, GetLastError);
end;

function TSuperBina.IsAsyncCompleted(AsyncPtr: PAsync): Boolean;
var
  BytesTrans: DWORD;
begin
  if AsyncPtr = nil then
    raise ESuperBina.CreateNoWinCode(CError_InvalidAsync);

  Result := GetOverlappedResult(FHandle, AsyncPtr^.Overlapped, BytesTrans, False);
  if not Result then
    if GetLastError <> ERROR_IO_PENDING then
      raise ESuperBina.Create(CError_AsyncCheck, GetLastError);
end;

procedure TSuperBina.WaitForEvent(var Events: TComEvents;
  StopEvent: THandle; Timeout: Integer);
var
  Overlapped: TOverlapped;
  Mask: DWORD;
  Success: Boolean;
  Signaled, EventHandleCount: Integer;
  EventHandles: array[0..1] of THandle;
begin
  if FThreadCreated then
    raise ESuperBina.CreateNoWinCode(CError_ThreadCreated);

  FillChar(Overlapped, SizeOf(TOverlapped), 0);
  Overlapped.hEvent := CreateEvent(nil, True, False, nil);
  EventHandles[0] := Overlapped.hEvent;
  if StopEvent <> 0 then
  begin
    EventHandles[1] := StopEvent;
    EventHandleCount := 2;
  end
  else
    EventHandleCount := 1;

  try
    SetCommMask(FHandle, EventsToInt(Events));
    Success := WaitCommEvent(FHandle, Mask, @Overlapped);

    if (Success) or (GetLastError = ERROR_IO_PENDING) then
    begin
      Signaled := WaitForMultipleObjects(EventHandleCount, @EventHandles,
        False, Timeout);
      Success := (Signaled = WAIT_OBJECT_0)
        or (Signaled = WAIT_OBJECT_0 + 1) or (Signaled = WAIT_TIMEOUT);
      SetCommMask(FHandle, 0);
    end;

    if not Success then
      raise ESuperBina.Create(CError_WaitFailed, GetLastError);

    Events := IntToEvents(Mask);
  finally
    CloseHandle(Overlapped.hEvent);
  end;
end;

procedure TSuperBina.TransmitChar(Ch: Char);
begin
  if not TransmitCommChar(FHandle, Ch) then
    raise ESuperBina.Create(CError_TransmitFailed, GetLastError);
end;

function BoolToStr(const Value: Boolean): string;
begin
  if Value then
    Result := 'Yes'
  else
    Result := 'No';
end;

function StrToBool(const Value: string): Boolean;
begin
  if UpperCase(Value) = 'YES' then
    Result := True
  else
    Result := False;
end;

function StrToChar(Str: string): Char;
var
  A: Integer;
begin
  if Length(Str) > 0 then
  begin
    if (Str[1] = '#') and (Length(Str) > 1) then
    begin
      try
        A := StrToInt(Copy(Str, 2, Length(Str) - 1));
      except
        A := 0;
      end;
      Result := Chr(Byte(A));
    end
    else
      Result := Str[1];
  end
  else
    Result := #0;
end;

function CharToStr(Ch: Char): string;
begin
  if Ch in [#33..#127] then
    Result := Ch
  else
    Result := '#' + IntToStr(Ord(Ch));
end;

procedure TSuperBina.StoreIniFile(IniFile: TIniFile);
begin
  if spBasic in FStoredProps then
  begin
    IniFile.WriteString(Name, 'Port', Porta);
    IniFile.WriteString(Name, 'BaudRate', BaudRateToStr(BaudRate));
    if BaudRate = Custom then
      IniFile.WriteInteger(Name, 'CustomBaudRate', CustomBaudRate);
    IniFile.WriteString(Name, 'StopBits', StopBitsToStr(StopBits));
    IniFile.WriteString(Name, 'DataBits', DataBitsToStr(DataBits));
  end;
  if spOthers in FStoredProps then
  begin
  end;
  if spTimeouts in FStoredProps then
  begin
    IniFile.WriteInteger(Name, 'Timeouts.ReadInterval', Timeouts.ReadInterval);
    IniFile.WriteInteger(Name, 'Timeouts.ReadTotalConstant', Timeouts.ReadTotalConstant);
    IniFile.WriteInteger(Name, 'Timeouts.ReadTotalMultiplier', Timeouts.ReadTotalMultiplier);
    IniFile.WriteInteger(Name, 'Timeouts.WriteTotalConstant', Timeouts.WriteTotalConstant);
    IniFile.WriteInteger(Name, 'Timeouts.WriteTotalMultiplier', Timeouts.WriteTotalMultiplier);
  end;
end;

procedure TSuperBina.StoreRegistry(Reg: TRegistry);
begin
  if spBasic in FStoredProps then
  begin
    Reg.WriteString('Port', Porta);
    Reg.WriteString('BaudRate', BaudRateToStr(BaudRate));
    if BaudRate = Custom then
      Reg.WriteInteger('CustomBaudRate', CustomBaudRate);
    Reg.WriteString('StopBits', StopBitsToStr(StopBits));
    Reg.WriteString('DataBits', DataBitsToStr(DataBits));
  end;
  if spOthers in FStoredProps then
  begin
  end;
  if spParity in FStoredProps then
  begin
  end;
  if spTimeouts in FStoredProps then
  begin
    Reg.WriteInteger('Timeouts.ReadInterval', Timeouts.ReadInterval);
    Reg.WriteInteger('Timeouts.ReadTotalConstant', Timeouts.ReadTotalConstant);
    Reg.WriteInteger('Timeouts.ReadTotalMultiplier', Timeouts.ReadTotalMultiplier);
    Reg.WriteInteger('Timeouts.WriteTotalConstant', Timeouts.WriteTotalConstant);
    Reg.WriteInteger('Timeouts.WriteTotalMultiplier', Timeouts.WriteTotalMultiplier);
  end;
end;

procedure TSuperBina.LoadIniFile(IniFile: TIniFile);
begin
  if spBasic in FStoredProps then
  begin
    Porta := IniFile.ReadString(Name, 'Port', Porta);
    BaudRate := StrToBaudRate(IniFile.ReadString(Name, 'BaudRate', BaudRateToStr(BaudRate)));
    if BaudRate = Custom then
      CustomBaudRate := IniFile.ReadInteger(Name, 'CustomBaudRate', 9600);
    StopBits := StrToStopBits(IniFile.ReadString(Name, 'StopBits', StopBitsToStr(StopBits)));
    DataBits := StrToDataBits(IniFile.ReadString(Name, 'DataBits', DataBitsToStr(DataBits)));
  end;
  if spParity in FStoredProps then
  begin
  end;
  if spTimeouts in FStoredProps then
  begin
    Timeouts.ReadInterval := IniFile.ReadInteger(Name, 'Timeouts.ReadInterval', Timeouts.ReadInterval);
    Timeouts.ReadTotalConstant := IniFile.ReadInteger(Name, 'Timeouts.ReadTotalConstant', Timeouts.ReadTotalConstant);
    Timeouts.ReadTotalMultiplier := IniFile.ReadInteger(Name, 'Timeouts.ReadTotalMultiplier', Timeouts.ReadTotalMultiplier);
    Timeouts.WriteTotalConstant := IniFile.ReadInteger(Name, 'Timeouts.WriteTotalConstant', Timeouts.WriteTotalConstant);
    Timeouts.WriteTotalMultiplier := IniFile.ReadInteger(Name, 'Timeouts.WriteTotalMultiplier', Timeouts.WriteTotalMultiplier);
  end;
end;
procedure TSuperBina.LoadRegistry(Reg: TRegistry);
begin
  if spBasic in FStoredProps then
  begin
    Porta := Reg.ReadString('Porta');
    BaudRate := StrToBaudRate(Reg.ReadString('BaudRate'));
    if BaudRate = Custom then
      CustomBaudRate := Reg.ReadInteger('CustomBaudRate');
    StopBits := StrToStopBits(Reg.ReadString('StopBits'));
    DataBits := StrToDataBits(Reg.ReadString('DataBits'));
  end;
  if spTimeouts in FStoredProps then
  begin
    Timeouts.ReadInterval := Reg.ReadInteger('Timeouts.ReadInterval');
    Timeouts.ReadTotalConstant := Reg.ReadInteger('Timeouts.ReadTotalConstant');
    Timeouts.ReadTotalMultiplier := Reg.ReadInteger('Timeouts.ReadTotalMultiplier');
    Timeouts.WriteTotalConstant := Reg.ReadInteger('Timeouts.WriteTotalConstant');
    Timeouts.WriteTotalMultiplier := Reg.ReadInteger('Timeouts.WriteTotalMultiplier');
  end;
end;
procedure SetRegistry(Reg: TRegistry; Key: string; Name: string);
var
  I: Integer;
  Temp: string;
begin
  I := Pos('\', Key);
  if I > 0 then
  begin
    Temp := Copy(Key, 1, I - 1);
    if UpperCase(Temp) = 'HKEY_LOCAL_MACHINE' then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      if UpperCase(Temp) = 'HKEY_CURRENT_USER' then
        Reg.RootKey := HKEY_CURRENT_USER;
    Key := Copy(Key, I + 1, Length(Key) - I);
    if Key[Length(Key)] <> '\' then
      Key := Key + '\';
    Key := Key + Name;
    Reg.OpenKey(Key, True);
  end;
end;
procedure TSuperBina.StoreSettings(StoreType: TStoreType; StoreTo: string);
var
  IniFile: TIniFile;
  Reg: TRegistry;
begin
  try
    if StoreType = stRegistry then
    begin
      Reg := TRegistry.Create;
      try
        SetRegistry(Reg, StoreTo, Name);
        StoreRegistry(Reg);
      finally
        Reg.Free;
      end
    end else
    begin
      IniFile := TIniFile.Create(StoreTo);
      try
        StoreIniFile(IniFile);
      finally
        IniFile.Free;
      end
    end;
  except
    raise ESuperBina.CreateNoWinCode(CError_StoreFailed);
  end;
end;

procedure TSuperBina.LoadSettings(StoreType: TStoreType; LoadFrom: string);
var
  IniFile: TIniFile;
  Reg: TRegistry;
begin
  BeginUpdate;
  try
    try
      if StoreType = stRegistry then
      begin
        Reg := TRegistry.Create;
        try
          SetRegistry(Reg, LoadFrom, Name);
          LoadRegistry(Reg);
        finally
          Reg.Free;
        end
      end else
      begin
        IniFile := TIniFile.Create(LoadFrom);
        try
          LoadIniFile(IniFile);
        finally
          IniFile.Free;
        end
      end;
    finally
      EndUpdate;
    end;
  except
    raise ESuperBina.CreateNoWinCode(CError_LoadFailed);
  end;
end;

procedure TSuperBina.DoInicialize;
begin
  if Assigned(FOnInicialize) then
    FOnInicialize(Self);
end;


procedure TSuperBina.DoDTMF(Count: Integer);
begin
  if Assigned(FOnDTMF) then
    FOnDTMF(Self, Count);
end;

procedure TSuperBina.CheckSignals(Open: Boolean);
begin
  if Open then
  begin
  end else
  begin
  end;
end;

procedure TSuperBina.CallInicialize;
begin
  DoInicialize;
  CheckSignals(True);
end;

procedure TSuperBina.CallDTMF;
var
  Count: Integer;

  procedure PerformRead(var P: Pointer);
  begin
    GetMem(P, Count);
    Read(P^, Count);
  end;

  procedure CheckLinks;
  {$WARNINGS OFF}
  var
    P: Pointer;
    ReadFromBuffer: Boolean;
  begin
    if (Count > 0) and (not TriggersOnDTMF) then
    begin
      ReadFromBuffer := False;
      try
        if (not ReadFromBuffer) and (not FTriggersOnDTMF) then
        begin
          ReadFromBuffer := True;
          PerformRead(P);
        end;
      finally
        if ReadFromBuffer then
        begin
          FreeMem(P);
          Count := 0;
        end;
      end;
    end;
  end;

begin
  Count := InputCount;
  if Count > 0 then
  CheckLinks;
  if Count > 0 then
    DoDTMF(Count);
end;


procedure TSuperBina.SetConectado(const Value: Boolean);
begin
  if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
  begin
    if Value <> FConectado then
      if Value then
        Open
      else
        Close;
  end
  else
    FConectado := Value;
end;

procedure TSuperBina.SetBaudRate(const Value: TBaudRate);
begin
  if Value <> FBaudRate then
  begin
    FBaudRate := Value;
    ApplyDCB;
  end;
end;

procedure TSuperBina.SetCustomBaudRate(const Value: Integer);
begin
  if Value <> FCustomBaudRate then
  begin
    FCustomBaudRate := Value;
    ApplyDCB;
  end;
end;

procedure TSuperBina.SetDataBits(const Value: TDataBits);
begin
  if Value <> FDataBits then
  begin
    FDataBits := Value;
    ApplyDCB;
  end;
end;

procedure TSuperBina.SetPort(const Value: TPorta);
begin
  if Value <> FPort then
  begin
    FPort := Value;
    if FConectado and not ((csDesigning in ComponentState) or
      (csLoading in ComponentState)) then
    begin
      Close;
      Open;
    end;
  end;
end;

procedure TSuperBina.SetStopBits(const Value: TStopBits);
begin
  if Value <> FStopBits then
  begin
    FStopBits := Value;
    ApplyDCB;
  end;
end;

procedure TSuperBina.SetSyncMethod(const Value: TSyncMethod);
begin
  if Value <> FSyncMethod then
  begin
    if FConectado and not ((csDesigning in ComponentState) or
      (csLoading in ComponentState))
    then
      raise ESuperBina.CreateNoWinCode(CError_SyncMeth)
    else
      FSyncMethod := Value;
  end;
end;

procedure TSuperBina.SetTriggersOnDTMF(const Value: Boolean);
begin
  if FHasLink then
    raise ESuperBina.CreateNoWinCode(CError_HasLink);
  FTriggersOnDTMF := Value;
end;

function TSuperBina.GetTriggersOnDTMF: Boolean;
begin
  Result := FTriggersOnDTMF and (not FHasLink);
end;

procedure TSuperBina.SetTimeouts(const Value: TComTimeouts);
begin
  FTimeouts.Assign(Value);
  ApplyTimeouts;
end;


constructor TComDataPacket.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FComLink := TComLink.Create;
  FMaxBufferSize := 1024;
end;

destructor TComDataPacket.Destroy;
begin
  ComPort := nil;
  FComLink.Free;
  inherited Destroy;
end;

procedure TComDataPacket.AddData(const Str: string);
begin
  if ValidStop then
  begin
    Buffer := Buffer + Str;
    HandleBuffer;
  end
  else
    DoPacket(Str);
end;

procedure TComDataPacket.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FSuperBina) and (Operation = opRemove) then
    ComPort := nil;
end;

procedure TComDataPacket.DoDiscard(const Str: string);
begin
  if Assigned(FOnDiscard) then
    FOnDiscard(Self, Str);
end;

procedure TComDataPacket.DoPacket(const Str: string);
begin
  if Assigned(FOnPacket) then
    FOnPacket(Self, Str);
end;

procedure TComDataPacket.DoCustomStart(const Str: string;
  var Pos: Integer);
begin
  if Assigned(FOnCustomStart) then
    FOnCustomStart(Self, Str, Pos);
end;

procedure TComDataPacket.DoCustomStop(const Str: string; var Pos: Integer);
begin
  if Assigned(FOnCustomStop) then
    FOnCustomStop(Self, Str, Pos);
end;

procedure TComDataPacket.CheckIncludeStrings(var Str: string);
var
  LenStart, LenStop: Integer;
begin
  if FIncludeStrings then
    Exit;
  LenStart := Length(FStartString);
  LenStop := Length(FStopString);
  if Pos(Upper(FStartString), Upper(Str)) = 1 then
    Str := Copy(Str, LenStart + 1, Length(Str) - LenStart);
  if Pos(Upper(FStopString), Upper(Str)) = (Length(Str) - LenStop + 1) then
    Str := Copy(Str, 1, Length(Str) - LenStop);
end;

function TComDataPacket.Upper(const Str: string): string;
begin
  if FCaseInsensitive then
    Result := UpperCase(Str)
  else
    Result := Str;
end;

procedure TComDataPacket.HandleBuffer;

  procedure DiscardPacketToPos(Pos: Integer);
  var
    Str: string;
  begin
    FInPacket := True;
    if Pos > 1 then
    begin
      Str := Copy(Buffer, 1, Pos - 1);
      Buffer := Copy(Buffer, Pos, Length(Buffer) - Pos + 1);
      DoDiscard(Str);
    end;
  end;

  procedure FormPacket(CutSize: Integer);
  var
    Str: string;
  begin
    Str := Copy(Buffer, 1, CutSize);
    Buffer := Copy(Buffer, CutSize + 1, Length(Buffer) - CutSize);
    CheckIncludeStrings(Str);
    DoPacket(Str);
  end;

  procedure StartPacket;
  var
    Found: Integer;
  begin
    Found := -1;
    DoCustomStart(Buffer, Found);
    if Found > 0 then
      DiscardPacketToPos(Found);
    if Found = -1 then
    begin
      if Length(FStartString) > 0 then
       begin
        Found := Pos(Upper(FStartString), Upper(Buffer));
        if Found > 0 then
          DiscardPacketToPos(Found);
      end
      else
        FInPacket := True;
    end;
  end;

  procedure EndPacket;
  var
    Found, CutSize, Len: Integer;
  begin
    Found := -1;
    DoCustomStop(Buffer, Found);
    if Found > 0 then
    begin
      CutSize := Found;
      FInPacket := False;
    end
    else
      if Found = -1 then
      begin
        Len := Length(Buffer);
        if (FSize > 0) and (Len >= FSize) then
        begin
          FInPacket := False;
          CutSize := FSize;
        end
        else
        begin
          Len := Length(FStartString);
          Found := Pos(Upper(FStopString),
            Upper(Copy(Buffer, Len + 1, Length(Buffer) - Len)));
          if Found > 0 then
          begin
            CutSize := Found + Length(FStopString) + Len - 1;
            FInPacket := False;
          end;
        end;
      end;
    if not FInPacket then
      FormPacket(CutSize);
  end;

  function IsBufferTooLarge: Boolean;
  begin
    Result := (Length(Buffer) >= FMaxBufferSize) and (FMaxBufferSize > 0);
  end;

begin
  try
    if not FInPacket then
      StartPacket;
    if FInPacket then
    begin
      EndPacket;
      if not FInPacket then
        HandleBuffer;
    end;
  finally
    if IsBufferTooLarge then
      EmptyBuffer;
  end;
end;

function TComDataPacket.ValidStop: Boolean;
begin
  Result := (FSize > 0) or (Length(FStopString) > 0)
    or (Assigned(FOnCustomStop));
end;
procedure TComDataPacket.EmptyBuffer;
begin
  if Buffer <> '' then
  begin
    try
      DoDiscard(Buffer);
    finally
      Buffer := '';
      FInPacket := False;
    end;
  end;
end;

procedure TComDataPacket.SeTSuperBina(const Value: TSuperBina);
begin
  if Value <> FSuperBina then
  begin
    if FSuperBina <> nil then
    FSuperBina := Value;
    if FSuperBina <> nil then
    begin
      FSuperBina.FreeNotification(Self);
    end;
  end;
end;

procedure TComDataPacket.SetCaseInsensitive(const Value: Boolean);
begin
  if FCaseInsensitive <> Value then
  begin
    FCaseInsensitive := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;
procedure TComDataPacket.SetSize(const Value: Integer);
begin
  if FSize <> Value then
  begin
    FSize := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

procedure TComDataPacket.SetStartString(const Value: string);
begin
  if FStartString <> Value then
  begin
    FStartString := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

procedure TComDataPacket.SetStopString(const Value: string);
begin
  if FStopString <> Value then
  begin
    FStopString := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

constructor ESuperBina.Create(ACode: Integer; AWinCode: Integer);
begin
  FWinCode := AWinCode;
  FCode := ACode;
  inherited CreateFmt(BinaMsgErro[ACode] + ' (win error code: %d)', [AWinCode]);
end;

constructor ESuperBina.CreateNoWinCode(ACode: Integer);
begin
  FWinCode := -1;
  FCode := ACode;
  inherited Create(BinaMsgErro[ACode]);
end;

procedure InitAsync(var AsyncPtr: PAsync);
begin
  New(AsyncPtr);
  with AsyncPtr^ do
  begin
    FillChar(Overlapped, SizeOf(TOverlapped), 0);
    Overlapped.hEvent := CreateEvent(nil, True, True, nil);
    Data := nil;
    Size := 0;
  end;
end;

procedure DoneAsync(var AsyncPtr: PAsync);
begin
  with AsyncPtr^ do
  begin
    CloseHandle(Overlapped.hEvent);
    if Data <> nil then
      FreeMem(Data);
  end;
  Dispose(AsyncPtr);
  AsyncPtr := nil;
end;
procedure EnumComPorts(Ports: TStrings);
var
  I  : Integer;
  TmpPorts: TStringList;
begin
  Ports.Clear;
  with TRegistry.Create do
    try
      TmpPorts := TStringList.Create;
{$IFDEF DELPHI_5_OR_HIGHER}
      Access := KEY_READ;
{$ENDIF}
      RootKey := HKEY_LOCAL_MACHINE;
      if OpenKey('HARDWARE\DEVICEMAP\SERIALCOMM', False) then
      begin
        GetValueNames(TmpPorts);
        for I := 0 to TmpPorts.Count - 1 do
          TmpPorts[I] := ReadString(TmpPorts[I]);
        TmpPorts.Sort;
        Ports.Assign(TmpPorts);
        TmpPorts.Free;
      end;
    finally
      Free;
    end;
end;

function StrToBaudRate(Str: string): TBaudRate;
var
  I: TBaudRate;
begin
  I := Low(TBaudRate);
  while (I <= High(TBaudRate)) do
  begin
    if UpperCase(Str) = UpperCase(BaudRateToStr(TBaudRate(I))) then
      Break;
    I := Succ(I);
  end;
  if I > High(TBaudRate) then
    Result := br2400
  else
    Result := I;
end;

function StrToStopBits(Str: string): TStopBits;
var
  I: TStopBits;
begin
  I := Low(TStopBits);
  while (I <= High(TStopBits)) do
  begin
    if UpperCase(Str) = UpperCase(StopBitsToStr(TStopBits(I))) then
      Break;
    I := Succ(I);
  end;
  if I > High(TStopBits) then
    Result := sbOneStopBit
  else
    Result := I;
end;

function StrToDataBits(Str: string): TDataBits;
var
  I: TDataBits;
begin
  I := Low(TDataBits);
  while (I <= High(TDataBits)) do
  begin
    if UpperCase(Str) = UpperCase(DataBitsToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TDataBits) then
    Result := dbEight
  else
    Result := I;
end;

function BaudRateToStr(BaudRate: TBaudRate): string;
const
  BaudRateStrings: array[TBaudRate] of string = ('Custom','2400');
begin
  Result := BaudRateStrings[BaudRate];
end;

function StopBitsToStr(StopBits: TStopBits): string;
const
StopBitsStrings: array[TStopBits] of string = ('1', '1.5', '2');
begin
  Result := StopBitsStrings[StopBits];
end;

function DataBitsToStr(DataBits: TDataBits): string;
const
  DataBitsStrings: array[TDataBits] of string = ('5', '6', '7', '8');
begin
  Result := DataBitsStrings[DataBits];
end;

procedure Register;
begin
  RegisterComponents('SiBel', [TspBina]);
end;


{ Como deu pra perceber, O SuperBina não acrescenta nada mais além
daquilo que já sabemos. Conclusão, usando o resistor e enviando os comando de inicialização
descrito aquí, qualquer componente manipulador de Portas de Comunicação
poderá ser transformado em um Pontente BINA Brasileiro....


Lembre-se:
Os caracteres; 'C','D','#' e '*', finaliza a detecção. Use-os para
finalizar um sistema de auto atendimento.


}


end.

