unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Sum: real;
  operation: char = '@';

implementation

{$R *.dfm}

procedure operate;

var
  s: string;

  code: integer;

  n: real;

begin

  s := Form1.Edit1.text; { ������ ����� �� ��������� text Edit1 }

  Form1.Edit1.clear; { ������� Edit1 }

  val(s, n, code); { ����������� ������ � ����� }

  case operation of { ��������� �������� }

    '@':
      Sum := n;

    '+':
      Sum := Sum + n;

    '-':
      Sum := Sum - n;

    '*':
      Sum := Sum * n;

    '/':
      Sum := Sum / n;

  end;

end;

procedure TForm1.Button1Click(Sender: TObject);

begin
  Edit1.clear; { �������� ���� ���������� Edit1 }

  operation := '@'; { ���������� ��������� ������� �������� � }

  Edit1.setfocus; { ���������� �������� ���� ���������� Edit1 }
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  operate; { ��������� ���������� �������� }

  operation := '+'; { ���������� ��������� "�������� +" }

  Edit1.setfocus; { ���������� �������� ���� ���������� Edit1 }
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  operate;

  operation := '*';

  Edit1.setfocus;
end;

procedure TForm1.Button4Click(Sender: TObject);

var
  s: string;

begin

  operate; { ��������� ���������� �������� }

  str(Sum: 6: 3, s); { ������������� ��������� � ������ }

  Edit1.text := s; { ������� ������ � ���� ���������� Edit1 }

  operation := '@';

  Edit1.setfocus; { ���������� ������ �� ������ Button1 }

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  operate; { ��������� ���������� �������� }

  operation := '-'; { ���������� ��������� "�������� +" }

  Edit1.setfocus; { ���������� �������� ���� ���������� Edit1 }
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  operate;

  operation := '/';

  Edit1.setfocus;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Close;
end;
