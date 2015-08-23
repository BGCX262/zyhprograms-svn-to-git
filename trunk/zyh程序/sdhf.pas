var f:array[0..200,0..6]of longint;
var i,j,n,k:longint;
begin
readln(n,k);
f[0,0]:=1;
for i:=1 to n do f[i,1]:=1;
for i:=2 to n do
for j:=2 to k do
f[i,j]:=f[i-1,j-1]+f[abs(i-j),j];
writeln(f[n,k]);
end.

