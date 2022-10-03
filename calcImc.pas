unit calcImc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfmrImc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtpeso: TEdit;
    edtaltura: TEdit;
    btnCalcular: TButton;
    btnlimpar: TButton;
    memoresult: TMemo;
    bntVoltar: TSpeedButton;
    Label4: TLabel;

    procedure btnCalcularClick(Sender: TObject);
    procedure btnlimparClick(Sender: TObject);
    procedure bntVoltarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fmrImc: TfmrImc;

implementation

{$R *.dfm}


procedure TfmrImc.btnCalcularClick(Sender: TObject);
var peso, altura, imc: double;
begin
      if (edtpeso.Text = '') or (edtaltura.Text = '') then

begin
   Application.MessageBox('Valores Incompletos, Por favor digite!', ' Atenção', MB_OK);
 end
 else

 begin

      altura := StrToFloat(edtaltura.Text);
      peso := StrToFloat(edtpeso.Text);

      imc := 0;

      imc := peso/(altura*altura);

      if imc < 20 then
        begin
          Application.MessageBox('Você está abaixo do peso ideal', ' Dados Coletados e Calculados', MB_OK);
          memoresult.Lines.Add('Você está abaixo do peso ideal, Agende um Nutricionista :p');
        end

      else if (imc >= 20) and (imc <= 24) then

        begin
          Application.MessageBox('Você está no peso ideal', ' Dados Coletados e Calculados', MB_OK);
          memoresult.Lines.Add('Você está no Peso Ideal, Parábens ;)');
        end

      else if imc > 24 then
        begin
          Application.MessageBox('Você está acima do peso ideal', ' Dados Coletados e Calculados', MB_OK);
          memoresult.Lines.Add('Você está acima do peso ideal, Agende um Nutricionista :(');
        end;
 end;
 end;
 procedure TfmrImc.btnlimparClick(Sender: TObject);
 begin
   edtpeso.Clear;
   edtaltura.Clear;
   memoresult.clear;
 end;

 procedure TfmrImc.bntVoltarClick(Sender: TObject);
begin
  fmrImc.Close;
end;
end.
