program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  x, y, w, r1, r2: real;

begin
  writeln('Enter x,y,w');
  readln(x, y, w);
  r1 := x + y + w;
  r2 := x * y * w;
  if (sqr(r1) > sqr(r2)) then
  begin
    writeln('(x+y+w)^2 > (x*y*w)^2')
  end
  else
  begin
    if (sqr(r1) < sqr(r2)) then
      writeln('(x+y+w)^2 < (x*y*w)^2')
    else
      writeln('(x+y+w)^2 = (x*y*w)^2');
  end;
  readln;

end.
