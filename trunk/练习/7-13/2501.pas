var n,i,j:longint;
a,b:array[1..10000]of longint;
begin
readln(n);
for i:=1 to n  do readln(a[i]);
b[1]:=1;b[2]:=3;
for i:=3 to 30 do
b[i]:=b[i-2]*2+b[i-1];
for i:=1 to n do writeln(b[a[i]]);
end.
