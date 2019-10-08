program example2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Var
  y: real;

begin
  y := 1;
  WriteLn('ƒо преобразований y=', y:20:16);

  y := y / 6000;
  y := exp(y); { y = ex }
  y := sqrt(y); {  вадратный корень }
  y := y / 14;
  y := 14*y;
  y := sqr(y); { Y = y2 }
  y := ln(y);
  y := 6000 * y;
  WriteLn('ѕосле преобразований = ', y:20:16);
  writeln('абсолютна€ погрешность =  ',#13#10,(abs(y-1) ):20:16);
  writeln('относительна€ погрешность =  ',#13#10,(abs(y-1) / y):20:16);
  writeln('предельна€ относительна€ погрешность = ',(abs(y-1) / abs(y- abs(y-1) ) ):20:16 );

  readln;

end.

