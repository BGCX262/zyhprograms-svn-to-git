var a:array[1..17,1..17]of longint;
b:array[1..17]of longint;
c:array[1..17]of boolean;
n,i,j,max:longint;
procedure zyh(step:integer);
var i,k,s:integer;
begin
if step=n+1 then
begin
s:=0;
k:=0;
for i:=1 to n do
begin
inc(k);
s:=s+a[k,b[i]];
end;
if s>max then max:=s;
exit;
end;
for i:=1 to n do
if c[i] then
begin
c[i]:=false;
b[step]:=i;
zyh(step+1);
c[i]:=true;
end;
end;
begin
readln(n);
for i:=1 to n do
for j:=1 to n do
read(a[i,j]);
for i:=1 to n do c[i]:=true;
zyh(1);
writeln(max);
end.