var m,y,n,i,j,k:integer;
w,c,v:array[1..1000]of integer;
f:array[0..50,0..400,0..400]of integer;
function max(x,y:integer):integer;
begin
if x>y then max:=x
else max:=y;
end;
begin
readln(m,y);
readln(n);
for i:=1 to n do readln(w[i],c[i],v[i]);
for i:=1 to n do
for j:=1 to m do
for k:=1 to y do
if (j>=w[i])and(k>=c[i]) then
f[i,j,k]:=max(f[i-1,j,k],f[i-1,j-w[i],k-c[i]]+v[i])
else f[i,j,k]:=f[i-1,j,k];
writeln(f[n,m,y]);
end.
