program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  UchPointer = ^uchastnik;

  uchastnik = record
    fam: string;
    nxt: UchPointer;
  end;

var
  p1, p2, pst, pfn: UchPointer;
  uch1: uchastnik;
  a: string;

procedure SortList(pf: UchPointer);
var
  ptarget, buffer: UchPointer;
  sorted, swapped: boolean;
begin
  { ptarget:=pf; }
  sorted := false;
  while not sorted do
  begin
  writeln('big loop');
    sorted := true;
    ptarget^.nxt := pf;
    while (ptarget^.nxt <> nil) do
    begin
      writeln('small loop');
      swapped := false;
      if (ptarget^.nxt^.fam > ptarget^.nxt^.nxt^.fam) then
      begin
      writeln('swap');
        sorted := false;
        buffer := ptarget^.nxt;
        ptarget^.nxt := ptarget^.nxt^.nxt;
        ptarget^.nxt^.nxt := buffer;
        swapped := true;
      end;
      if not swapped then
        ptarget := ptarget^.nxt;
      { depends from swapping maybe }
    end;

  end;

end;

begin
  writeln('Enter surnames');
  readln(a);
  new(pst);
  pst^.fam := a;
  p1 := pst;
  readln(a);
  while (a <> '') do
  begin
    new(p2);
    p2^.fam := a;
    p1^.nxt := p2;
    p1 := p2;
    readln(a);
  end;
  p1^.nxt := nil;
  p2^.nxt := nil;
  pfn := p1;

  {SortList(pst); }

  p1 := pst;
  while (p1^.nxt <> nil) do
  begin
    writeln(p1^.fam);
    p1 := p1^.nxt;
  end;
  writeln(p1^.fam);

  readln;

end.
