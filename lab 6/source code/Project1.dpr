program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

type
  gl = set of char;

var
  a: string;
  glas: gl;
  i, k: byte;
  c1, c2: char;
  fl: boolean;

begin
  glas := ['a', 'e', 'i', 'o', 'u'];
  writeln('Enter string');
  readln(a);
  a := LowerCase(a);
  k := 0;

  i := 1;
  fl := true; { new word beginning }
  while (a[i] <> '.') do
  begin
    if ((a[i] <> '.') and (a[i] <> ',')) then
    begin
      if fl then
      begin
        c1 := a[i];
        fl := false;
      end
      else
        c2 := a[i];
    end
    else
    begin
      if ((c1 in glas) and (c2 in glas)) then
        k := k + 1;
      fl := true;
    end;
    i := i + 1;

  end;

  if ((c1 in glas) and (c2 in glas)) then
    k := k + 1;

  writeln('Zadannih slov: ', k);
  readln;

end.
