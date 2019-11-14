unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2, Unit4;

type
  zap = record
    fam: string[22]; { Фамилия }
    name: string[22]; { Имя }
    fon: string[22]; { Телефон }
    adr: string[22]; { Адрес }
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f: file of zap;
  z: zap;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  size: integer;
begin
  AssignFile(f, 'telefon.dat');
{$I-} Reset(f); {$I+}
  if ioresult = 0 then
  begin
    size := FileSize(f);
    seek(f, size);
  end
  else
    rewrite(f);
  Form2.Show;
  Form2.edit1.setfocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AssignFile(f, 'telefon.dat');
  Reset(f);
  form4.Show;
  form4.edit1.setfocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;

end;

end.
