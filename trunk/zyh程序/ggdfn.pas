type arr=array[0..10000]of longint;
var n,i,sum,cheat:longint;
a:arr;
procedure muti(var a:arr; n:longint);
var i,w:longint;
begin
w:=0;
for i:=1 to a[0] do
begin
w:=w+a[i]*n;
a[i]:=w mod 10000;
w:=w div 10000;
end;
while w>0 do
begin
inc(a[0]);
a[a[0]]:=w mod 10000;
w:=w div 100000;
end;
end;
function prime(n:longint):boolean;
var i:longint;
begin
for i:=2 to trunc(sqrt(n)) do
if n mod i=0 then exit(false);
prime:=true;
end;
begin
readln(n);
a[0]:=1;
a[1]:=1;
sum:=0;
for i:=2 to n do muti(a,i);
for i:=1 to a[0] do
begin
while a[i]>0 do
begin
inc(sum,a[i] mod 10);
a[i]:=a[i] div 10;
end;
end;
if prime(sum) then write(sum,'T')
else write(sum,'F');
end.