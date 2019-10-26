program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

  var i,n,a:integer;
  f,g: file of integer;

begin
  writeln('Enter number of integer nums');
  readln(n);
  if (n>0) then
  begin
  AssignFile(f,'f.pas');
  AssignFile(g,'g.pas');
  ReWrite(f);
  ReWrite(g);

  writeln('Enter nums');

  for i := 1 to n do
    begin
      readln(a);
      write(f,a);
    end;
  reset(f);
  while not Eof(f) do
    begin
      read(f,a);
      if (a mod 2 = 0) then
       write(g,a);
    end;
  reset(f);
  writeln('f.pas: ');
  while not Eof(f) do
    begin
      read(f,a);
      write(a,' ');
    end;
  reset(g);
  writeln;
  writeln('g.pas: ');
  while not Eof(g) do
    begin
      read(g,a);
      write(a,' ');
    end;

  closeFile(f);
  closeFile(g);
  end

  else
   writeln('error: n<0');

readln;
end.
