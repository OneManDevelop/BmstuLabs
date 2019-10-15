program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

type
  arr = array [1 .. 50] of real;

var
  a: arr;
  n, i, g: byte;
  target: real;

begin
  writeln('Enter array size in (0;50]');
  readln(n);
  if ((n <= 0) or (n >= 50)) then
    writeln('n not in (0;50]')
  else
  begin
    writeln('Enter array, each element in new string');
    for i := 1 to n do
      readln(a[i]);

    writeln;
    writeln('Not sorted array: ');
    for i := 1 to n do
      write(a[i]:6:2, ' ');

    for i := 1 to n do
    begin
      target := a[i];
      g := i - 1;
      while ((g >= 1) and ((abs(target)) < (abs(a[g])))) do
      begin
        a[g + 1] := a[g];
        g := g - 1;
      end;

      a[g + 1] := target;
    end;

    writeln;
    writeln('Sorted array: ');
    for i := 1 to n do
      write(a[i]:6:2, ' ');

  end;

  readln;

end.
