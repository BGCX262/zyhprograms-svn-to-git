uses math;
var a,w:array[1..100]of longint;
f:array[0..100,0..1000]of longint;
i,j,m,n:longint;
begin
readln(n);
readln(m);
for i:=1 to n do readln(a[i],w[i]);
for i:=1 to n do
for j:=1 to m do
if j>=w[i] then f[i,j]:=max(f[i-1,j],f[i-1,j-w[i]]+a[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,m]);
end.