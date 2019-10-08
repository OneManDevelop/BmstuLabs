program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  arrt1 = array [1 .. 50] of real;

var
  a: arrt1;
  i, n: byte;
  min, max: real;

begin
  writeln('Enter arr size(>0 and <=50)');
  readln(n);
  if n <= 50 then
  begin

    writeln('Enter all A[i], each in new string');
    readln(a[1]);
    max := a[1];
    min := a[1];
    for i := 2 to n do
    begin
      readln(a[i]);
      if (a[i] < min) then
        min := a[i];
      if (a[i] > max) then
        max := a[i];
    end;
    writeln('Array: ');
    for i := 1 to n do
      write(a[i]:6:2, ', ');
    writeln;
    writeln('Raznost min and max= ', (max - min):6:3);
    readln;
  end
  else
    writeln('n>50');
  readln;

end.
