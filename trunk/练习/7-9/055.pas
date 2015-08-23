uses math;
var a,w:array[1..100]of longint;
f:arraY[0..100,0..100]of longint;
i,j,n:longint;
begin
readln(n);
for i:=1 to n do read(w[i]);
for i:=1 to n do read(a[i]);
for i:=1 to n do
for j:=1 to 99 do
if j>=w[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-w[i]]+a[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,99]);
end.