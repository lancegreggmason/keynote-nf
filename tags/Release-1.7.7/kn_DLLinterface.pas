unit kn_DLLinterface;
(* ************************************************************
 KEYNOTE: MOZILLA PUBLIC LICENSE STATEMENT.
 -----------------------------------------------------------
 The contents of this file are subject to the Mozilla Public
 License Version 1.1 (the "License"); you may not use this file
 except in compliance with the License. You may obtain a copy of
 the License at http://www.mozilla.org/MPL/

 Software distributed under the License is distributed on an "AS
 IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
 implied. See the License for the specific language governing
 rights and limitations under the License.

 The Original Code is KeyNote 1.0.

 The Initial Developer of the Original Code is Marek Jedlinski
 <eristic@lodz.pdi.net> (Poland).
 Portions created by Marek Jedlinski are
 Copyright (C) 2000, 2001. All Rights Reserved.
 -----------------------------------------------------------
 Contributor(s):
 -----------------------------------------------------------
 History:
 -----------------------------------------------------------
 Released: 30 June 2001
 -----------------------------------------------------------
 URLs:

 - for OpenSource development:
 http://keynote.sourceforge.net

************************************************************ *)

interface
uses Windows, Menus, Classes, kn_Const, kn_Info;

type
  TDllProc = (
    dllCustomizeKeyboard  );



type
  TFilenameBuffer = array[0..512] of char;

type
  DlgCustomizeKeyboardProc = function(
    AppHandle : HWND;
    KBD_FN : PChar;
    KeyList : TList;
    ActivationHotkey : TShortCut
  ) : boolean;


  (*
  DlgAboutKeyNoteProc = procedure(
    AppHandle : HWND
  );
  *)

  ConvertHTMLToRTFProc = function(
    AppHandle : HWND;
    HTMLMethod : THTMLImportMethod;
    inFileName : PChar;
    var outFileName : TFilenameBuffer;
    ConverterLocation : PChar
  ) : integer;

  ConvertRTFToHTMLProc = function(
    AppHandle : HWND;
    RTFText : PChar;
    outFileName : PChar;
    ConverterLocation : PChar
  ) : boolean;


implementation

end.
