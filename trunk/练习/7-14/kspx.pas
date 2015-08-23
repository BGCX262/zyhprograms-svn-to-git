var a:array[1..10000]of longint;
n,i:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
i:=l;
j:=r;
repeat
x:=a[(l+r)div 2];
while a[i]<=x do inc(i);
while a[j]>=x do dec(j);
if i<=j then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
inc(i);
dec(j);
end;
until i>j;
if i<r then asd(i,r);
if j<l then asd(j,l);
end;
begin
readln(n);
for i:=1 to n do
read(a[i]);
asd(1,n);
for i:=1 to n do write(a[i],' ');
end.
