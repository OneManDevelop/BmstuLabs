program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  eps, y: real;
  n: integer;

begin
  writeln('¬ведите точность: ');
  readln(eps);
  n := 1;
  y := n / (sqr(n) + 2);
  while not(y <= eps) do
  begin
    n:=n+1;
    y := n / (sqr(n) + 2);
  end;
  writeln('y <= eps: ',y:20:16);
  writeln('n= ',n);
  readln;
end.
