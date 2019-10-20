program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

type
  st1 = string[50];
  chrs = set of char;

var
  new: boolean;
  included, symbs: chrs;
  i, k: byte;
  a: st1;

begin

  symbs := ['#', '%', '&', '@', '*', '^'];
  included := [];
  writeln('Enter string');
  readln(a);

  i := 0;
  new := true;
  while ((a[i] <> '.') and (i < length(a))) do
  begin
    i := i + 1;
    if (a[i] = ',') then
      new := true;
    if ((new) and (a[i] in symbs)) then
    begin
      k := k + 1;
      included := included + [a[i]];
      new := false;
    end;

  end;

  if (k = 0) then
    writeln('No searching words')
  else
  begin
    writeln('Number of found words: ', k);
    write('Founded symbs: ');
    for i := 0 to 255 do
      if (chr(i) in included) then
        write(chr(i), ' ');
  end;

  readln;

end.
