program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  arr1 = array [1 .. 7, 1 .. 7] of integer;

var
  a: arr1;
  I, g, n: byte;

begin

  n := 7;

  for I := 1 to n do
  begin
    for g := 1 to n do
    begin
      randomize;

      a[I, g] := random(9);
      write(a[I, g]);
      write(' ');
    end;
    writeln;
  end;

  writeln;

  for I := 1 to n do
  begin
    for g := 1 to n - I + 1 do
    begin
      write(a[I, g]);
      write(' ');
    end;
    writeln;
  end;

  writeln;

  for I := n downto 1 do
  begin
    for g := n downto n - I + 1 do
    begin
      write(a[I, g]);
      write(' ');
    end;
    writeln;
  end;

  readln;

end.
