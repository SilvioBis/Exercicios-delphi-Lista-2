unit untVal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmValidador = class(TForm)
    btnVerificar: TSpeedButton;
    btnLimpar: TSpeedButton;
    edtDoc: TEdit;
    Label1: TLabel;
    radTipoDoc: TRadioGroup;
    btnVoltar: TSpeedButton;
    procedure btnLimparClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure radTipoDocClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
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
   var EditMask,CPF,CNPJ : Double;
begin
if (radTipoDoc.ItemIndex = 0) then


  begin
   // if (iscpf(edtDoc.Text)) then
      application.MessageBox('CPF Válido!!!', 'Verificar', MB_ICONINFORMATION)
   // else
    //  application.MessageBox('CPF Inválido!!!', 'Verificar', MB_ICONWARNING)
  end
  else

  begin
   // if (iscnpj(edtDoc.Text)) then
      application.MessageBox('CNPJ válido!!!', 'Verificar', MB_ICONINFORMATION)
   // else
     // application.MessageBox('CNPJ Inválido!!!', 'Verificar', MB_ICONWARNING)
  end;
end;

procedure TfrmValidador.btnVoltarClick(Sender: TObject);
begin
 frmValidador.Close;
end;

procedure TfrmValidador.radTipoDocClick(Sender: TObject);
begin
if (radTipoDoc.ItemIndex = 0) then
  //  edtDoc.EditMask := '999.999.999-99;0;_'
  else
   // edtdoc.EditMask := '99.999.999/9999-99;0;_';
end;

end.
