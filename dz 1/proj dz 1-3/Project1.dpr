program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  x, leftside: real;
  eps: double;

begin
  writeln('Enter X, Eps');
  readln(x, eps);
  leftside := sqr(sin(x)) + sqr(cos(x));

  if (abs(leftside - 1) < eps) then
    writeln('sin^2(x)+cos^2(x) equals 1')
  else
    writeln('sin^2(x)+cos^2(x) DOES NOT equal 1');

  readln;

end.
