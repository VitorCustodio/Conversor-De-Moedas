unit Unt11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image4: TImage;
    Image6: TImage;
    procedure Image1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image1Click(Sender: TObject);
begin

  // CONVERTER REAL PARA REAL/EURO/LIBRA

  if (RadioGroup1.ItemIndex = 0) AND (RadioGroup2.ItemIndex = 0) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 1);
  end
  else if (RadioGroup1.ItemIndex = 0) AND (RadioGroup2.ItemIndex = 1) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 0.23);
  end
  else if (RadioGroup1.ItemIndex = 0) AND (RadioGroup2.ItemIndex = 2) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 0.2);
  end

  // CONVERTER EURO PARA REAL/EURO/LIBRA

  else if (RadioGroup1.ItemIndex = 1) AND (RadioGroup2.ItemIndex = 0) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 4.4);
  end
  else if (RadioGroup1.ItemIndex = 1) AND (RadioGroup2.ItemIndex = 1) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 1);
  end
  else if (RadioGroup1.ItemIndex = 1) AND (RadioGroup2.ItemIndex = 2) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 0.89);
  end

  // CONVERTER LIBRA PARA REAL/EURO/LIBRA

  else if (RadioGroup1.ItemIndex = 2) AND (RadioGroup2.ItemIndex = 0) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 4.9);
  end
  else if (RadioGroup1.ItemIndex = 2) AND (RadioGroup2.ItemIndex = 1) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 1.13);
  end
  else if (RadioGroup1.ItemIndex = 2) AND (RadioGroup2.ItemIndex = 2) then
  begin
    Edit2.Text := FloatToStr(StrToFloat(Edit1.Text) * 1);
  end;

end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

  // APARECE A MOEDA "REAL"

  if RadioGroup1.ItemIndex = 0 then
  begin

    Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REAL.bmp');

  end

  // APARECE A MOEDA "EURO"

  else if RadioGroup1.ItemIndex = 1 then
  begin

    Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'EURO.bmp');

  end

  // APARECE A MOEDA "LIBRA"

  else if RadioGroup1.ItemIndex = 2 then
  begin

    Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'LIBRA.bmp');

  end;

end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin

  // APARECE A MOEDA "REAL"

  if RadioGroup2.ItemIndex = 0 then
  begin

    Image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'REAL.bmp');

  end

  // APARECE A MOEDA "EURO"

  else if RadioGroup2.ItemIndex = 1 then
  begin

    Image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'EURO.bmp');

  end

  // APARECE A MOEDA "LIBRA"

  else if RadioGroup2.ItemIndex = 2 then
  begin

    Image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'LIBRA.bmp');

  end;

end;

end.
