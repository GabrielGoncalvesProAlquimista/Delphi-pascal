library BMPProp;
{********************************************************************}
{**  Library : BMPProp                                             **}
{**                                                                **}
{**  Description : This DLL contains a Windows 95 shell extension  **}
{**  to display the properties of a BMP.                           **}
{**                                                                **}
{**  This module contains the neccessary entry points for a COM    **}
{**  object. CLSID = AA6A37C0-04F9-11D0-8AFB-00C0DF44273F          **}
{**                                                                **}
{**  By Warren Young.                                              **}
{********************************************************************}
uses
  SysUtils,
  Classes,
  ComServ,
  ComObj,
  ShlObj,
//  Registry,
  Windows,
  Properties in 'Properties.pas',
  BMPPageProc in 'BMPPageProc.pas',
  Global in 'Global.pas',
  resource in 'Resource.pas';


{********************************************************************}
{**  Module Information                                            **}
{********************************************************************}
{$D BMP Properties Shell Extension}

{$R BMPProperties.res} { resource include }

{********************************************************************}
{**  Function : DllRegisterServer                                  **}
{**                                                                **}
{**  Description : This function tries to register the shell       **}
{**  extension into the Paint.Picture's list of shell extensions   **}
{********************************************************************}
function DllRegisterServer:HResult;
begin
  Result:=S_OK;
end;


{********************************************************************}
{**  Function : DllUnregisterServer                                **}
{**                                                                **}
{**  Description : This function tries to unregister the shell     **}
{**  extension from the Paint.Picture's list of shell extensions   **}
{********************************************************************}
function DllUnregisterServer:HResult;
begin
  Result:=S_OK;
end;

exports
  DllGetClassObject resident,
  DllCanUnloadNow resident,
  DllRegisterServer resident,
  DllUnregisterServer resident;

begin
end.
