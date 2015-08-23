uses math;
var w,a:array[1..10000]of longint;
f:array[0..30,0..10000]of longint;
j,i,n,m:longint;
begin
readln(n,m);
for i:=1 to n do readln(w[i],a[i]);
for i:=1 to n do
for j:=1 to m do
if j>=w[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-w[i]]+a[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,m]);
end.