;
; PlaatScore windows installer configurationm file.
;
; The file can be processed with "Inno Setup Compiler v5.3.8"
;
; All Copyrights Reserved (c) PlaatSoft 2008-2010

[Setup]
AppPublisher=PlaatSoft
AppPublisherURL=http://www.plaatsoft.nl
AppName=PlaatScore
AppVerName=PlaatSoft HighScore v1.0
AppVersion=1.0
AppCopyright=Copyright (C) 2008-2011 PlaatSoft

DefaultDirName={pf}\PlaatScore
DefaultGroupName=PlaatSoft
UninstallDisplayIcon={app}\HighScore.exe
Compression=lzma
SolidCompression=yes
OutputDir=release\

[Files]
Source: "src\release\HighScore.exe"; DestDir: "{app}"
Source: "src\release\libgcc_s_dw2-1.dll"; DestDir: "{app}"
Source: "src\release\mingwm10.dll"; DestDir: "{app}"
Source: "src\release\QtCore4.dll"; DestDir: "{app}"
Source: "src\release\QtGui4.dll"; DestDir: "{app}"
Source: "src\release\QtNetwork4.dll"; DestDir: "{app}"
Source: "src\release\QtXml4.dll"; DestDir: "{app}"
Source: "src\release\license.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\PlaatScore\PlaatScore"; Filename: "{app}\HighScore.exe"
Name: "{commondesktop}\PlaatSoft HighScore"; Filename: "{app}\HighScore.exe"
Name: "{group}\PlaatScore\Uninstaller"; Filename: "{uninstallexe}"

[Registry]
Root: HKCU; Subkey: "Software\PlaatSoft\RedSquare"; ValueName: "target"; ValueData: {app}; ValueType: string;  Flags: uninsdeletekeyifempty
Root: HKCU; Subkey: "Software\PlaatSoft\RedSquare"; ValueName: "username"; ValueData: {username}; ValueType: string;  Flags: uninsdeletekeyifempty

