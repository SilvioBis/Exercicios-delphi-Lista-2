unit untImpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmNumimpar = class(TForm)
    memoresult: TMemo;
    btngerar: TBitBtn;
    btnlimpar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure btngerarClick(Sender: TObject);
    procedure btnlimparClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNumimpar: TfrmNumimpar;

implementation

{$R *.dfm}

procedure TfrmNumimpar.btngerarClick(Sender: TObject);
begin
var num1, num2, resImpar, i, ii: integer;
begin

      ii := 101;

      for i := 1 to 50 do
        begin
           memoresult.Lines.Add(IntToStr(i) + '° Valor = ' + IntToStr(ii));
           ii := ii + 2;
        end;
end;
 end;
procedure TfrmNumimpar.btnlimparClick(Sender: TObject);
begin
  memoresult.Clear;
end;

procedure TfrmNumimpar.SpeedButton1Click(Sender: TObject);
begin
  frmNumImpar.Close;
end;

end.
