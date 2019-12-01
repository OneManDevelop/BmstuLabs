program project1;

{
TODO realize class Poezd
Code main program

get vagon param by id
}

type
  TVagon = object
  private
    gruzpd: integer;
    massa: integer;
    typeG: string;
  public
    procedure Init(maxGM, gm: integer; typeOfG: string);
    procedure Info;
    function percentG: real;
    function getParam(Id: byte): string;
  end;

  procedure TVagon.Init(maxGM, gm: integer; typeOfG: string);
  begin
    Self.gruzpd := maxGM;
    Self.massa := gm;
    Self.typeG := typeOfG;
  end;

  procedure TVagon.Info;
  begin
    writeln('gruzopod: ', Self.gruzpd: 6, ' weight on board: ',
      Self.massa: 6, ' type of gruz: ',
      Self.typeG: 10, ' % zaniatosti: ', Self.percentG: 6: 2);
  end;

  function TVagon.percentG: real;
  begin
    Result := 100 * (Self.massa / Self.gruzpd);
  end;

  function TVagon.getParam(id: byte): string;
  var
    s: string;
  begin
    case id of
      1: str(Self.gruzpd, s);
      2: str(Self.massa, s);
      3: s := Self.typeG;
      else
        s := 'no data';
    end;
    Result := s;
  end;

type
  TPoezd = object
  private
    vagons: array[1..30] of TVagon;
    n: byte;
  public
    procedure resetP;
    procedure addVagon(maxGM, gm: integer; typeOfG: string);
    procedure removeVagon;
    procedure Info;
    function SumGruzpod: integer;
    function NumOfHalfFull: integer;

    {code that obj}
    {programs to add, delete,info, gruzopod, kolvo more than half full}
  end;

  procedure TPoezd.resetP;
  begin
    Self.n := 0;
  end;

  procedure TPoezd.addVagon(maxGM, gm: integer; typeOfG: string);
  var
    newVagon: TVagon;
  begin
    Self.n := Self.n + 1;
    newVagon.Init(maxGM, gm, typeOfG);
    Self.vagons[n] := newVagon;
  end;

  procedure TPoezd.removeVagon;
  begin
    if Self.n > 0 then
      Self.n := Self.n - 1;
  end;

  procedure TPoezd.Info;
  var
    i: byte;
  begin
    if n = 0 then
      writeln('The train doesnt exist(0 vagons)');
    for i := 1 to Self.n do
      Self.vagons[i].Info;
  end;

  function TPoezd.sumGruzpod: integer;
  var
    i: byte;
    sum: integer;
  begin
    sum := 0;
    for i := 1 to Self.n do
      sum := sum + Self.vagons[i].gruzpd;
    Result := sum;
  end;

  function TPoezd.NumOfHalfFull: integer;
  var
    cnt, i: byte;
  begin
    cnt := 0;
    for i := 1 to Self.n do
      if Self.vagons[i].massa > (Self.vagons[i].gruzpd div 2) then
        cnt := cnt + 1;
    Result := cnt;
  end;

var
  thomas: TPoezd;
  optionId: byte;
  par1, par2: integer;
  par3: string;
begin
  thomas.resetP();
  writeln('Chose option: 0-Exit 1-Add 2-Remove 3-info 4-SumGruzopod 5-HalfFullVagons');
  readln(optionId);
  while optionId <> 0 do
  begin
    case optionId of
      1:
      begin
        writeln('Enter gruzopod and mass: ');
        par1 := -1;
        par2 := -1;
        while not ((par1 > 0) and (par2 > 0) and (par1 > par2)) do
          readln(par1, par2);
        writeln('Enter gruz type: ');
        readln(par3);
        thomas.addVagon(par1, par2, par3);
      end;
      2: thomas.removeVagon();
      3: thomas.Info();
      4: writeln(thomas.sumGruzpod);
      5: writeln(thomas.NumOfHalfFull);
      else
        writeln('no such command');
    end;
    writeln('Chose option: 0-Exit 1-Add 2-Remove 3-info 4-SumGruzopod 5-HalfFullVagons');
    readln(optionId);
  end;
  writeln;
  writeln('<press any key>');
  readln;
end.
