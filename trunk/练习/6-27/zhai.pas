var a,b,n:integer;
f:array[0..18,0..18]of longint;
begin
readln(n);
f[0,0]:=1;
for a:=0 to n do
for b:=0 to n do
if a+b<=n then if (a>0)and(b>0) then f[a,b]:=f[a-1,b+1]+f[a,b-1]
else if (a>0)and(b=0) then f[a,b]:=f[a-1,b+1]
else if (a=0)and(b>0) then f[a,b]:=f[a,b-1];
writeln(f[n,0]);
end.