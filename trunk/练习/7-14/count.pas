var a:array[1..200000]of longint;
b:array[1..200000]of integer;
i,j,t,s,n:longint;
procedure asd(l,r:longint);
var i,j,m,p:longint;
begin
i:=l;j:=r;
m:=a[(l+r)div 2];
repeat
while a[i]<m do inc(i);
while a[j]>m do dec(j);
if i<=j then
begin
p:=a[i];a[i]:=a[j];
a[j]:=p;inc(i);
dec(j);
end;
until i>j;
if l<j then asd(l,j);
if i<r then asd(i,r);
end;
begin
assign(input,'count.in');
assign(output,'count.out');
reset(input);
rewrite(output);
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
close(input);
close(output);
end.
