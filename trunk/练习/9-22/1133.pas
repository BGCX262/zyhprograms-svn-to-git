var f:array[0..30,0..20000]of longint;
a:array[1..30]of longint;
i,j,n,m:longint;
function max(x,y:longint):longint;
begin
if x>y then max:=x
else max:=y;
end;
begin
readln(m);
readln(n);
for i:=1 to n do readln(a[i]);
for i:=1 to n do
for j:=1 to m do
if j>=a[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-a[i]]+a[i])
else f[i,j]:=f[i-1,j];
writeln(m-f[n,m]);
end.