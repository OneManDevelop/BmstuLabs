program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function TriangleS(x1,y1,x2,y2,x3,y3:integer):real;
var v1x,v1y,v2x,v2y:integer;
begin
  v1x:=x2-x1;
  v1y:=y2-y1;
  v2x:=x3-x1;
  v2y:=y3-y1;

  {
    vectors, on whitch triangle is drown
  }

  TriangleS := abs((v1x*v2y - v2x*v1y))/2;
  {
  S as 0.5*S of parallelogramm, found as module of vectors multiplication
  |i    j  k|
  |v1x v1y 0|
  |v2x x2y 0|
   }
end;

var a1,b1,a2,b2,a3,b3,xp,yp:integer;
n,i,pIn:byte;
eps:real;

begin
 writeln('Enter  coords of triangles points x1,y1,..y3 (with spaces)');
 readln(a1,b1,a2,b2,a3,b3);
 writeln('Enter number of points');
 readln(n);
 writeln('Vvedite pogreshnost');
 readln(eps);
 if ((n <= 0) or (eps <= 0)) then
  writeln('Wrong inputs (n or eps <=0)')
 else
  begin
  pIn:=0;
  writeln('Enter points coords (each pair in new string, space in each pair)');
   for i := 1 to n do
     begin
       readln(xp,yp);
       if (abs(
       TriangleS(a1,b1,a2,b2,a3,b3)
       -TriangleS(xp,yp,a2,b2,a3,b3)
       -TriangleS(a1,b1,xp,yp,a3,b3)
       -TriangleS(a1,b1,a2,b2,xp,yp))
       <=eps) then
       pIn:=pIn+1;
     end;
     writeln('Points in triangle: ',pIn);
   end;

  readln;
end.
