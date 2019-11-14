unit Unit4;

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

  TForm4 = class(TForm)
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
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  f: file of zap;
  z: zap;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  c: integer;
  fam: string[22];
begin
  c := 1;
  fam := Edit1.text;
  while not eof(f) do
  begin
    read(f, z);
    if fam = z.fam then
    begin
      c := 0;
      Edit2.text := z.name;
      Edit3.text := z.fon;
      Edit4.text := z.adr;
      break;
    end;
  end;
  if c <> 0 then
  begin
    Edit3.text := 'Нет данных';
  end;
  reset(f);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  closefile(f);
  self.hide;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
  Edit1.clear;
  Edit2.clear;
  Edit3.clear;
  Edit4.clear;
end;

end.
