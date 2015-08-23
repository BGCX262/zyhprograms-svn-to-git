var f:array[0..25,0..30000]of qword;
n,m:qword;
i,j:longint;
w,c:array[1..25]of longint;
function max(x,y:longint):longint;
begin
if x>y then max:=x
else max:=y;
end;
begin
readln(m,n);
for i:=1 to n do readln(w[i],c[i]);
for i:=1 to n do
for j:=1 to m do
if j>=w[i] then
f[i,j]:=max(f[i-1,j],f[i-1,j-w[i]]+w[i]*c[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,m]);
end.
