; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ConsoleApp4"
#define MyAppVersion "1.5"
#define MyAppPublisher "My Company, Inc."
#define MyAppURL "https://www.example.com/"
#define MyAppExeName "ConsoleApp4.exe"
#define MyAppAssocName "test_inno File"
#define MyAppAssocExt ".exe"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{05344CB3-FE8C-4BF2-BB5D-5E931F85FCB9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\test_inno
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=mysetup
Password=soumya
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\ConsoleApp4.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\ConsoleApp4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\ConsoleApp4.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\ConsoleApp4.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\ConsoleApp4.runtimeconfig.dev.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Choumya\source\repos\ConsoleApp4\ConsoleApp4\bin\Debug\netcoreapp3.1\ConsoleApp4.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

