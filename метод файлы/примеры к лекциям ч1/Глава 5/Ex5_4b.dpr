program Ex5_4b;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Type fam=record      {��� ������ "�������� � �����������"}
                      ff:string[20];  {�������}
                     year:word;       {��� ��������}
                     month:1..12;    {����� ��������}
                     day:1..31;          {���� ��������}
                  end;
  Var f:file of fam;  {�������� ���������� "���� �����������"}
        fb:fam;  fff:string;    key:boolean;

begin
        Assign(f,'a.dat');  {��������� �������� ���������� � ������}
        Write('Input Family: ');
        Readln(fff);
        key:=false;     {������������� ������� "������ �� �������"}
        ReSet(f);            {��������� ���� ��� ������}
        while (not EOF(f)) and (not key) do  {���� �� ��������� ����� ����� � �� ������� ������}
          begin
           Read(f,fb);      {������ ������ �� �����}
           if fb.ff=fff then  {���� ������� ���������, ��}
             begin   {������� ������}
                   WriteLn('DATA: ',fb.year,fb.month:3,fb.day:3);
                   key:=true;  {������������� ������� "������ �������"}
             end;
          end;
        if not key then WriteLn('No information');  {���� ������� �� ����-������, �� ������� "��� ������"}
        Close(f);  {��������� ����}
        Readln;
end.
