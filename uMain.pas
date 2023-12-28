unit uMain;

// ************************************************************************ //
// this use http://www.dneonline.com/calculator.asmx?WSDL service simple arithmetic
// only use GetCalculatorSoap() method
//
// author: Alejandro Ramirez Macias
// email: alexudg@gmail.com
// facebook: facebook.com/planetSistemas
// date: december 2023
// ide: Delphi 10 Seattle
//
// ************************************************************************ //

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  calculator, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    txtNumA: TLabeledEdit;
    txtNumB: TLabeledEdit;
    txtResult: TLabeledEdit;
    boxOperations: TRadioGroup;
    btnRequest: TButton;
    procedure btnRequestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnRequestClick(Sender: TObject);
var
  numA, numB: integer;
  calc: calculator.CalculatorSoap;
  res: integer;
begin
  if (not TryStrToInt(txtNumA.Text, numA)) then
  begin
    Exit;
  end;
  if (not TryStrToInt(txtNumB.Text, numB)) then
  begin
    Exit;
  end;
  calc := calculator.GetCalculatorSoap(true);
  case (boxOperations.ItemIndex) of
    0: // add
      res := calc.Add(numA, numB);
    1: // subtract
      res := calc.Subtract(numA, numB);
    2: // multiply
      res := calc.Multiply(numA, numB);
    3: // divide
      res := calc.Divide(numA, numB);
    else
      res := -1;
  end;
  txtResult.Text := res.ToString();
end;

begin
  Winapi.Windows.OutputDebugString(sLineBreak + 'uMain CREATED');
end.
