program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  x, xc: integer;
  ch,n,i: byte;

begin
  writeln('Enter X');
  readln(x);
  writeln('Vvedite dlinu chisla');
  readln(n);
  xc := x;
  ch := 0;
  { if xc = 0 then
    ch := 1; { 0-четное число }
  
  for I := 1 to n do
  begin
    if ((x mod 2) = 0) then ch:=ch+1;
  x:=x div 10;
  end;
  writeln('V chisle ', x, ' chetnih cifr: ', ch);
  readln;

end.
