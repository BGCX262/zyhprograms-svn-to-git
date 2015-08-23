uses math;
var m,n,k,j,t1,i:longint;
f:array[0..100,0..100,0..100]of longint;
w,t,h,v:array[0..100]of longint;
begin
readln(n,m,t1);
for i:=1 to n do readln(v[i],t[i],h[i],w[i]);
f[0,0,0]:=1;
for i:=1 to n do
for j:=1 to t1 do
for k:=1 to m do
if (j>=t[i])and(k>=h[i]) then
f[i,j,k]:=max(f[i-1,j,k],f[i-1,j-t[i],k-h[i]]+w[i])
else f[i,j,k]:=f[i-1,j,k];
writeln(f[n,t1,m]);
end.