unit untPositivos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPositivo = class(TForm)
    Label1: TLabel;
    memPositivo: TMemo;
    memNegativo: TMemo;
    btnGerar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    btnLimpar: TBitBtn;
    btnVoltar: TSpeedButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPositivo: TfrmPositivo;

implementation

{$R *.dfm}

procedure TfrmPositivo.btnGerarClick(Sender: TObject);
begin
var somaP, somaN, i: integer;
begin

  somaP := 0;
  somaN := 0;
  for i := -20 to 20 do
    begin
      if i < 0 then
      begin
        somaN := somaN + i;
        memNegativo.Lines.Add(IntToStr(i));
      end
      else
      begin
        somaP := somaP + i;
        memPositivo.Lines.Add(IntToStr(i));
      end;
    end;





end;

end;

procedure TfrmPositivo.btnLimparClick(Sender: TObject);
begin
      memNegativo.Clear;
      memPositivo.Clear;

end;

procedure TfrmPositivo.btnVoltarClick(Sender: TObject);
begin
      frmPositivo.Close;
end;

end.
