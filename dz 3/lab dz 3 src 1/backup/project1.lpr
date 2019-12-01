program project1;

type
  TWord = object
      private
    content: string;
    lg: byte;
    public
    procedure Init(sData: string);
    function CountGlas: byte;
    procedure Info;
    {non-standarted, but needed in task}
  end;

  procedure TWord.Init(sData: string);
  begin
    Self.content := sData;
    Self.lg := length(sData);
  end;

  function TWord.CountGlas: byte;
  type
    glasnType = set of char;
  var
    glasnSet: glasnType;
    i, cnt: byte;
  begin
    cnt := 0;
    glasnSet := ['e', 'y', 'u', 'i', 'o', 'a', 'j'];
    for i := 1 to length(Self.content) do
      if Self.content[i] in glasnSet then
        cnt := cnt + 1;
    Result := cnt;
  end;

  procedure TWord.Info;
  begin
    writeln('= Object info =');
    writeln('word: ', Self.content);
    writeln('length: ', Self.lg);
    writeln('Glasnih in word: ', CountGlas);
  end;

var
  wrd: TWord;
  inputS: string;
begin
  writeln('Input string to make an object');
  readln(inputS);
  wrd.Init(inputS);
  wrd.Info();
  readln;
end.
