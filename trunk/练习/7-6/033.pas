var f:array[0..100,0..100]of integer;
a:array[1..100,1..2]of integer;
i,j,m,t:integer;
function max(x,y:integer):integer;
begin
if x>y then max:=x
else max:=y;
end;
begin
readln(t,m);
for i:=1 to m do
read(a[i,1],a[i,2]);
for i:=1 to m do
for j:=1 to t do
begin
if j>=a[i,1] then
f[i,j]:=max(f[i-1,j-a[i,1]]+a[i,2],f[i-1,j])
else f[i,j]:=f[i-1,j];
end;
writeln(f[m,t]);
end.

