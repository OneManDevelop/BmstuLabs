program example2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
  y: real;

begin
  y := 1;
  WriteLn('�� �������������� y=', y:20:16);

  y := y / 6000;
  y := exp(y); { y = ex }
  y := sqrt(y); { ���������� ������ }
  y := y / 14;
  y := 14*y;
  y := sqr(y); { Y = y2 }
  y := ln(y);
  y := 6000 * y;
  WriteLn('����� �������������� = ', y:20:16);
  writeln('���������� ����������� =  ',#13#10,(abs(y-1) ):20:16);
  writeln('������������� ����������� =  ',#13#10,(abs(y-1) / y):20:16);
  writeln('���������� ������������� ����������� = ',(abs(y-1) / abs(y- abs(y-1) ) ):20:16 );

  readln;

end.

