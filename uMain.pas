unit uMain;

// ************************************************************************ //
// this use http://www.dneonline.com/calculator.asmx?WSDL service simple arithmetic
// only use GetCalculatorSoap() method
// ************************************************************************ //

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  calculator;

type
  TfrmMain = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  calc: calculator.CalculatorSoap;
  res: integer;

implementation

{$R *.dfm}

begin
  Winapi.Windows.OutputDebugString(sLineBreak + 'uMain CREATED');
  calc := calculator.GetCalculatorSoap();
  res := calc.Add(25, 6);
  Winapi.Windows.OutputDebugString(PChar(res.ToString));
end.
