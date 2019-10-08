program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  x, xc: integer;
  ch: byte;

begin
  writeln('Enter X');
  readln(x);
  xc := x;
  ch := 0;
  { if xc = 0 then
    ch := 1; { 0-четное число }
  if xc=0 then ch:=1;
  while xc <> 0 do
  begin
  if((xc mod 2) = 0) then
      ch := ch + 1;
    xc := xc div 10;
  end;
  writeln('V chisle ', x, ' chetnih cifr: ', ch);
  readln;

end.
