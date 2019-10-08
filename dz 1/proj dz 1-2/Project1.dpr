program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  x, y1, y2, y, delta, sigma: double;

begin
  writeln('Enter X');
  readln(x);
  y1 := (exp(x) + exp(-x)) / 2;
  y2 := (exp(x) - exp(-x)) / 2;
  y := sqr(y1) - sqr(y2);
  delta := abs(y - 1);
  d
  writeln('y1,y2,y : ', y1:28:20, ' ', y2:28:20, ' ', y:28:20);
  writeln('абсолютная погрешность: ', delta:22:20);
  writeln('относительная погрешность: ', sigma:22:20);
  readln;

end.
