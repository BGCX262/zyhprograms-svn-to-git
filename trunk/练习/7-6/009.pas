uses math;
var f:array[0..1000]of longint;
w:array[0..100]of longint;
c:array[0..100]of longint;
begin
readln(t,m,n);
for i:=1 to n do
read(t,w[i],c[i]);
for i:=1 to n do
for j:=m downto w[i] do
f[j]:=max(f[j-w[i]]+c[i],f[j]);
writeln(g,f[m]);
end.
