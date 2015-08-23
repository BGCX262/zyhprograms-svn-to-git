var a:array[1..30000]of longint;
n,i,j,w,t,s:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
i:=l;
j:=r;
x:=a[(j+i)div 2];
repeat
while a[i]>x do inc(i);
while a[j]<x do dec(j);
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
readln(w);
readln(n);
for i:=1 to n do readln(a[i]);
asd(1,n);
i:=1;j:=n;
while i<j do
if w>=a[i]+a[j] then begin
s:=s+1;
i:=i+1;
j:=j-1;
end
else begin
s:=s+1;
i:=i+1;
end;
writeln(s);
end.
