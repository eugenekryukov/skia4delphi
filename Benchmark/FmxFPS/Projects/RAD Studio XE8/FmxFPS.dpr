program FmxFPS;

uses
  System.StartUpCopy,
  FMX.Forms,
  {$IFDEF SKIA}
  Skia.FMX,
  {$ENDIF}
  FmxFPS.Main in '..\..\Source\FmxFPS.Main.pas' {frmMain};

{$R *.res}

begin
  {$IFDEF SKIA}
  GlobalUseSkiaRasterWhenAvailable := False;
  GlobalUseSkia := True;
  {$ENDIF}
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
