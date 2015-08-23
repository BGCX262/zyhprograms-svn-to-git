Const
uuu: String[20] = '0123456789ABCDEFGHIJ';
Var
n, r: Longint;
Procedure ZS_d2n(a, b: Longint);
Var
ls: array[0..100] of Integer;
i, j: Longint;
Begin
i := 0;
While a<>0 do
Begin
Inc(i);
ls[i]:= a mod b;
a:= a div b;
If ls[i] < 0 then
Begin Dec(ls[i], b); Inc(a); End;
End;
for j:= i downto 1 do
Write(uuu[ls[j]+1]);
End;
Begin
While Not Eof do
Begin
Readln(n, r);
Write(n, '=');
ZS_d2n(n, r);
Write('(base ', r, ')');
Writeln;
End;
End.
