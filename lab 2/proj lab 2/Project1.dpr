program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  x, y: real;

begin
  writeln('Enter x, y:');
  readln(x, y);
  if ((y <= x + 1) and (y >= -x - 1) and ((sqr(x + 1) + sqr(y)) <= 1)) then
    writeln('����� ����������� ���������� �������')
  else
    writeln('����� �� ����������� ���������� �������');
  readln;

end.
