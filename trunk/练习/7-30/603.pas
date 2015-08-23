uses math;
var i,j,m,n:longint;
a,w:array[1..25]of longint;
f:array[0..25,0..30000]of longint;
begin
readln(m,n);
for i:=1 to n do readln(a[i],w[i]);
for i:=1 to n do
for j:=1 to m do
if j>=a[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-a[i]]+a[i]*w[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,m]);
end.