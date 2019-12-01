program project1;

type
  TFigure = object
    fColor: boolean;
    x, y: byte;
    procedure Init(clr: string; i, j: byte);
    function ColorEq: boolean;
    procedure Info;
  end;

  procedure TFigure.Init(clr: string; i, j: byte);
  begin
    if clr = 'black' then
      Self.fColor := True
    else
      Self.fColor := False;
    Self.x := i;
    Self.y := j;
  end;

  function TFigure.ColorEq: boolean;
  begin
    Result := ((((x + y) mod 2) = 0) = Self.fColor);
    {1;1 is black}
  end;

  procedure TFigure.Info;
  begin
    writeln('= Figure info =');
    writeln('color: ');
    if Self.fColor then
      writeln('black')
    else
      writeln('white');
    writeln('Coords: ', x: 3, y: 3);
    if Self.ColorEq() then
      writeln('Color of figure and field matches')
    else
      writeln('Color of figure and field dont match');
  end;

type
  TSlon = object(TFigure)
    function Danger(fi, fg: byte): boolean;
  end;

  function TSlon.Danger(fi, fg: byte): boolean;
  var
    beaten: boolean;
    diff: integer;
  begin
    beaten := False;
    diff := fi - Self.x;
    {writeln(x: 3, y: 3, fi: 3, fg: 3, diff: 3);}
    if ((fg = Self.y + diff) or (fg = Self.y - diff)) then
      beaten := True;
    Result := beaten;
  end;

var
  xInp, yInp, xTarget, yTarget: byte;
  fClr: string;
  oneSlon: TSlon;
begin
  writeln('Enter color, "black" ot "white"');
  fClr := 'wait';
  while ((fClr <> 'black') and (fClr <> 'white')) do
    readln(fClr);
  writeln('Enter x,y in [1;8] (one string input)');
  xInp := 13;
  yInp := 13;
  while not ((xInp > 0) and (xInp < 9) and (yInp > 0) and (yInp < 9)) do
    readln(xInp, yInp);
  oneSlon.Init(fClr, xInp, yInp);
  oneSlon.Info;
  writeln;
  writeln('Enter x,y of TARGET in [1;8] (one string input)');
  xTarget := 13;
  yTarget := 13;
  while ((not ((xTarget > 0) and (xTarget < 9) and (yTarget > 0) and (yTarget < 9))) or
      ((xTarget = xInp) and (yTarget = yInp))) do
    readln(xTarget, yTarget);

  if oneSlon.Danger(xTarget, yTarget) then
    writeln('Figure can be beaten')
  else
    writeln('Figure cannot be beaten');
  writeln;
  writeln('<press any key>');
  readln;

end.
