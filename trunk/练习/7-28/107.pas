program sd;
var n,m,i,j,s:longint;
 a,b:array[0..100000] of longint;
 c:array[0..100000] of boolean;
begin
read(n,m);
 for i:=0 to n do
 c[i]:=true;
for i:=1 to m do
 read(a[i],b[i]);
for i:=1 to m do
 for j:=a[i] to b[i] do
  c[j]:=false;
  for i:=0 to n do
 if c[i] then s:=s+1;
 write(s);
end.