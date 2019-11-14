unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  zap = record
    fam: string[22]; { Фамилия }
    name: string[22]; { Имя }
    fon: string[22]; { Телефон }
    adr: string[22]; { Адрес }
  end;

  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  f: file of zap;
  z: zap;
  size: integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  z.fam := Edit1.text;
  z.name := Edit2.text;
  z.fon := Edit3.text;
  z.adr := Edit4.text;
  Edit1.clear;
  Edit2.clear;
  Edit3.clear;
  Edit4.clear;
  AssignFile(f, 'telefon.dat');
{$I-} Reset(f); {$I+}
  if ioresult = 0 then
  begin
    size := FileSize(f);
    seek(f, size);
  end
  else
    rewrite(f);
  write(f, z);
  Edit1.setfocus;

end;

procedure TForm2.Button2Click(Sender: TObject);
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
  closefile(f);
  self.hide;
end;

end.
