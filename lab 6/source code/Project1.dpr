program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

type
  gl = set of char;

var
  a, s: string;
  glas: gl;
  i, k: byte;
  c1, c2: char;
  fl: boolean;

begin
  glas := ['a', 'e', 'i', 'o', 'u'];
  writeln('Enter string');
  readln(a);
  a := LowerCase(a); { registr independence }
  k := 0;
  c1 := '.'; { if c1 or c2 won't be set in program }
  c2 := '.';

  i := 1;
  s := '';

  while (pos(' ', a) <> 0) do
    delete(a, pos(' ', a), 1);

  write('LowerCased zadannie stroki: ');

  fl := true; { new word beginning }
  while ((a[i] <> '.') and (i <= length(a))) do
  begin
    if (a[i] <> ',') then
    begin
      if fl then
      begin
        s := '';
        c1 := a[i];
        fl := false;
      end
      else
        c2 := a[i];
      s := s + a[i];
    end
    else
    begin
      if ((c1 in glas) and (c2 in glas)) then
      begin
        write(s, ' ');
        k := k + 1;
      end;
      fl := true;
    end;
    i := i + 1;

  end;

  if ((c1 in glas) and (c2 in glas)) then
  begin
    write(s, ' ');
    k := k + 1;
  end;

  writeln;

  writeln('Zadannih slov: ', k);
  readln;

end.
