uses math;
var n,m,i,j:longint;
a,w:packed array[1..100000]of longint;
f:packed array[0..100000,0..100]of longint;
begin
readln(m,n);
for i:=1 to n do readln(w[i],a[i]);
for i:=1 to n do
for j:=1 to m do
if j>=w[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-w[i]]+a[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,m]);
end.