program Exercicios;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {fmrPrincipal},
  calcImc in 'calcImc.pas' {fmrImc},
  untImpar in 'untImpar.pas' {frmNumimpar},
  untPositivos in 'untPositivos.pas' {frmPositivo},
  untVal in 'untVal.pas' {frmValidador},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfmrPrincipal, fmrPrincipal);
  Application.CreateForm(TfmrImc, fmrImc);
  Application.CreateForm(TfrmNumimpar, frmNumimpar);
  Application.CreateForm(TfrmPositivo, frmPositivo);
  Application.CreateForm(TfrmValidador, frmValidador);
  Application.Run;
end.
