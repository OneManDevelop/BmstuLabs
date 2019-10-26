program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  arr = array [1 .. 11, 1 .. 11] of real;

var
  a: arr;
  n, i, g, imin, imax: byte;
  min, max, dub: real;

begin

  writeln('Enter size of matrix in range (0;11]');
  readln(n);
  if ((n <= 0) or (n > 11)) then
    writeln('N not in (0;11]')
  else
  begin
    writeln('Enter elements(each with enter)');
    for i := 1 to n do
      for g := 1 to n do
        readln(a[i, g]);

    min := a[1, 1];
    max := a[1, 1];
    imin := 1;
    imax := 1;

    writeln;
    writeln('Inputed matrix: ');
    for i := 1 to n do
    begin
      writeln;
      for g := 1 to n do
        write(a[i, g]:6:2, ' ');
    end;

    for i := 1 to n do
      for g := 1 to n do
      begin
        if (a[i, g] > max) then
        begin
          max := a[i, g];
          imax := i;
        end;
        if (a[i, g] < min) then
        begin
          min := a[i, g];
          imin := i;
        end;
      end;

  for g := 1 to n do
  begin
    dub := a[imax, g];
    a[imax, g] := a[imin, g];
    a[imin, g] := dub;
  end;

  writeln;
  writeln('Modified matrix: ');
  for i := 1 to n do
  begin
    writeln;
    for g := 1 to n do
      write(a[i, g]:6:2, ' ');
  end;

  writeln;
  writeln('max(imax), min(imin): ', max:6:2, '(', imax, ') ', min:6:2, '(',
    imin, ')');
  end;
  readln;

end.
