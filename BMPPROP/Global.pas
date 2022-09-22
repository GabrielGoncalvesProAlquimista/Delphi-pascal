unit Global;
{********************************************************************}
{**  Unit : Global                                                 **}
{**                                                                **}
{**  Description : Global variables and constants use in the shell **}
{**  extension. In particular it contains the refernce count for   **}
{**  the DLL and it's CLSID definition.                            **}
{**                                                                **}
{**                                       **}
{********************************************************************}
interface

{** The Class ID(CLSID) for the Shell Extension **}
const

{** The reference count for the DLL - when this is zero we unload the DLL **}
  RefThisDLL : longint = 0;

implementation

end.
