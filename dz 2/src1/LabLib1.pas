unit LabLib1;

interface

type
  funcOf1 = function(arg: real): real;
procedure minmax(f: funcOf1; a, b, eps: real; var minarg, maxarg: real);

implementation

procedure minmax;
var
  tempArg: real;
begin
  tempArg := a;
  minarg := tempArg;
  maxarg := tempArg;
  while (tempArg <= b) do
  begin
    if (f(tempArg) < f(minarg)) then
      minarg := tempArg;
    if (f(tempArg) > f(maxarg)) then
      maxarg := tempArg;

    tempArg := tempArg + eps;
  end;
end;

end.
