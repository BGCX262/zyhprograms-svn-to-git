var a,b:array[1..200000]of longint;
i,n,j:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
i:=l;
j:=r;
x:=a[(j+i)div 2];
repeat
while a[i]<x do inc(i);
while a[j]>x do dec(j);
if i<=j then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
inc(i);
dec(j);
end;
until i>j;
if i<r then asd(i,r);
if l<j then asd(l,j);
end;
begin
readln(n);
for i:=1 to n do readln(a[i]);
asd(1,n);
for i:=1 to n do
for j:=i to n do
if a[i]=a[j] then inc(b[i])
else break;
for i:=2 to n do
if a[i]=abs(a[i-1]) then a[i]:=-a[i];
for i:=1 to n do
if a[i]>0 then
writeln(a[i],' ',b[i]);
end.
