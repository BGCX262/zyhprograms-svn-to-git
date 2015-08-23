var a,b:array[0..200] of int64;
f:array[0..200,0..200] of int64;
k,i,j,n,m:longint;
x:int64;
function change(a:int64;b,t:longint):int64;
var i,j:longint;
begin
change:=a;
for i:=1 to b do
change:=change*t;
end;
Begin
fillchar(f,sizeof(f),$F);
readln(m,n);
for i:=1 to n do readln(a[i],b[i]);
for i:=1 to m do f[1,i]:=change(a[1],b[1],i);
for i:=0 to n do f[i,0]:=0;
for i:=2 to n do
for j:=1 to m do
begin
x:=1000000000;
for k:=0 to j do
if f[i-1,k]+change(a[i],b[i],j-k)<x then
x:=f[i-1,k]+change(a[i],b[i],j-k);
f[i,j]:=x;
end;
writeln(f[n,m]);
readln;
end.