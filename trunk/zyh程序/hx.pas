const dy:array[1..4]of integer=(0,1,0,-1);
dx:array[1..4]of integer=(-1,0,1,0);
var
ans,m,n,i,j,t:longint;
a:array[1..500,1..500]of longint;
f:array[0..500,0..500]of longint;
function asd(x,y:longint):longint;
var i,t,tmp,x1,y1:longint;
begin
if f[x,y]>0 then begin
asd:=f[x,y];
exit;
end;
t:=1;
for i:=1 to 4 do
begin
x1:=x+dx[i];
y1:=y+dy[i];
if (x1>=1)and(x1<=n)and(y1>=1)and(y1<=m)and(a[x,y]<a[x1,y1]) then
begin
tmp:=asd(x1,y1)+1;
if tmp>t then t:=tmp;
end;
end;
f[x,y]:=t;
asd:=t;
end;
begin
readln(n,m);
for i:=1 to n do
for j:=1 to m do
read(a[i,j]);
for i:=1 to n do
for j:=1 to m do
begin
t:=asd(i,j);
f[i,j]:=t;
if t>ans then ans:=t;
end;
writeln(ans);
end.

