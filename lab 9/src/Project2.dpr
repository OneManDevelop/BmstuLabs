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
  a, dTarget: string;
  found: boolean;

procedure SortList(pf: UchPointer);
var
  ptarget, buffer: UchPointer;
  sorted, swapped: boolean;
  bufferF: string;
begin
  { ptarget:=pf; }
  sorted := false;
  while not sorted do
  begin
    sorted := true;
    ptarget := pf;
    while (ptarget^.nxt <> nil) do
    begin
      swapped := false;
      if (ptarget^.fam > ptarget^.nxt^.fam) then
      begin
        sorted := false;
        bufferF := ptarget^.fam;
        ptarget^.fam := ptarget^.nxt^.fam;
        ptarget^.nxt^.fam := bufferF;
        swapped := true;
      end;
      ptarget := ptarget^.nxt;
    end;

  end;

end;

begin
  writeln('> Enter surnames');
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

  SortList(pst);
  writeln('> Enter surname to delete');
  readln(dTarget);

  found := false;
  if (pst^.fam = dTarget) then
    pst := pst^.nxt
  else
  begin
    p1 := pst;
    while p1^.nxt <> nil do
    begin
      if p1^.nxt^.fam = dTarget then
      begin
        found := true;
        p1^.nxt := p1^.nxt^.nxt;
      end;
      p1 := p1^.nxt;
    end;
  end;

  if not found then
    writeln('>> Surname not found');

  writeln('> List:');
  p1 := pst;
  while (p1^.nxt <> nil) do
  begin
    writeln(p1^.fam);
    p1 := p1^.nxt;
  end;
  writeln(p1^.fam);

  readln;

end.
