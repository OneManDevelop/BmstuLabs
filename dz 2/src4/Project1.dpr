program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  LabLib1;

function fx1(x: real): real;
begin
  result := (x - 1) / (x + 2);
end;

function fx2(x: real): real;
begin
  result := sin((x / 2) - 1); {abs(x-0.3) to check}
end;

var
  minx1, maxx1, minx2, maxx2: real;

begin
  minmax(fx1, 0, 2, 0.01, minx1, maxx1);
  minmax(fx2, -1, 1, 0.01, minx2, maxx2);
  writeln('x of min (x - 1) / (x + 2): ', minx1:6:2, ' x of max: ', maxx1:6:2);
  writeln('x of min sin((x / 2) - 1): ', minx2:6:2, ' x of max: ', maxx2:6:2);
  readln;

end.
