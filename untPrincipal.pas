unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,calcImc;

type
  TfmrPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    ormulariosdeAtividades1: TMenuItem;
    NumerosParesempares1: TMenuItem;
    numimpar: TMenuItem;
    ndiceDeMassaCorporal1: TMenuItem;
    Sair1: TMenuItem;
    btnImc: TButton;
    btnParImpar: TButton;
    btnPositivo: TButton;
    btnVal: TButton;
    VerificarDocumento1: TMenuItem;
    Label1: TLabel;
    procedure btnImcClick(Sender: TObject);
    procedure ndiceDeMassaCorporal1Click(Sender: TObject);
    procedure numimparClick(Sender: TObject);
    procedure btnParImparClick(Sender: TObject);
    procedure btnPositivoClick(Sender: TObject);
    procedure NumerosParesempares1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnValClick(Sender: TObject);
    procedure VerificarDocumento1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fmrPrincipal: TfmrPrincipal;

implementation

{$R *.dfm}

uses untImpar, untPositivos, untVal, untCpf;



procedure TfmrPrincipal.btnImcClick(Sender: TObject);
begin
   fmrImc.ShowModal;
end;

procedure TfmrPrincipal.btnParImparClick(Sender: TObject);
begin
   frmNumimpar.ShowModal;
end;

procedure TfmrPrincipal.btnPositivoClick(Sender: TObject);
begin
  frmPositivo.Showmodal;
end;

procedure TfmrPrincipal.btnValClick(Sender: TObject);
begin
     formcpf.Showmodal;
end;

procedure TfmrPrincipal.FormCreate(Sender: TObject);
begin
      frmValidador.Showmodal;
end;

procedure TfmrPrincipal.ndiceDeMassaCorporal1Click(Sender: TObject);
begin
   fmrImc.ShowModal;
end;

procedure TfmrPrincipal.NumerosParesempares1Click(Sender: TObject);
begin
  frmPositivo.Showmodal;
end;

procedure TfmrPrincipal.numimparClick(Sender: TObject);
begin
   frmNumimpar.ShowModal;
end;

procedure TfmrPrincipal.Sair1Click(Sender: TObject);
begin
  fmrPrincipal.close
end;

procedure TfmrPrincipal.VerificarDocumento1Click(Sender: TObject);
begin
      formcpf.Showmodal;
end;

end.
