unit untVal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask;

type
  TfrmValidador = class(TForm)
    btnVerificar: TSpeedButton;
    btnLimpar: TSpeedButton;
    Label1: TLabel;
    radTipoDoc: TRadioGroup;
    btnVoltar: TSpeedButton;
    edtDoc: TMaskEdit;
    procedure btnLimparClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure radTipoDocClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);

  private
    { Private declarations }
    function isCPF(CPF : string) : boolean;
    function isCNPJ(CNPJ : string) : boolean;
  public
    { Public declarations }
  end;

var
  frmValidador: TfrmValidador;

implementation

{$R *.dfm}



procedure TfrmValidador.btnLimparClick(Sender: TObject);
begin
  edtDoc.Clear;
  edtDoc.SetFocus;
end;

procedure TfrmValidador.btnVerificarClick(Sender: TObject);
   //var EditMask,CPF,CNPJ : Double;
begin
if (radTipoDoc.ItemIndex = 0) then


  begin
   if (isCPF(edtDoc.Text)) then
      application.MessageBox('CPF Válido!!!', 'Verificar', MB_ICONINFORMATION)
    else
      application.MessageBox('CPF Inválido!!!', 'Verificar', MB_ICONWARNING)
  end
  else

  begin
    if (isCNPJ(edtDoc.Text)) then
      application.MessageBox('CNPJ válido!!!', 'Verificar', MB_ICONINFORMATION)
    else
      application.MessageBox('CNPJ Inválido!!!', 'Verificar', MB_ICONWARNING)
  end;
end;

procedure TfrmValidador.btnVoltarClick(Sender: TObject);
begin
 frmValidador.Close;
end;



procedure TfrmValidador.radTipoDocClick(Sender: TObject);
begin
if (radTipoDoc.ItemIndex = 0) then
  edtDoc.EditMask := '999.999.999-99;0;_'
  else
   edtdoc.EditMask := '99.999.999/9999-99;0;_';
end;


function TfrmValidador.isCPF(CPF : string): boolean;
var d10, d11 : string;
    s, i, r, p : integer;
begin
  if (length(CPF) <> 11) then
  begin
    result := false;
    exit;
  end;
  try
    s := 0;
    p := 10;
    for i := 1 to 9 do
    begin
      s := s + (StrToInt(CPF[i]) * p);
      p := p - 1;
    end;
    r := s mod 11;
    if (r < 2) then
      d10 := '0'
    else
      d10 := IntToStr(11 - r);
    // Valida o digito 10
    if (CPF[10] <> d10) then
    begin
      result := false;
      exit;
    end;

    s := 0;
    p := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * p);
      p := p - 1;
    end;
    r := s mod 11;
    if (r < 2) then
      d11 := '0'
    else
      d11 := IntToStr(11 - r);

    if (CPF[11] = d11) then
      result := true
    else
      result := false;

  except
    result := false;
  end;
end;

    function TfrmValidador.isCNPJ(CNPJ : string): boolean;
      var d13, d14 : string;
    s, i, r, p : integer;
begin
  if (length(CNPJ) <> 14) then
  begin
    result := false;
    exit;
  end;
  try
    s := 0;
    p := 5;
    for i := 1 to 12 do
    begin
      s := s + (StrToInt(CNPJ[i]) * p);
      p := p - 1;
      if (p = 1) then p := 9;
    end;
    r := s mod 11;
    if (r < 2) then
      d13 := '0'
    else
      d13 := IntToStr(11 - r);
    // Valida o digito 13
    if (CNPJ[13] <> d13) then
    begin
      result := false;
      exit;
    end;

    s := 0;
    p := 6;
    for i := 1 to 13 do
    begin
      s := s + (StrToInt(CNPJ[i]) * p);
      p := p - 1;
      if (p = 1) then p := 9;
    end;
    r := s mod 11;
    if (r < 2) then
      d14 := '0'
    else
      d14 := IntToStr(11 - r);

    if (CNPJ[14] = d14) then
      result := true
    else
      result := false;

  except
    result := false;
  end;
end;

end.
