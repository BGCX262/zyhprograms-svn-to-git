uses math;
var f:array[0..100,0..100]of longint;
a:array[1..100]of longint;
s,m,i,j,n:longint;
begin
readln(n);
for i:=1 to n do begin
readln(a[i]);
s:=s+a[i];
end;
m:=s div 2;
for i:=1 to n do
for j:=1 to m do
if j>=a[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-a[i]]+a[i])
else f[i,j]:=f[i-1,j];
if s mod 2=0 then writeln(abs(m-f[n,m])*2)
else writeln(abs(m+1-f[n,m]));
end.

